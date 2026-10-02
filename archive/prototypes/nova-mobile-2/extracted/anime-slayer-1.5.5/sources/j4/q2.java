package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: TopContributersActivityBinding.java */
/* loaded from: classes.dex */
public final class q2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8658a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8659b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8660c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f8661d;

    /* renamed from: e, reason: collision with root package name */
    public final SwipeRefreshLayout f8662e;

    /* renamed from: f, reason: collision with root package name */
    public final MaterialToolbar f8663f;

    public q2(CoordinatorLayout coordinatorLayout, ErrorView errorView, ProgressBar progressBar, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, MaterialToolbar materialToolbar) {
        this.f8658a = coordinatorLayout;
        this.f8659b = errorView;
        this.f8660c = progressBar;
        this.f8661d = recyclerView;
        this.f8662e = swipeRefreshLayout;
        this.f8663f = materialToolbar;
    }

    public static q2 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
            if (progressBar != null) {
                i10 = R.id.recycler;
                RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                if (recyclerView != null) {
                    i10 = R.id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                    if (swipeRefreshLayout != null) {
                        i10 = R.id.toolbar;
                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                        if (materialToolbar != null) {
                            return new q2((CoordinatorLayout) view, errorView, progressBar, recyclerView, swipeRefreshLayout, materialToolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.top_contributers_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CoordinatorLayout b() {
        return this.f8658a;
    }
}
