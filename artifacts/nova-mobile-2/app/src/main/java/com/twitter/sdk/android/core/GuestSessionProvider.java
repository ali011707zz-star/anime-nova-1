package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class GuestSessionProvider {
    private final OAuth2Service oAuth2Service;
    private final SessionManager<GuestSession> sessionManager;

    public GuestSessionProvider(OAuth2Service oAuth2Service, SessionManager<GuestSession> sessionManager) {
        this.oAuth2Service = oAuth2Service;
        this.sessionManager = sessionManager;
    }

    public synchronized GuestSession getCurrentSession() {
        GuestSession activeSession = this.sessionManager.getActiveSession();
        if (isSessionValid(activeSession)) {
            return activeSession;
        }
        refreshToken();
        return this.sessionManager.getActiveSession();
    }

    public boolean isSessionValid(GuestSession guestSession) {
        return (guestSession == null || guestSession.getAuthToken() == null || guestSession.getAuthToken().isExpired()) ? false : true;
    }

    public synchronized GuestSession refreshCurrentSession(GuestSession guestSession) {
        GuestSession activeSession = this.sessionManager.getActiveSession();
        if (guestSession != null && guestSession.equals(activeSession)) {
            refreshToken();
        }
        return this.sessionManager.getActiveSession();
    }

    public void refreshToken() {
        Twitter.getLogger().d("GuestSessionProvider", "Refreshing expired guest session.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.oAuth2Service.requestGuestAuthToken(new Callback<GuestAuthToken>() { // from class: com.twitter.sdk.android.core.GuestSessionProvider.1
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                GuestSessionProvider.this.sessionManager.clearSession(0L);
                countDownLatch.countDown();
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<GuestAuthToken> result) {
                GuestSessionProvider.this.sessionManager.setActiveSession(new GuestSession(result.data));
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            this.sessionManager.clearSession(0L);
        }
    }
}
