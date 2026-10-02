package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;

/* compiled from: RecommendationFragmentBinding.java */
/* loaded from: classes.dex */
public final class q1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8653a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8654b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8655c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f8656d;

    /* renamed from: e, reason: collision with root package name */
    public final SwipeRefreshLayout f8657e;

    public q1(FrameLayout frameLayout, ErrorView errorView, ProgressBar progressBar, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f8653a = frameLayout;
        this.f8654b = errorView;
        this.f8655c = progressBar;
        this.f8656d = recyclerView;
        this.f8657e = swipeRefreshLayout;
    }

    public static q1 a(View view) {
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
                        return new q1((FrameLayout) view, errorView, progressBar, recyclerView, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.recommendation_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8653a;
    }
}
