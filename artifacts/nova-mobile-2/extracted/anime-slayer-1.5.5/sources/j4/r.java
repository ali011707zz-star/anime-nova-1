package j4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SearchView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.textview.MaterialTextView;

/* compiled from: AddAnimeFragmentBinding.java */
/* loaded from: classes.dex */
public final class r implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8664a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f8665b;

    /* renamed from: c, reason: collision with root package name */
    public final CardView f8666c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayout f8667d;

    /* renamed from: e, reason: collision with root package name */
    public final ErrorView f8668e;

    /* renamed from: f, reason: collision with root package name */
    public final ProgressBar f8669f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressBar f8670g;

    /* renamed from: h, reason: collision with root package name */
    public final RecyclerView f8671h;

    /* renamed from: i, reason: collision with root package name */
    public final SearchView f8672i;

    /* renamed from: j, reason: collision with root package name */
    public final MaterialToolbar f8673j;

    /* renamed from: k, reason: collision with root package name */
    public final MaterialToolbar f8674k;

    /* renamed from: l, reason: collision with root package name */
    public final MaterialTextView f8675l;

    public r(LinearLayout linearLayout, FrameLayout frameLayout, CardView cardView, LinearLayout linearLayout2, ErrorView errorView, ProgressBar progressBar, ProgressBar progressBar2, RecyclerView recyclerView, SearchView searchView, MaterialToolbar materialToolbar, MaterialToolbar materialToolbar2, MaterialTextView materialTextView) {
        this.f8664a = linearLayout;
        this.f8665b = frameLayout;
        this.f8666c = cardView;
        this.f8667d = linearLayout2;
        this.f8668e = errorView;
        this.f8669f = progressBar;
        this.f8670g = progressBar2;
        this.f8671h = recyclerView;
        this.f8672i = searchView;
        this.f8673j = materialToolbar;
        this.f8674k = materialToolbar2;
        this.f8675l = materialTextView;
    }

    public static r a(View view) {
        int i10 = R.id.card_frame;
        FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card_frame);
        if (frameLayout != null) {
            i10 = R.id.card_view;
            CardView cardView = (CardView) a2.b.a(view, R.id.card_view);
            if (cardView != null) {
                i10 = R.id.catalogue_view;
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
                                i10 = R.id.recycler;
                                RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                                if (recyclerView != null) {
                                    i10 = R.id.search_query;
                                    SearchView searchView = (SearchView) a2.b.a(view, R.id.search_query);
                                    if (searchView != null) {
                                        i10 = R.id.search_toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.search_toolbar);
                                        if (materialToolbar != null) {
                                            i10 = R.id.toolbar;
                                            MaterialToolbar materialToolbar2 = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                            if (materialToolbar2 != null) {
                                                i10 = R.id.toolbar_title;
                                                MaterialTextView materialTextView = (MaterialTextView) a2.b.a(view, R.id.toolbar_title);
                                                if (materialTextView != null) {
                                                    return new r((LinearLayout) view, frameLayout, cardView, linearLayout, errorView, progressBar, progressBar2, recyclerView, searchView, materialToolbar, materialToolbar2, materialTextView);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public LinearLayout b() {
        return this.f8664a;
    }
}
