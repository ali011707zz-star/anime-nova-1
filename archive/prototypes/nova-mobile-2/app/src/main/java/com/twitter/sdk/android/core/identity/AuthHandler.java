package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterSession;

/* loaded from: classes.dex */
public abstract class AuthHandler {
    public static final String EXTRA_AUTH_ERROR = "auth_error";
    public static final String EXTRA_SCREEN_NAME = "screen_name";
    public static final String EXTRA_TOKEN = "tk";
    public static final String EXTRA_TOKEN_SECRET = "ts";
    public static final String EXTRA_USER_ID = "user_id";
    public static final int RESULT_CODE_ERROR = 1;
    private final Callback<TwitterSession> callback;
    private final TwitterAuthConfig config;
    public final int requestCode;

    public AuthHandler(TwitterAuthConfig twitterAuthConfig, Callback<TwitterSession> callback, int i10) {
        this.config = twitterAuthConfig;
        this.callback = callback;
        this.requestCode = i10;
    }

    public abstract boolean authorize(Activity activity);

    public TwitterAuthConfig getAuthConfig() {
        return this.config;
    }

    public Callback<TwitterSession> getCallback() {
        return this.callback;
    }

    public boolean handleOnActivityResult(int i10, int i11, Intent intent) {
        if (this.requestCode != i10) {
            return false;
        }
        Callback<TwitterSession> callback = getCallback();
        if (callback == null) {
            return true;
        }
        if (i11 == -1) {
            String stringExtra = intent.getStringExtra(EXTRA_TOKEN);
            String stringExtra2 = intent.getStringExtra(EXTRA_TOKEN_SECRET);
            String stringExtra3 = intent.getStringExtra(EXTRA_SCREEN_NAME);
            callback.success(new Result<>(new TwitterSession(new TwitterAuthToken(stringExtra, stringExtra2), intent.getLongExtra(EXTRA_USER_ID, 0L), stringExtra3), null));
            return true;
        }
        if (intent != null && intent.hasExtra(EXTRA_AUTH_ERROR)) {
            callback.failure((TwitterAuthException) intent.getSerializableExtra(EXTRA_AUTH_ERROR));
            return true;
        }
        callback.failure(new TwitterAuthException("Authorize failed."));
        return true;
    }
}
