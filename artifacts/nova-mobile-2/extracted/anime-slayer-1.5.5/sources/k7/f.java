package k7;

import android.webkit.WebSettings;
import android.webkit.WebView;
import jc.l;

/* compiled from: WebViewUtil.kt */
/* loaded from: classes.dex */
public final class f {
    public static final void a(WebView webView) {
        l.f(webView, "<this>");
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setCacheMode(-1);
    }
}
