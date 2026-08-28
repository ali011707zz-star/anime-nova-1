package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.identity.OAuthWebViewClient;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthConstants;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;

/* loaded from: classes.dex */
class OAuthController implements OAuthWebViewClient.Listener {
    private final TwitterAuthConfig authConfig;
    public final Listener listener;
    private final OAuth1aService oAuth1aService;
    public TwitterAuthToken requestToken;
    private final ProgressBar spinner;
    private final WebView webView;

    /* loaded from: classes.dex */
    public interface Listener {
        void onComplete(int i10, Intent intent);
    }

    public OAuthController(ProgressBar progressBar, WebView webView, TwitterAuthConfig twitterAuthConfig, OAuth1aService oAuth1aService, Listener listener) {
        this.spinner = progressBar;
        this.webView = webView;
        this.authConfig = twitterAuthConfig;
        this.oAuth1aService = oAuth1aService;
        this.listener = listener;
    }

    private void dismissSpinner() {
        this.spinner.setVisibility(8);
    }

    private void dismissWebView() {
        this.webView.stopLoading();
        dismissSpinner();
    }

    private void handleWebViewError(WebViewException webViewException) {
        Twitter.getLogger().e("Twitter", "OAuth web view completed with an error", webViewException);
        handleAuthError(1, new TwitterAuthException("OAuth web view completed with an error"));
    }

    private void handleWebViewSuccess(Bundle bundle) {
        String string;
        Twitter.getLogger().d("Twitter", "OAuth web view completed successfully");
        if (bundle != null && (string = bundle.getString(OAuthConstants.PARAM_VERIFIER)) != null) {
            Twitter.getLogger().d("Twitter", "Converting the request token to an access token.");
            this.oAuth1aService.requestAccessToken(newRequestAccessTokenCallback(), this.requestToken, string);
            return;
        }
        Twitter.getLogger().e("Twitter", "Failed to get authorization, bundle incomplete " + bundle, null);
        handleAuthError(1, new TwitterAuthException("Failed to get authorization, bundle incomplete"));
    }

    public void handleAuthError(int i10, TwitterAuthException twitterAuthException) {
        Intent intent = new Intent();
        intent.putExtra(AuthHandler.EXTRA_AUTH_ERROR, twitterAuthException);
        this.listener.onComplete(i10, intent);
    }

    public Callback<OAuthResponse> newRequestAccessTokenCallback() {
        return new Callback<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.OAuthController.2
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                Twitter.getLogger().e("Twitter", "Failed to get access token", twitterException);
                OAuthController.this.handleAuthError(1, new TwitterAuthException("Failed to get access token"));
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<OAuthResponse> result) {
                Intent intent = new Intent();
                OAuthResponse oAuthResponse = result.data;
                intent.putExtra(AuthHandler.EXTRA_SCREEN_NAME, oAuthResponse.userName);
                intent.putExtra(AuthHandler.EXTRA_USER_ID, oAuthResponse.userId);
                intent.putExtra(AuthHandler.EXTRA_TOKEN, oAuthResponse.authToken.token);
                intent.putExtra(AuthHandler.EXTRA_TOKEN_SECRET, oAuthResponse.authToken.secret);
                OAuthController.this.listener.onComplete(-1, intent);
            }
        };
    }

    public Callback<OAuthResponse> newRequestTempTokenCallback() {
        return new Callback<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.OAuthController.1
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                Twitter.getLogger().e("Twitter", "Failed to get request token", twitterException);
                OAuthController.this.handleAuthError(1, new TwitterAuthException("Failed to get request token"));
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<OAuthResponse> result) {
                OAuthController oAuthController = OAuthController.this;
                oAuthController.requestToken = result.data.authToken;
                String authorizeUrl = oAuthController.oAuth1aService.getAuthorizeUrl(OAuthController.this.requestToken);
                Twitter.getLogger().d("Twitter", "Redirecting user to web view to complete authorization flow");
                OAuthController oAuthController2 = OAuthController.this;
                oAuthController2.setUpWebView(oAuthController2.webView, new OAuthWebViewClient(OAuthController.this.oAuth1aService.buildCallbackUrl(OAuthController.this.authConfig), OAuthController.this), authorizeUrl, new OAuthWebChromeClient());
            }
        };
    }

    @Override // com.twitter.sdk.android.core.identity.OAuthWebViewClient.Listener
    public void onError(WebViewException webViewException) {
        handleWebViewError(webViewException);
        dismissWebView();
    }

    @Override // com.twitter.sdk.android.core.identity.OAuthWebViewClient.Listener
    public void onPageFinished(WebView webView, String str) {
        dismissSpinner();
        webView.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.core.identity.OAuthWebViewClient.Listener
    public void onSuccess(Bundle bundle) {
        handleWebViewSuccess(bundle);
        dismissWebView();
    }

    public void setUpWebView(WebView webView, WebViewClient webViewClient, String str, WebChromeClient webChromeClient) {
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setSaveFormData(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setWebViewClient(webViewClient);
        webView.loadUrl(str);
        webView.setVisibility(4);
        webView.setWebChromeClient(webChromeClient);
    }

    public void startAuth() {
        Twitter.getLogger().d("Twitter", "Obtaining request token to start the sign in flow");
        this.oAuth1aService.requestTempToken(newRequestTempTokenCallback());
    }
}
