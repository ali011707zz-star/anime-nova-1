package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.TreeMap;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.ClientCookie;
import rd.b;
import td.i;
import td.o;
import td.t;

/* loaded from: classes.dex */
public class OAuth1aService extends OAuthService {
    private static final String CALLBACK_URL = "twittersdk://callback";
    private static final String PARAM_SCREEN_NAME = "screen_name";
    private static final String PARAM_USER_ID = "user_id";
    private static final String RESOURCE_OAUTH = "oauth";
    public OAuthApi api;

    /* loaded from: classes.dex */
    public interface OAuthApi {
        @o("/oauth/access_token")
        b<ResponseBody> getAccessToken(@i("Authorization") String str, @t("oauth_verifier") String str2);

        @o("/oauth/request_token")
        b<ResponseBody> getTempToken(@i("Authorization") String str);
    }

    public OAuth1aService(TwitterCore twitterCore, TwitterApi twitterApi) {
        super(twitterCore, twitterApi);
        this.api = (OAuthApi) getRetrofit().b(OAuthApi.class);
    }

    public static OAuthResponse parseAuthResponse(String str) {
        TreeMap<String, String> queryParams = UrlUtils.getQueryParams(str, false);
        String str2 = queryParams.get(OAuthConstants.PARAM_TOKEN);
        String str3 = queryParams.get(OAuthConstants.PARAM_TOKEN_SECRET);
        String str4 = queryParams.get("screen_name");
        long parseLong = queryParams.containsKey("user_id") ? Long.parseLong(queryParams.get("user_id")) : 0L;
        if (str2 == null || str3 == null) {
            return null;
        }
        return new OAuthResponse(new TwitterAuthToken(str2, str3), str4, parseLong);
    }

    public String buildCallbackUrl(TwitterAuthConfig twitterAuthConfig) {
        return Uri.parse(CALLBACK_URL).buildUpon().appendQueryParameter(ClientCookie.VERSION_ATTR, getTwitterCore().getVersion()).appendQueryParameter("app", twitterAuthConfig.getConsumerKey()).build().toString();
    }

    public String getAccessTokenUrl() {
        return getApi().getBaseHostUrl() + "/oauth/access_token";
    }

    public String getAuthorizeUrl(TwitterAuthToken twitterAuthToken) {
        return getApi().buildUponBaseHostUrl(RESOURCE_OAUTH, "authorize").appendQueryParameter(OAuthConstants.PARAM_TOKEN, twitterAuthToken.token).build().toString();
    }

    public Callback<ResponseBody> getCallbackWrapper(final Callback<OAuthResponse> callback) {
        return new Callback<ResponseBody>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth1aService.1
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                callback.failure(twitterException);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<ResponseBody> result) {
                StringBuilder sb2 = new StringBuilder();
                BufferedReader bufferedReader = null;
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(result.data.byteStream()));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                } else {
                                    sb2.append(readLine);
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                throw th;
                            }
                        }
                        bufferedReader2.close();
                        String sb3 = sb2.toString();
                        OAuthResponse parseAuthResponse = OAuth1aService.parseAuthResponse(sb3);
                        if (parseAuthResponse == null) {
                            callback.failure(new TwitterAuthException("Failed to parse auth response: " + sb3));
                            return;
                        }
                        callback.success(new Result(parseAuthResponse, null));
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e10) {
                    callback.failure(new TwitterAuthException(e10.getMessage(), e10));
                }
            }
        };
    }

    public String getTempTokenUrl() {
        return getApi().getBaseHostUrl() + "/oauth/request_token";
    }

    public void requestAccessToken(Callback<OAuthResponse> callback, TwitterAuthToken twitterAuthToken, String str) {
        this.api.getAccessToken(new OAuth1aHeaders().getAuthorizationHeader(getTwitterCore().getAuthConfig(), twitterAuthToken, null, HttpPost.METHOD_NAME, getAccessTokenUrl(), null), str).c0(getCallbackWrapper(callback));
    }

    public void requestTempToken(Callback<OAuthResponse> callback) {
        TwitterAuthConfig authConfig = getTwitterCore().getAuthConfig();
        this.api.getTempToken(new OAuth1aHeaders().getAuthorizationHeader(authConfig, null, buildCallbackUrl(authConfig), HttpPost.METHOD_NAME, getTempTokenUrl(), null)).c0(getCallbackWrapper(callback));
    }
}
