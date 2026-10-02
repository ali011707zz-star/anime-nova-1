package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SearchView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: SearchFragmentBinding.java */
/* loaded from: classes.dex */
public final class u1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8740a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8741b;

    /* renamed from: c, reason: collision with root package name */
    public final ErrorView f8742c;

    /* renamed from: d, reason: collision with root package name */
    public final ProgressBar f8743d;

    /* renamed from: e, reason: collision with root package name */
    public final ProgressBar f8744e;

    /* renamed from: f, reason: collision with root package name */
    public final SearchView f8745f;

    /* renamed from: g, reason: collision with root package name */
    public final MaterialToolbar f8746g;

    /* renamed from: h, reason: collision with root package name */
    public final SwipeRefreshLayout f8747h;

    public u1(LinearLayout linearLayout, LinearLayout linearLayout2, ErrorView errorView, ProgressBar progressBar, ProgressBar progressBar2, SearchView searchView, MaterialToolbar materialToolbar, SwipeRefreshLayout swipeRefreshLayout) {
        this.f8740a = linearLayout;
        this.f8741b = linearLayout2;
        this.f8742c = errorView;
        this.f8743d = progressBar;
        this.f8744e = progressBar2;
        this.f8745f = searchView;
        this.f8746g = materialToolbar;
        this.f8747h = swipeRefreshLayout;
    }

    public static u1 a(View view) {
        int i10 = R.id.catalogue_view;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.catalogue_view);
        if (linearLayout != null) {
            i10 = R.id.error_view;
            ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
            if (errorView != null) {
                i10 = R.id.progress;
                ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                if (progressBar != null) {
                    i10 = R.id.progress_query;
                    ProgressBar progressBar2 = (ProgressBar) a2.b.a(view, R.id.progress_query);
                    if (progressBar2 != null) {
                        i10 = R.id.search_query;
                        SearchView searchView = (SearchView) a2.b.a(view, R.id.search_query);
                        if (searchView != null) {
                            i10 = R.id.search_toolbar;
                            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.search_toolbar);
                            if (materialToolbar != null) {
                                i10 = R.id.swipe_refresh;
                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                                if (swipeRefreshLayout != null) {
                                    return new u1((LinearLayout) view, linearLayout, errorView, progressBar, progressBar2, searchView, materialToolbar, swipeRefreshLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.search_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8740a;
    }
}
