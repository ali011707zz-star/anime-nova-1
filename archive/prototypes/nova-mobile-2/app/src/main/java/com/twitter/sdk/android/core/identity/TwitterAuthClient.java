package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.core.services.AccountService;

/* loaded from: classes.dex */
public class TwitterAuthClient {
    private static final String SCRIBE_ACTION = "impression";
    private static final String SCRIBE_CLIENT = "android";
    private static final String SCRIBE_COMPONENT = "";
    private static final String SCRIBE_ELEMENT = "";
    private static final String SCRIBE_LOGIN_PAGE = "login";
    private static final String SCRIBE_SECTION = "";
    private static final String SCRIBE_SHARE_EMAIL_PAGE = "shareemail";
    public final TwitterAuthConfig authConfig;
    public final AuthState authState;
    public final SessionManager<TwitterSession> sessionManager;
    public final TwitterCore twitterCore;

    /* loaded from: classes.dex */
    public static class AuthStateLazyHolder {
        private static final AuthState INSTANCE = new AuthState();

        private AuthStateLazyHolder() {
        }
    }

    /* loaded from: classes.dex */
    public static class CallbackWrapper extends Callback<TwitterSession> {
        private final Callback<TwitterSession> callback;
        private final SessionManager<TwitterSession> sessionManager;

        public CallbackWrapper(SessionManager<TwitterSession> sessionManager, Callback<TwitterSession> callback) {
            this.sessionManager = sessionManager;
            this.callback = callback;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException twitterException) {
            Twitter.getLogger().e("Twitter", "Authorization completed with an error", twitterException);
            this.callback.failure(twitterException);
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<TwitterSession> result) {
            Twitter.getLogger().d("Twitter", "Authorization completed successfully");
            this.sessionManager.setActiveSession(result.data);
            this.callback.success(result);
        }
    }

    public TwitterAuthClient() {
        this(TwitterCore.getInstance(), TwitterCore.getInstance().getAuthConfig(), TwitterCore.getInstance().getSessionManager(), AuthStateLazyHolder.INSTANCE);
    }

    private boolean authorizeUsingOAuth(Activity activity, CallbackWrapper callbackWrapper) {
        Twitter.getLogger().d("Twitter", "Using OAuth");
        AuthState authState = this.authState;
        TwitterAuthConfig twitterAuthConfig = this.authConfig;
        return authState.beginAuthorize(activity, new OAuthHandler(twitterAuthConfig, callbackWrapper, twitterAuthConfig.getRequestCode()));
    }

    private boolean authorizeUsingSSO(Activity activity, CallbackWrapper callbackWrapper) {
        if (!SSOAuthHandler.isAvailable(activity)) {
            return false;
        }
        Twitter.getLogger().d("Twitter", "Using SSO");
        AuthState authState = this.authState;
        TwitterAuthConfig twitterAuthConfig = this.authConfig;
        return authState.beginAuthorize(activity, new SSOAuthHandler(twitterAuthConfig, callbackWrapper, twitterAuthConfig.getRequestCode()));
    }

    private void handleAuthorize(Activity activity, Callback<TwitterSession> callback) {
        scribeAuthorizeImpression();
        CallbackWrapper callbackWrapper = new CallbackWrapper(this.sessionManager, callback);
        if (authorizeUsingSSO(activity, callbackWrapper) || authorizeUsingOAuth(activity, callbackWrapper)) {
            return;
        }
        callbackWrapper.failure(new TwitterAuthException("Authorize failed."));
    }

    private void scribeAuthorizeImpression() {
        DefaultScribeClient scribeClient = getScribeClient();
        if (scribeClient == null) {
            return;
        }
        scribeClient.scribe(new EventNamespace.Builder().setClient("android").setPage(SCRIBE_LOGIN_PAGE).setSection("").setComponent("").setElement("").setAction("impression").builder());
    }

    private void scribeRequestEmail() {
        DefaultScribeClient scribeClient = getScribeClient();
        if (scribeClient == null) {
            return;
        }
        scribeClient.scribe(new EventNamespace.Builder().setClient("android").setPage(SCRIBE_SHARE_EMAIL_PAGE).setSection("").setComponent("").setElement("").setAction("impression").builder());
    }

    public void authorize(Activity activity, Callback<TwitterSession> callback) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        }
        if (callback != null) {
            if (activity.isFinishing()) {
                Twitter.getLogger().e("Twitter", "Cannot authorize, activity is finishing.", null);
                return;
            } else {
                handleAuthorize(activity, callback);
                return;
            }
        }
        throw new IllegalArgumentException("Callback must not be null.");
    }

    public void cancelAuthorize() {
        this.authState.endAuthorize();
    }

    public int getRequestCode() {
        return this.authConfig.getRequestCode();
    }

    public DefaultScribeClient getScribeClient() {
        return TwitterCoreScribeClientHolder.getScribeClient();
    }

    public void onActivityResult(int i10, int i11, Intent intent) {
        Twitter.getLogger().d("Twitter", "onActivityResult called with " + i10 + " " + i11);
        if (!this.authState.isAuthorizeInProgress()) {
            Twitter.getLogger().e("Twitter", "Authorize not in progress", null);
            return;
        }
        AuthHandler authHandler = this.authState.getAuthHandler();
        if (authHandler == null || !authHandler.handleOnActivityResult(i10, i11, intent)) {
            return;
        }
        this.authState.endAuthorize();
    }

    public void requestEmail(TwitterSession twitterSession, final Callback<String> callback) {
        scribeRequestEmail();
        AccountService accountService = this.twitterCore.getApiClient(twitterSession).getAccountService();
        Boolean bool = Boolean.FALSE;
        accountService.verifyCredentials(bool, bool, Boolean.TRUE).c0(new Callback<User>() { // from class: com.twitter.sdk.android.core.identity.TwitterAuthClient.1
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                callback.failure(twitterException);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<User> result) {
                callback.success(new Result(result.data.email, null));
            }
        });
    }

    public TwitterAuthClient(TwitterCore twitterCore, TwitterAuthConfig twitterAuthConfig, SessionManager<TwitterSession> sessionManager, AuthState authState) {
        this.twitterCore = twitterCore;
        this.authState = authState;
        this.authConfig = twitterAuthConfig;
        this.sessionManager = sessionManager;
    }
}
