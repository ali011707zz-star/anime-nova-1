package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;

/* compiled from: WebviewActivityBinding.java */
/* loaded from: classes.dex */
public final class d3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8266a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8267b;

    /* renamed from: c, reason: collision with root package name */
    public final LinearProgressIndicator f8268c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialToolbar f8269d;

    /* renamed from: e, reason: collision with root package name */
    public final WebView f8270e;

    public d3(LinearLayout linearLayout, ErrorView errorView, LinearProgressIndicator linearProgressIndicator, MaterialToolbar materialToolbar, WebView webView) {
        this.f8266a = linearLayout;
        this.f8267b = errorView;
        this.f8268c = linearProgressIndicator;
        this.f8269d = materialToolbar;
        this.f8270e = webView;
    }

    public static d3 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.progress_bar;
            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) a2.b.a(view, R.id.progress_bar);
            if (linearProgressIndicator != null) {
                i10 = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                if (materialToolbar != null) {
                    i10 = R.id.webview;
                    WebView webView = (WebView) a2.b.a(view, R.id.webview);
                    if (webView != null) {
                        return new d3((LinearLayout) view, errorView, linearProgressIndicator, materialToolbar, webView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d3 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d3 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.webview_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8266a;
    }
}
