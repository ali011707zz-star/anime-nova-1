package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: FragmentSeriesDetailBinding.java */
/* loaded from: classes.dex */
public final class e1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8283a;

    /* renamed from: b, reason: collision with root package name */
    public final d2 f8284b;

    /* renamed from: c, reason: collision with root package name */
    public final c2 f8285c;

    /* renamed from: d, reason: collision with root package name */
    public final FloatingActionButton f8286d;

    /* renamed from: e, reason: collision with root package name */
    public final View f8287e;

    /* renamed from: f, reason: collision with root package name */
    public final SlayerImage f8288f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressLayout f8289g;

    /* renamed from: h, reason: collision with root package name */
    public final a2 f8290h;

    /* renamed from: i, reason: collision with root package name */
    public final b2 f8291i;

    /* renamed from: j, reason: collision with root package name */
    public final NestedScrollView f8292j;

    /* renamed from: k, reason: collision with root package name */
    public final f2 f8293k;

    /* renamed from: l, reason: collision with root package name */
    public final g2 f8294l;

    /* renamed from: m, reason: collision with root package name */
    public final h2 f8295m;

    /* renamed from: n, reason: collision with root package name */
    public final i2 f8296n;

    public e1(ProgressLayout progressLayout, d2 d2Var, c2 c2Var, FloatingActionButton floatingActionButton, View view, SlayerImage slayerImage, ProgressLayout progressLayout2, a2 a2Var, b2 b2Var, NestedScrollView nestedScrollView, f2 f2Var, g2 g2Var, h2 h2Var, i2 i2Var) {
        this.f8283a = progressLayout;
        this.f8284b = d2Var;
        this.f8285c = c2Var;
        this.f8286d = floatingActionButton;
        this.f8287e = view;
        this.f8288f = slayerImage;
        this.f8289g = progressLayout2;
        this.f8290h = a2Var;
        this.f8291i = b2Var;
        this.f8292j = nestedScrollView;
        this.f8293k = f2Var;
        this.f8294l = g2Var;
        this.f8295m = h2Var;
        this.f8296n = i2Var;
    }

    public static e1 a(View view) {
        int i10 = R.id.anime_overview_section;
        View a10 = a2.b.a(view, R.id.anime_overview_section);
        if (a10 != null) {
            d2 a11 = d2.a(a10);
            i10 = R.id.extra_info;
            View a12 = a2.b.a(view, R.id.extra_info);
            if (a12 != null) {
                c2 a13 = c2.a(a12);
                i10 = R.id.fab;
                FloatingActionButton floatingActionButton = (FloatingActionButton) a2.b.a(view, R.id.fab);
                if (floatingActionButton != null) {
                    i10 = R.id.full_backdrop;
                    View a14 = a2.b.a(view, R.id.full_backdrop);
                    if (a14 != null) {
                        i10 = R.id.manga_cover_full;
                        SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.manga_cover_full);
                        if (slayerImage != null) {
                            ProgressLayout progressLayout = (ProgressLayout) view;
                            i10 = R.id.section_ad;
                            View a15 = a2.b.a(view, R.id.section_ad);
                            if (a15 != null) {
                                a2 a16 = a2.a(a15);
                                i10 = R.id.section_content_rating;
                                View a17 = a2.b.a(view, R.id.section_content_rating);
                                if (a17 != null) {
                                    b2 a18 = b2.a(a17);
                                    i10 = R.id.seriesNestedScrollView;
                                    NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.seriesNestedScrollView);
                                    if (nestedScrollView != null) {
                                        i10 = R.id.seriesRelatedNewsSection;
                                        View a19 = a2.b.a(view, R.id.seriesRelatedNewsSection);
                                        if (a19 != null) {
                                            f2 a20 = f2.a(a19);
                                            i10 = R.id.seriesRelatedSection;
                                            View a21 = a2.b.a(view, R.id.seriesRelatedSection);
                                            if (a21 != null) {
                                                g2 a22 = g2.a(a21);
                                                i10 = R.id.seriesSuggestionsSection;
                                                View a23 = a2.b.a(view, R.id.seriesSuggestionsSection);
                                                if (a23 != null) {
                                                    h2 a24 = h2.a(a23);
                                                    i10 = R.id.series_trailer;
                                                    View a25 = a2.b.a(view, R.id.series_trailer);
                                                    if (a25 != null) {
                                                        return new e1(progressLayout, a11, a13, floatingActionButton, a14, slayerImage, progressLayout, a16, a18, nestedScrollView, a20, a22, a24, i2.a(a25));
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

    public static e1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_series_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8283a;
    }
}
