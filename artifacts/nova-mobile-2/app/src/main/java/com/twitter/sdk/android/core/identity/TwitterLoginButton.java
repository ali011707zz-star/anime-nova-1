package com.twitter.sdk.android.core.identity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.R;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.CommonUtils;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class TwitterLoginButton extends Button {
    public static final String ERROR_MSG_NO_ACTIVITY = "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.";
    public static final String TAG = "Twitter";
    public final WeakReference<Activity> activityRef;
    public volatile TwitterAuthClient authClient;
    public Callback<TwitterSession> callback;
    public View.OnClickListener onClickListener;

    /* loaded from: classes.dex */
    public class LoginClickListener implements View.OnClickListener {
        private LoginClickListener() {
        }

        private void checkActivity(Activity activity) {
            if (activity == null || activity.isFinishing()) {
                CommonUtils.logOrThrowIllegalStateException("Twitter", TwitterLoginButton.ERROR_MSG_NO_ACTIVITY);
            }
        }

        private void checkCallback(Callback callback) {
            if (callback == null) {
                CommonUtils.logOrThrowIllegalStateException("Twitter", "Callback must not be null, did you call setCallback?");
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            checkCallback(TwitterLoginButton.this.callback);
            checkActivity(TwitterLoginButton.this.activityRef.get());
            TwitterLoginButton.this.getTwitterAuthClient().authorize(TwitterLoginButton.this.activityRef.get(), TwitterLoginButton.this.callback);
            View.OnClickListener onClickListener = TwitterLoginButton.this.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public TwitterLoginButton(Context context) {
        this(context, null);
    }

    private void checkTwitterCoreAndEnable() {
        if (isInEditMode()) {
            return;
        }
        try {
            TwitterCore.getInstance();
        } catch (IllegalStateException e10) {
            Twitter.getLogger().e("Twitter", e10.getMessage());
            setEnabled(false);
        }
    }

    @TargetApi(21)
    private void setupButton() {
        Resources resources = getResources();
        super.setCompoundDrawablesWithIntrinsicBounds(resources.getDrawable(R.drawable.tw__ic_logo_default), (Drawable) null, (Drawable) null, (Drawable) null);
        super.setCompoundDrawablePadding(resources.getDimensionPixelSize(R.dimen.tw__login_btn_drawable_padding));
        super.setText(R.string.tw__login_btn_txt);
        super.setTextColor(resources.getColor(R.color.tw__solid_white));
        super.setTextSize(0, resources.getDimensionPixelSize(R.dimen.tw__login_btn_text_size));
        super.setTypeface(Typeface.DEFAULT_BOLD);
        super.setPadding(resources.getDimensionPixelSize(R.dimen.tw__login_btn_left_padding), 0, resources.getDimensionPixelSize(R.dimen.tw__login_btn_right_padding), 0);
        super.setBackgroundResource(R.drawable.tw__login_btn);
        super.setOnClickListener(new LoginClickListener());
        if (Build.VERSION.SDK_INT >= 21) {
            super.setAllCaps(false);
        }
    }

    public Activity getActivity() {
        if (getContext() instanceof Activity) {
            return (Activity) getContext();
        }
        if (isInEditMode()) {
            return null;
        }
        throw new IllegalStateException(ERROR_MSG_NO_ACTIVITY);
    }

    public Callback<TwitterSession> getCallback() {
        return this.callback;
    }

    public TwitterAuthClient getTwitterAuthClient() {
        if (this.authClient == null) {
            synchronized (TwitterLoginButton.class) {
                if (this.authClient == null) {
                    this.authClient = new TwitterAuthClient();
                }
            }
        }
        return this.authClient;
    }

    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == getTwitterAuthClient().getRequestCode()) {
            getTwitterAuthClient().onActivityResult(i10, i11, intent);
        }
    }

    public void setCallback(Callback<TwitterSession> callback) {
        if (callback != null) {
            this.callback = callback;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.buttonStyle);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, null);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet, int i10, TwitterAuthClient twitterAuthClient) {
        super(context, attributeSet, i10);
        this.activityRef = new WeakReference<>(getActivity());
        this.authClient = twitterAuthClient;
        setupButton();
        checkTwitterCoreAndEnable();
    }
}
