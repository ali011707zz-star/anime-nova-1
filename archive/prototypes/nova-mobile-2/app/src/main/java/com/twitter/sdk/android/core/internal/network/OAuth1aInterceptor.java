package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aHeaders;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.client.methods.HttpPost;

/* loaded from: classes.dex */
public class OAuth1aInterceptor implements Interceptor {
    public final TwitterAuthConfig authConfig;
    public final Session<? extends TwitterAuthToken> session;

    public OAuth1aInterceptor(Session<? extends TwitterAuthToken> session, TwitterAuthConfig twitterAuthConfig) {
        this.session = session;
        this.authConfig = twitterAuthConfig;
    }

    public String getAuthorizationHeader(Request request) throws IOException {
        return new OAuth1aHeaders().getAuthorizationHeader(this.authConfig, this.session.getAuthToken(), null, request.method(), request.url().toString(), getPostParams(request));
    }

    public Map<String, String> getPostParams(Request request) throws IOException {
        HashMap hashMap = new HashMap();
        if (HttpPost.METHOD_NAME.equals(request.method().toUpperCase(Locale.US))) {
            RequestBody body = request.body();
            if (body instanceof FormBody) {
                FormBody formBody = (FormBody) body;
                for (int i10 = 0; i10 < formBody.size(); i10++) {
                    hashMap.put(formBody.encodedName(i10), formBody.value(i10));
                }
            }
        }
        return hashMap;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request build = request.newBuilder().url(urlWorkaround(request.url())).build();
        return chain.proceed(build.newBuilder().header("Authorization", getAuthorizationHeader(build)).build());
    }

    public HttpUrl urlWorkaround(HttpUrl httpUrl) {
        HttpUrl.Builder query = httpUrl.newBuilder().query(null);
        int querySize = httpUrl.querySize();
        for (int i10 = 0; i10 < querySize; i10++) {
            query.addEncodedQueryParameter(UrlUtils.percentEncode(httpUrl.queryParameterName(i10)), UrlUtils.percentEncode(httpUrl.queryParameterValue(i10)));
        }
        return query.build();
    }
}
