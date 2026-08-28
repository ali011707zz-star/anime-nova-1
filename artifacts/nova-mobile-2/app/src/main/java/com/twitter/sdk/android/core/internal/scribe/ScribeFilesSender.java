package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.network.GuestAuthInterceptor;
import com.twitter.sdk.android.core.internal.network.OAuth1aInterceptor;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import com.twitter.sdk.android.core.internal.scribe.QueueFile;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.http.protocol.HTTP;
import rd.b;
import rd.q;
import rd.r;
import td.c;
import td.e;
import td.k;
import td.o;
import td.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ScribeFilesSender implements FilesSender {
    private static final String SEND_FILE_FAILURE_ERROR = "Failed sending files";
    private final TwitterAuthConfig authConfig;
    private final Context context;
    private final ExecutorService executorService;
    private final GuestSessionProvider guestSessionProvider;
    private final IdManager idManager;
    private final long ownerId;
    private final ScribeConfig scribeConfig;
    private final AtomicReference<ScribeService> scribeService = new AtomicReference<>();
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;
    private static final byte[] START_JSON_ARRAY = {91};
    private static final byte[] COMMA = {44};
    private static final byte[] END_JSON_ARRAY = {93};

    /* loaded from: classes.dex */
    public static class ConfigRequestInterceptor implements Interceptor {
        private static final String CLIENT_UUID_HEADER = "X-Client-UUID";
        private static final String POLLING_HEADER = "X-Twitter-Polling";
        private static final String POLLING_HEADER_VALUE = "true";
        private static final String USER_AGENT_HEADER = "User-Agent";
        private final IdManager idManager;
        private final ScribeConfig scribeConfig;

        public ConfigRequestInterceptor(ScribeConfig scribeConfig, IdManager idManager) {
            this.scribeConfig = scribeConfig;
            this.idManager = idManager;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request.Builder newBuilder = chain.request().newBuilder();
            if (!TextUtils.isEmpty(this.scribeConfig.userAgent)) {
                newBuilder.header("User-Agent", this.scribeConfig.userAgent);
            }
            if (!TextUtils.isEmpty(this.idManager.getDeviceUUID())) {
                newBuilder.header(CLIENT_UUID_HEADER, this.idManager.getDeviceUUID());
            }
            newBuilder.header(POLLING_HEADER, POLLING_HEADER_VALUE);
            return chain.proceed(newBuilder.build());
        }
    }

    /* loaded from: classes.dex */
    public interface ScribeService {
        @e
        @k({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o("/{version}/jot/{type}")
        b<ResponseBody> upload(@s("version") String str, @s("type") String str2, @c("log[]") String str3);

        @e
        @k({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o("/scribe/{sequence}")
        b<ResponseBody> uploadSequence(@s("sequence") String str, @c("log[]") String str2);
    }

    public ScribeFilesSender(Context context, ScribeConfig scribeConfig, long j10, TwitterAuthConfig twitterAuthConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, ExecutorService executorService, IdManager idManager) {
        this.context = context;
        this.scribeConfig = scribeConfig;
        this.ownerId = j10;
        this.authConfig = twitterAuthConfig;
        this.sessionManager = sessionManager;
        this.guestSessionProvider = guestSessionProvider;
        this.executorService = executorService;
        this.idManager = idManager;
    }

    private Session getSession(long j10) {
        return this.sessionManager.getSession(j10);
    }

    private boolean hasApiAdapter() {
        return getScribeService() != null;
    }

    private boolean isValidSession(Session session) {
        return (session == null || session.getAuthToken() == null) ? false : true;
    }

    public String getScribeEventsAsJsonArrayString(List<File> list) throws IOException {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
        final boolean[] zArr = new boolean[1];
        byteArrayOutputStream.write(START_JSON_ARRAY);
        Iterator<File> it2 = list.iterator();
        while (it2.hasNext()) {
            QueueFile queueFile = null;
            try {
                QueueFile queueFile2 = new QueueFile(it2.next());
                try {
                    queueFile2.forEach(new QueueFile.ElementReader() { // from class: com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender.1
                        @Override // com.twitter.sdk.android.core.internal.scribe.QueueFile.ElementReader
                        public void read(InputStream inputStream, int i10) throws IOException {
                            byte[] bArr = new byte[i10];
                            inputStream.read(bArr);
                            boolean[] zArr2 = zArr;
                            if (zArr2[0]) {
                                byteArrayOutputStream.write(ScribeFilesSender.COMMA);
                            } else {
                                zArr2[0] = true;
                            }
                            byteArrayOutputStream.write(bArr);
                        }
                    });
                    CommonUtils.closeQuietly(queueFile2);
                } catch (Throwable th) {
                    th = th;
                    queueFile = queueFile2;
                    CommonUtils.closeQuietly(queueFile);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        byteArrayOutputStream.write(END_JSON_ARRAY);
        return byteArrayOutputStream.toString(HTTP.UTF_8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ScribeService getScribeService() {
        OkHttpClient build;
        if (this.scribeService.get() == null) {
            Session session = getSession(this.ownerId);
            if (isValidSession(session)) {
                build = new OkHttpClient.Builder().certificatePinner(OkHttpClientHelper.getCertificatePinner()).addInterceptor(new ConfigRequestInterceptor(this.scribeConfig, this.idManager)).addInterceptor(new OAuth1aInterceptor(session, this.authConfig)).build();
            } else {
                build = new OkHttpClient.Builder().certificatePinner(OkHttpClientHelper.getCertificatePinner()).addInterceptor(new ConfigRequestInterceptor(this.scribeConfig, this.idManager)).addInterceptor(new GuestAuthInterceptor(this.guestSessionProvider)).build();
            }
            this.scribeService.compareAndSet(null, new r.b().b(this.scribeConfig.baseUrl).f(build).d().b(ScribeService.class));
        }
        return this.scribeService.get();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.FilesSender
    public boolean send(List<File> list) {
        if (hasApiAdapter()) {
            try {
                String scribeEventsAsJsonArrayString = getScribeEventsAsJsonArrayString(list);
                CommonUtils.logControlled(this.context, scribeEventsAsJsonArrayString);
                q<ResponseBody> upload = upload(scribeEventsAsJsonArrayString);
                if (upload.b() == 200) {
                    return true;
                }
                CommonUtils.logControlledError(this.context, SEND_FILE_FAILURE_ERROR, null);
                if (upload.b() != 500) {
                    if (upload.b() != 400) {
                        return false;
                    }
                }
                return true;
            } catch (Exception e10) {
                CommonUtils.logControlledError(this.context, SEND_FILE_FAILURE_ERROR, e10);
                return false;
            }
        }
        CommonUtils.logControlled(this.context, "Cannot attempt upload at this time");
        return false;
    }

    public void setScribeService(ScribeService scribeService) {
        this.scribeService.set(scribeService);
    }

    public q<ResponseBody> upload(String str) throws IOException {
        ScribeService scribeService = getScribeService();
        if (!TextUtils.isEmpty(this.scribeConfig.sequence)) {
            return scribeService.uploadSequence(this.scribeConfig.sequence, str).execute();
        }
        ScribeConfig scribeConfig = this.scribeConfig;
        return scribeService.upload(scribeConfig.pathVersion, scribeConfig.pathType, str).execute();
    }
}
