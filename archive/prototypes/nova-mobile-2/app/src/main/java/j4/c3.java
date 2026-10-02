package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anslayer.R;
import com.anslayer.ui.servers.AdBlockerWebView;

/* compiled from: WebViewPlayerActivityBinding.java */
/* loaded from: classes.dex */
public final class c3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final RelativeLayout f8218a;

    /* renamed from: b, reason: collision with root package name */
    public final RelativeLayout f8219b;

    /* renamed from: c, reason: collision with root package name */
    public final RelativeLayout f8220c;

    /* renamed from: d, reason: collision with root package name */
    public final RelativeLayout f8221d;

    /* renamed from: e, reason: collision with root package name */
    public final AdBlockerWebView f8222e;

    public c3(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, AdBlockerWebView adBlockerWebView) {
        this.f8218a = relativeLayout;
        this.f8219b = relativeLayout2;
        this.f8220c = relativeLayout3;
        this.f8221d = relativeLayout4;
        this.f8222e = adBlockerWebView;
    }

    public static c3 a(View view) {
        int i10 = R.id.nonVideoLayout;
        RelativeLayout relativeLayout = (RelativeLayout) a2.b.a(view, R.id.nonVideoLayout);
        if (relativeLayout != null) {
            RelativeLayout relativeLayout2 = (RelativeLayout) view;
            i10 = R.id.videoLayout;
            RelativeLayout relativeLayout3 = (RelativeLayout) a2.b.a(view, R.id.videoLayout);
            if (relativeLayout3 != null) {
                i10 = R.id.webView;
                AdBlockerWebView adBlockerWebView = (AdBlockerWebView) a2.b.a(view, R.id.webView);
                if (adBlockerWebView != null) {
                    return new c3(relativeLayout2, relativeLayout, relativeLayout2, relativeLayout3, adBlockerWebView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c3 b(LayoutInflater layoutInflater) {
        return c(layoutInflater, null, false);
    }

    public static c3 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.web_view_player_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }
}
