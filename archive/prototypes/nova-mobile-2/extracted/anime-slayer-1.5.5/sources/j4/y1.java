package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;

/* compiled from: SeasonFragmentPageBinding.java */
/* loaded from: classes.dex */
public final class y1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8837a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8838b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8839c;

    /* renamed from: d, reason: collision with root package name */
    public final ErrorView f8840d;

    /* renamed from: e, reason: collision with root package name */
    public final LinearLayout f8841e;

    /* renamed from: f, reason: collision with root package name */
    public final LottieAnimationView f8842f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressBar f8843g;

    /* renamed from: h, reason: collision with root package name */
    public final SwipeRefreshLayout f8844h;

    public y1(FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, ErrorView errorView, LinearLayout linearLayout2, LottieAnimationView lottieAnimationView, ProgressBar progressBar, SwipeRefreshLayout swipeRefreshLayout) {
        this.f8837a = frameLayout;
        this.f8838b = linearLayout;
        this.f8839c = textView;
        this.f8840d = errorView;
        this.f8841e = linearLayout2;
        this.f8842f = lottieAnimationView;
        this.f8843g = progressBar;
        this.f8844h = swipeRefreshLayout;
    }

    public static y1 a(View view) {
        int i10 = R.id.catalogue_view;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.catalogue_view);
        if (linearLayout != null) {
            i10 = R.id.current_season;
            TextView textView = (TextView) a2.b.a(view, R.id.current_season);
            if (textView != null) {
                i10 = R.id.error_view;
                ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
                if (errorView != null) {
                    i10 = R.id.header_season;
                    LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.header_season);
                    if (linearLayout2 != null) {
                        i10 = R.id.lav_sub2;
                        LottieAnimationView lottieAnimationView = (LottieAnimationView) a2.b.a(view, R.id.lav_sub2);
                        if (lottieAnimationView != null) {
                            i10 = R.id.progress;
                            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                            if (progressBar != null) {
                                i10 = R.id.swipe_refresh;
                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                                if (swipeRefreshLayout != null) {
                                    return new y1((FrameLayout) view, linearLayout, textView, errorView, linearLayout2, lottieAnimationView, progressBar, swipeRefreshLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static y1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.season_fragment_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8837a;
    }
}
