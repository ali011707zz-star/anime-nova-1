package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;

/* compiled from: BrowseFragmentBinding.java */
/* loaded from: classes.dex */
public final class c0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8168a;

    /* renamed from: b, reason: collision with root package name */
    public final AppBarLayout f8169b;

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f8170c;

    /* renamed from: d, reason: collision with root package name */
    public final Chip f8171d;

    /* renamed from: e, reason: collision with root package name */
    public final Chip f8172e;

    /* renamed from: f, reason: collision with root package name */
    public final Chip f8173f;

    /* renamed from: g, reason: collision with root package name */
    public final Chip f8174g;

    /* renamed from: h, reason: collision with root package name */
    public final Chip f8175h;

    /* renamed from: i, reason: collision with root package name */
    public final Chip f8176i;

    /* renamed from: j, reason: collision with root package name */
    public final Chip f8177j;

    /* renamed from: k, reason: collision with root package name */
    public final Chip f8178k;

    /* renamed from: l, reason: collision with root package name */
    public final ErrorView f8179l;

    /* renamed from: m, reason: collision with root package name */
    public final LinearLayout f8180m;

    /* renamed from: n, reason: collision with root package name */
    public final HorizontalScrollView f8181n;

    /* renamed from: o, reason: collision with root package name */
    public final ProgressBar f8182o;

    /* renamed from: p, reason: collision with root package name */
    public final View f8183p;

    /* renamed from: q, reason: collision with root package name */
    public final ChipGroup f8184q;

    /* renamed from: r, reason: collision with root package name */
    public final SwipeRefreshLayout f8185r;

    /* renamed from: s, reason: collision with root package name */
    public final ChipGroup f8186s;

    public c0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, LinearLayout linearLayout, Chip chip, Chip chip2, Chip chip3, Chip chip4, Chip chip5, Chip chip6, Chip chip7, Chip chip8, ErrorView errorView, LinearLayout linearLayout2, HorizontalScrollView horizontalScrollView, ProgressBar progressBar, View view, ChipGroup chipGroup, SwipeRefreshLayout swipeRefreshLayout, ChipGroup chipGroup2) {
        this.f8168a = coordinatorLayout;
        this.f8169b = appBarLayout;
        this.f8170c = linearLayout;
        this.f8171d = chip;
        this.f8172e = chip2;
        this.f8173f = chip3;
        this.f8174g = chip4;
        this.f8175h = chip5;
        this.f8176i = chip6;
        this.f8177j = chip7;
        this.f8178k = chip8;
        this.f8179l = errorView;
        this.f8180m = linearLayout2;
        this.f8181n = horizontalScrollView;
        this.f8182o = progressBar;
        this.f8183p = view;
        this.f8184q = chipGroup;
        this.f8185r = swipeRefreshLayout;
        this.f8186s = chipGroup2;
    }

    public static c0 a(View view) {
        int i10 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) a2.b.a(view, R.id.app_bar);
        if (appBarLayout != null) {
            i10 = R.id.catalogue_view;
            LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.catalogue_view);
            if (linearLayout != null) {
                i10 = R.id.chip_completed;
                Chip chip = (Chip) a2.b.a(view, R.id.chip_completed);
                if (chip != null) {
                    i10 = R.id.chip_movie;
                    Chip chip2 = (Chip) a2.b.a(view, R.id.chip_movie);
                    if (chip2 != null) {
                        i10 = R.id.chip_not_yet_aired;
                        Chip chip3 = (Chip) a2.b.a(view, R.id.chip_not_yet_aired);
                        if (chip3 != null) {
                            i10 = R.id.chip_ona;
                            Chip chip4 = (Chip) a2.b.a(view, R.id.chip_ona);
                            if (chip4 != null) {
                                i10 = R.id.chip_ongoing;
                                Chip chip5 = (Chip) a2.b.a(view, R.id.chip_ongoing);
                                if (chip5 != null) {
                                    i10 = R.id.chip_ova;
                                    Chip chip6 = (Chip) a2.b.a(view, R.id.chip_ova);
                                    if (chip6 != null) {
                                        i10 = R.id.chip_special;
                                        Chip chip7 = (Chip) a2.b.a(view, R.id.chip_special);
                                        if (chip7 != null) {
                                            i10 = R.id.chip_tv;
                                            Chip chip8 = (Chip) a2.b.a(view, R.id.chip_tv);
                                            if (chip8 != null) {
                                                i10 = R.id.error_view;
                                                ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
                                                if (errorView != null) {
                                                    i10 = R.id.filterLayout;
                                                    LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.filterLayout);
                                                    if (linearLayout2 != null) {
                                                        i10 = R.id.horizontal_scroll;
                                                        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) a2.b.a(view, R.id.horizontal_scroll);
                                                        if (horizontalScrollView != null) {
                                                            i10 = R.id.progress;
                                                            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                                                            if (progressBar != null) {
                                                                i10 = R.id.separator1;
                                                                View a10 = a2.b.a(view, R.id.separator1);
                                                                if (a10 != null) {
                                                                    i10 = R.id.state_group;
                                                                    ChipGroup chipGroup = (ChipGroup) a2.b.a(view, R.id.state_group);
                                                                    if (chipGroup != null) {
                                                                        i10 = R.id.swipe_refresh;
                                                                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) a2.b.a(view, R.id.swipe_refresh);
                                                                        if (swipeRefreshLayout != null) {
                                                                            i10 = R.id.types_group;
                                                                            ChipGroup chipGroup2 = (ChipGroup) a2.b.a(view, R.id.types_group);
                                                                            if (chipGroup2 != null) {
                                                                                return new c0((CoordinatorLayout) view, appBarLayout, linearLayout, chip, chip2, chip3, chip4, chip5, chip6, chip7, chip8, errorView, linearLayout2, horizontalScrollView, progressBar, a10, chipGroup, swipeRefreshLayout, chipGroup2);
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
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.browse_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CoordinatorLayout b() {
        return this.f8168a;
    }
}
