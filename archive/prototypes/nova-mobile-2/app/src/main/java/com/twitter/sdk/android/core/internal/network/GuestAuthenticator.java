package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.GuestSession;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes.dex */
public class GuestAuthenticator implements Authenticator {
    public static final int MAX_RETRIES = 2;
    public final GuestSessionProvider guestSessionProvider;

    public GuestAuthenticator(GuestSessionProvider guestSessionProvider) {
        this.guestSessionProvider = guestSessionProvider;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        return reauth(response);
    }

    public boolean canRetry(Response response) {
        int i10 = 1;
        while (true) {
            response = response.priorResponse();
            if (response == null) {
                break;
            }
            i10++;
        }
        return i10 < 2;
    }

    public GuestSession getExpiredSession(Response response) {
        Headers headers = response.request().headers();
        String str = headers.get("Authorization");
        String str2 = headers.get("x-guest-token");
        if (str == null || str2 == null) {
            return null;
        }
        return new GuestSession(new GuestAuthToken(OAuth2Token.TOKEN_TYPE_BEARER, str.replace("bearer ", ""), str2));
    }

    public Request reauth(Response response) {
        if (canRetry(response)) {
            GuestSession refreshCurrentSession = this.guestSessionProvider.refreshCurrentSession(getExpiredSession(response));
            GuestAuthToken authToken = refreshCurrentSession == null ? null : refreshCurrentSession.getAuthToken();
            if (authToken != null) {
                return resign(response.request(), authToken);
            }
        }
        return null;
    }

    public Request resign(Request request, GuestAuthToken guestAuthToken) {
        Request.Builder newBuilder = request.newBuilder();
        GuestAuthInterceptor.addAuthHeaders(newBuilder, guestAuthToken);
        return newBuilder.build();
    }
}
