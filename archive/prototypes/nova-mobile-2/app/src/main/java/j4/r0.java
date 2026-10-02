package j4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* compiled from: CustomListFragmentBinding.java */
/* loaded from: classes.dex */
public final class r0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8676a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8677b;

    /* renamed from: c, reason: collision with root package name */
    public final ExtendedFloatingActionButton f8678c;

    /* renamed from: d, reason: collision with root package name */
    public final ProgressBar f8679d;

    /* renamed from: e, reason: collision with root package name */
    public final RecyclerView f8680e;

    /* renamed from: f, reason: collision with root package name */
    public final SwipeRefreshLayout f8681f;

    public r0(FrameLayout frameLayout, ErrorView errorView, ExtendedFloatingActionButton extendedFloatingActionButton, ProgressBar progressBar, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f8676a = frameLayout;
        this.f8677b = errorView;
        this.f8678c = extendedFloatingActionButton;
        this.f8679d = progressBar;
        this.f8680e = recyclerView;
        this.f8681f = swipeRefreshLayout;
    }

    public static r0 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.fab;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) a2.b.a(view, R.id.fab);
            if (extendedFloatingActionButton != null) {
                i10 = R.id.progress;
                ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                if (progressBar != null) {
                    i10 = R.id.recycler;
                    RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                    if (recyclerView != null) {
                        i10 = R.id.swipe_refresh;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                        if (swipeRefreshLayout != null) {
                            return new r0((FrameLayout) view, errorView, extendedFloatingActionButton, progressBar, recyclerView, swipeRefreshLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public FrameLayout b() {
        return this.f8676a;
    }
}
