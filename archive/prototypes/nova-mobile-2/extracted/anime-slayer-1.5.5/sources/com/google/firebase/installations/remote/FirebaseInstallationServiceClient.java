package com.google.firebase.installations.remote;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FirebaseInstallationServiceClient {
    private static final Pattern EXPIRATION_TIMESTAMP_PATTERN = Pattern.compile("[0-9]+s");
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    private final Context context;
    private final Provider<HeartBeatInfo> heartbeatInfo;
    private final RequestLimiter requestLimiter = new RequestLimiter();
    private final Provider<UserAgentPublisher> userAgentPublisher;

    public FirebaseInstallationServiceClient(Context context, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2) {
        this.context = context;
        this.userAgentPublisher = provider;
        this.heartbeatInfo = provider2;
    }

    private static String availableFirebaseOptions(String str, String str2, String str3) {
        String str4;
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str3;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        objArr[2] = str4;
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", objArr);
    }

    private static JSONObject buildCreateFirebaseInstallationRequestBody(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.0.0");
            return jSONObject;
        } catch (JSONException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static JSONObject buildGenerateAuthTokenRequestBody() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private String getFingerprintHashForPackage() {
        try {
            Context context = this.context;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not get fingerprint hash for package: ");
                sb2.append(this.context.getPackageName());
                return null;
            }
            return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("No such package: ");
            sb3.append(this.context.getPackageName());
            return null;
        }
    }

    private URL getFullyQualifiedRequestUri(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e10) {
            throw new FirebaseInstallationsException(e10.getMessage(), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    private static byte[] getJsonBytes(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes(HTTP.UTF_8);
    }

    private static boolean isSuccessfulResponseCode(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    private static void logBadConfigError() {
    }

    private static void logFisCommunicationError(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        if (TextUtils.isEmpty(readErrorResponse(httpURLConnection))) {
            return;
        }
        availableFirebaseOptions(str, str2, str3);
    }

    private HttpURLConnection openHttpURLConnection(URL url, String str) throws FirebaseInstallationsException {
        HeartBeatInfo.HeartBeat heartBeatCode;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty(HttpHeaders.ACCEPT, "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty(HttpHeaders.CACHE_CONTROL, "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.context.getPackageName());
            if (this.heartbeatInfo.get() != null && this.userAgentPublisher.get() != null && (heartBeatCode = this.heartbeatInfo.get().getHeartBeatCode("fire-installations-id")) != HeartBeatInfo.HeartBeat.NONE) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.userAgentPublisher.get().getUserAgent());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(heartBeatCode.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", getFingerprintHashForPackage());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    @VisibleForTesting
    public static long parseTokenExpirationTimestamp(String str) {
        Preconditions.checkArgument(EXPIRATION_TIMESTAMP_PATTERN.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    private InstallationResponse readCreateResponse(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, UTF_8));
        TokenResult.Builder builder = TokenResult.builder();
        InstallationResponse.Builder builder2 = InstallationResponse.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                builder2.setUri(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                builder2.setFid(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                builder2.setRefreshToken(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        builder.setToken(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        builder.setTokenExpirationTimestamp(parseTokenExpirationTimestamp(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                builder2.setAuthToken(builder.build());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return builder2.setResponseCode(InstallationResponse.ResponseCode.OK).build();
    }

    private static String readErrorResponse(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, UTF_8));
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
                String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb2);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return format;
            } catch (IOException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            bufferedReader.close();
            return null;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    private TokenResult readGenerateAuthTokenResponse(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, UTF_8));
        TokenResult.Builder builder = TokenResult.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                builder.setToken(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                builder.setTokenExpirationTimestamp(parseTokenExpirationTimestamp(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return builder.setResponseCode(TokenResult.ResponseCode.OK).build();
    }

    private void writeFIDCreateRequestBodyToOutputStream(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        writeRequestBodyToOutputStream(httpURLConnection, getJsonBytes(buildCreateFirebaseInstallationRequestBody(str, str2)));
    }

    private void writeGenerateAuthTokenRequestBodyToOutputStream(HttpURLConnection httpURLConnection) throws IOException {
        writeRequestBodyToOutputStream(httpURLConnection, getJsonBytes(buildGenerateAuthTokenRequestBody()));
    }

    private static void writeRequestBodyToOutputStream(URLConnection uRLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    return;
                } catch (IOException unused) {
                    return;
                }
            } finally {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException unused2) {
                }
            }
        }
        throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
    }

    public InstallationResponse createFirebaseInstallation(String str, String str2, String str3, String str4, String str5) throws FirebaseInstallationsException {
        int responseCode;
        InstallationResponse readCreateResponse;
        if (this.requestLimiter.isRequestAllowed()) {
            URL fullyQualifiedRequestUri = getFullyQualifiedRequestUri(String.format("projects/%s/installations", str3));
            for (int i10 = 0; i10 <= 1; i10++) {
                TrafficStats.setThreadStatsTag(32769);
                HttpURLConnection openHttpURLConnection = openHttpURLConnection(fullyQualifiedRequestUri, str);
                try {
                    try {
                        openHttpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
                        openHttpURLConnection.setDoOutput(true);
                        if (str5 != null) {
                            openHttpURLConnection.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                        }
                        writeFIDCreateRequestBodyToOutputStream(openHttpURLConnection, str2, str4);
                        responseCode = openHttpURLConnection.getResponseCode();
                        this.requestLimiter.setNextRequestTime(responseCode);
                    } catch (IOException | AssertionError unused) {
                    }
                    if (isSuccessfulResponseCode(responseCode)) {
                        readCreateResponse = readCreateResponse(openHttpURLConnection);
                    } else {
                        logFisCommunicationError(openHttpURLConnection, str4, str, str3);
                        if (responseCode == 429) {
                            throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                        }
                        if (responseCode < 500 || responseCode >= 600) {
                            logBadConfigError();
                            readCreateResponse = InstallationResponse.builder().setResponseCode(InstallationResponse.ResponseCode.BAD_CONFIG).build();
                        } else {
                            openHttpURLConnection.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                    return readCreateResponse;
                } finally {
                    openHttpURLConnection.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    public TokenResult generateAuthToken(String str, String str2, String str3, String str4) throws FirebaseInstallationsException {
        int responseCode;
        TokenResult readGenerateAuthTokenResponse;
        if (this.requestLimiter.isRequestAllowed()) {
            URL fullyQualifiedRequestUri = getFullyQualifiedRequestUri(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i10 = 0; i10 <= 1; i10++) {
                TrafficStats.setThreadStatsTag(32771);
                HttpURLConnection openHttpURLConnection = openHttpURLConnection(fullyQualifiedRequestUri, str);
                try {
                    try {
                        openHttpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
                        openHttpURLConnection.addRequestProperty("Authorization", "FIS_v2 " + str4);
                        openHttpURLConnection.setDoOutput(true);
                        writeGenerateAuthTokenRequestBodyToOutputStream(openHttpURLConnection);
                        responseCode = openHttpURLConnection.getResponseCode();
                        this.requestLimiter.setNextRequestTime(responseCode);
                    } finally {
                        openHttpURLConnection.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                } catch (IOException | AssertionError unused) {
                }
                if (isSuccessfulResponseCode(responseCode)) {
                    readGenerateAuthTokenResponse = readGenerateAuthTokenResponse(openHttpURLConnection);
                } else {
                    logFisCommunicationError(openHttpURLConnection, null, str, str3);
                    if (responseCode != 401 && responseCode != 404) {
                        if (responseCode == 429) {
                            throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                        }
                        if (responseCode < 500 || responseCode >= 600) {
                            logBadConfigError();
                            readGenerateAuthTokenResponse = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.BAD_CONFIG).build();
                        } else {
                            openHttpURLConnection.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                    readGenerateAuthTokenResponse = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.AUTH_ERROR).build();
                }
                return readGenerateAuthTokenResponse;
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }
}
