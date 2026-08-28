package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.GuestSession;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class GuestAuthInterceptor implements Interceptor {
    public final GuestSessionProvider guestSessionProvider;

    public GuestAuthInterceptor(GuestSessionProvider guestSessionProvider) {
        this.guestSessionProvider = guestSessionProvider;
    }

    public static void addAuthHeaders(Request.Builder builder, GuestAuthToken guestAuthToken) {
        builder.header("Authorization", guestAuthToken.getTokenType() + " " + guestAuthToken.getAccessToken());
        builder.header("x-guest-token", guestAuthToken.getGuestToken());
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        GuestSession currentSession = this.guestSessionProvider.getCurrentSession();
        GuestAuthToken authToken = currentSession == null ? null : currentSession.getAuthToken();
        if (authToken != null) {
            Request.Builder newBuilder = request.newBuilder();
            addAuthHeaders(newBuilder, authToken);
            return chain.proceed(newBuilder.build());
        }
        return chain.proceed(request);
    }
}
