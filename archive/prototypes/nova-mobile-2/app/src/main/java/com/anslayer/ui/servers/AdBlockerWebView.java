package com.anslayer.ui.servers;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import d7.b;
import jc.l;

/* compiled from: AdBlockerWebView.kt */
/* loaded from: classes.dex */
public final class AdBlockerWebView extends WebView {

    /* renamed from: f, reason: collision with root package name */
    public final String f4335f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4336g;

    /* renamed from: h, reason: collision with root package name */
    public final b f4337h;

    /* renamed from: i, reason: collision with root package name */
    public final WebResourceResponse f4338i;

    /* compiled from: AdBlockerWebView.kt */
    /* loaded from: classes.dex */
    public static final class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
            super.doUpdateVisitedHistory(webView, str, z10);
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(WebView webView, Message message, Message message2) {
            try {
                super.onFormResubmission(webView, message, message2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            if (Build.VERSION.SDK_INT >= 23) {
                super.onPageCommitVisible(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
            if (Build.VERSION.SDK_INT >= 21) {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            if (Build.VERSION.SDK_INT >= 23) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT >= 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(WebView webView, float f10, float f11) {
            super.onScaleChanged(webView, f10, f11);
        }

        @Override // android.webkit.WebViewClient
        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            super.onTooManyRedirects(webView, message, message2);
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
            super.onUnhandledKeyEvent(webView, keyEvent);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 21 && AdBlockerWebView.this.f4336g) {
                if ((webResourceRequest == null ? null : webResourceRequest.getUrl()) != null && AdBlockerWebView.this.f4337h.g(webResourceRequest.getUrl().toString())) {
                    return AdBlockerWebView.this.f4338i;
                }
            }
            if (i10 >= 21) {
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webView == null) {
                return true;
            }
            webView.loadUrl(String.valueOf(webResourceRequest == null ? null : webResourceRequest.getUrl()));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (Build.VERSION.SDK_INT >= 23) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (webView == null) {
                return true;
            }
            if (str == null) {
                str = "";
            }
            webView.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            if (AdBlockerWebView.this.f4336g && AdBlockerWebView.this.f4337h.g(str)) {
                return AdBlockerWebView.this.f4338i;
            }
            return super.shouldInterceptRequest(webView, str);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdBlockerWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        l.f(context, "context");
    }

    public final void d() {
        super.setWebViewClient(new a());
    }

    public final void setAdBlockerEnabled(boolean z10) {
        this.f4336g = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdBlockerWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        l.f(context, "context");
        this.f4335f = "AdBlockerWebView";
        b a10 = b.f5686d.a();
        this.f4337h = a10;
        this.f4338i = a10.d();
        d();
    }
}
