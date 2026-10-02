package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.R;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.identity.OAuthController;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;

/* loaded from: classes.dex */
public class OAuthActivity extends Activity implements OAuthController.Listener {
    public static final String EXTRA_AUTH_CONFIG = "auth_config";
    private static final String STATE_PROGRESS = "progress";
    public OAuthController oAuthController;
    private ProgressBar spinner;
    private WebView webView;

    @Override // android.app.Activity
    public void onBackPressed() {
        this.oAuthController.handleAuthError(0, new TwitterAuthException("Authorization failed, request was canceled."));
    }

    @Override // com.twitter.sdk.android.core.identity.OAuthController.Listener
    public void onComplete(int i10, Intent intent) {
        setResult(i10, intent);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.tw__activity_oauth);
        this.spinner = (ProgressBar) findViewById(R.id.tw__spinner);
        this.webView = (WebView) findViewById(R.id.tw__web_view);
        this.spinner.setVisibility(bundle != null ? bundle.getBoolean(STATE_PROGRESS, false) : true ? 0 : 8);
        OAuthController oAuthController = new OAuthController(this.spinner, this.webView, (TwitterAuthConfig) getIntent().getParcelableExtra(EXTRA_AUTH_CONFIG), new OAuth1aService(TwitterCore.getInstance(), new TwitterApi()), this);
        this.oAuthController = oAuthController;
        oAuthController.startAuth();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (this.spinner.getVisibility() == 0) {
            bundle.putBoolean(STATE_PROGRESS, true);
        }
        super.onSaveInstanceState(bundle);
    }
}
