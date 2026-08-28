package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import rd.r;
import sd.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class OAuthService {
    private static final String CLIENT_NAME = "TwitterAndroidSDK";
    private final TwitterApi api;
    private final r retrofit = new r.b().b(getApi().getBaseHostUrl()).f(new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuthService.1
        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            return chain.proceed(chain.request().newBuilder().header("User-Agent", OAuthService.this.getUserAgent()).build());
        }
    }).certificatePinner(OkHttpClientHelper.getCertificatePinner()).build()).a(a.a()).d();
    private final TwitterCore twitterCore;
    private final String userAgent;

    public OAuthService(TwitterCore twitterCore, TwitterApi twitterApi) {
        this.twitterCore = twitterCore;
        this.api = twitterApi;
        this.userAgent = TwitterApi.buildUserAgent(CLIENT_NAME, twitterCore.getVersion());
    }

    public TwitterApi getApi() {
        return this.api;
    }

    public r getRetrofit() {
        return this.retrofit;
    }

    public TwitterCore getTwitterCore() {
        return this.twitterCore;
    }

    public String getUserAgent() {
        return this.userAgent;
    }
}
