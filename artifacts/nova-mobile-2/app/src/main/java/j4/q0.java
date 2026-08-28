package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* compiled from: CustomListDetailsFragmentBinding.java */
/* loaded from: classes.dex */
public final class q0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8645a;

    /* renamed from: b, reason: collision with root package name */
    public final AppBarLayout f8646b;

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f8647c;

    /* renamed from: d, reason: collision with root package name */
    public final ErrorView f8648d;

    /* renamed from: e, reason: collision with root package name */
    public final ExtendedFloatingActionButton f8649e;

    /* renamed from: f, reason: collision with root package name */
    public final ProgressBar f8650f;

    /* renamed from: g, reason: collision with root package name */
    public final SwipeRefreshLayout f8651g;

    /* renamed from: h, reason: collision with root package name */
    public final MaterialToolbar f8652h;

    public q0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, LinearLayout linearLayout, ErrorView errorView, ExtendedFloatingActionButton extendedFloatingActionButton, ProgressBar progressBar, SwipeRefreshLayout swipeRefreshLayout, MaterialToolbar materialToolbar) {
        this.f8645a = coordinatorLayout;
        this.f8646b = appBarLayout;
        this.f8647c = linearLayout;
        this.f8648d = errorView;
        this.f8649e = extendedFloatingActionButton;
        this.f8650f = progressBar;
        this.f8651g = swipeRefreshLayout;
        this.f8652h = materialToolbar;
    }

    public static q0 a(View view) {
        int i10 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) a2.b.a(view, R.id.app_bar);
        if (appBarLayout != null) {
            i10 = R.id.catalogue_view;
            LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.catalogue_view);
            if (linearLayout != null) {
                i10 = R.id.error_view;
                ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
                if (errorView != null) {
                    i10 = R.id.fab;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) a2.b.a(view, R.id.fab);
                    if (extendedFloatingActionButton != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                        if (progressBar != null) {
                            i10 = R.id.swipe_refresh;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                            if (swipeRefreshLayout != null) {
                                i10 = R.id.toolbar;
                                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                if (materialToolbar != null) {
                                    return new q0((CoordinatorLayout) view, appBarLayout, linearLayout, errorView, extendedFloatingActionButton, progressBar, swipeRefreshLayout, materialToolbar);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
