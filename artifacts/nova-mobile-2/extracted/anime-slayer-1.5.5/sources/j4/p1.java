package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.github.mikephil.charting.charts.PieChart;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: ProfileFragmentBinding.java */
/* loaded from: classes.dex */
public final class p1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8620a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8621b;

    /* renamed from: c, reason: collision with root package name */
    public final NestedScrollView f8622c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialButton f8623d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8624e;

    /* renamed from: f, reason: collision with root package name */
    public final RecyclerView f8625f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearLayout f8626g;

    /* renamed from: h, reason: collision with root package name */
    public final ProgressBar f8627h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f8628i;

    /* renamed from: j, reason: collision with root package name */
    public final MaterialToolbar f8629j;

    /* renamed from: k, reason: collision with root package name */
    public final SingleLineTextView f8630k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8631l;

    /* renamed from: m, reason: collision with root package name */
    public final AppCompatImageView f8632m;

    /* renamed from: n, reason: collision with root package name */
    public final ShapeableImageView f8633n;

    /* renamed from: o, reason: collision with root package name */
    public final PieChart f8634o;

    /* renamed from: p, reason: collision with root package name */
    public final SingleLineTextView f8635p;

    public p1(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, NestedScrollView nestedScrollView, MaterialButton materialButton, SingleLineTextView singleLineTextView, RecyclerView recyclerView, LinearLayout linearLayout2, ProgressBar progressBar, TextView textView, MaterialToolbar materialToolbar, SingleLineTextView singleLineTextView2, TextView textView2, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, PieChart pieChart, SingleLineTextView singleLineTextView3) {
        this.f8620a = coordinatorLayout;
        this.f8621b = linearLayout;
        this.f8622c = nestedScrollView;
        this.f8623d = materialButton;
        this.f8624e = singleLineTextView;
        this.f8625f = recyclerView;
        this.f8626g = linearLayout2;
        this.f8627h = progressBar;
        this.f8628i = textView;
        this.f8629j = materialToolbar;
        this.f8630k = singleLineTextView2;
        this.f8631l = textView2;
        this.f8632m = appCompatImageView;
        this.f8633n = shapeableImageView;
        this.f8634o = pieChart;
        this.f8635p = singleLineTextView3;
    }

    public static p1 a(View view) {
        int i10 = R.id.chart_container;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.chart_container);
        if (linearLayout != null) {
            i10 = R.id.content_group;
            NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.content_group);
            if (nestedScrollView != null) {
                i10 = R.id.edit_profile_button;
                MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.edit_profile_button);
                if (materialButton != null) {
                    i10 = R.id.full_name_label;
                    SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.full_name_label);
                    if (singleLineTextView != null) {
                        i10 = R.id.icon_items_container;
                        RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.icon_items_container);
                        if (recyclerView != null) {
                            i10 = R.id.profile_user_details;
                            LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.profile_user_details);
                            if (linearLayout2 != null) {
                                i10 = R.id.progress;
                                ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                                if (progressBar != null) {
                                    i10 = R.id.role;
                                    TextView textView = (TextView) a2.b.a(view, R.id.role);
                                    if (textView != null) {
                                        i10 = R.id.toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                        if (materialToolbar != null) {
                                            i10 = R.id.total_watched_episodes;
                                            SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.total_watched_episodes);
                                            if (singleLineTextView2 != null) {
                                                i10 = R.id.user_bio;
                                                TextView textView2 = (TextView) a2.b.a(view, R.id.user_bio);
                                                if (textView2 != null) {
                                                    i10 = R.id.user_cover;
                                                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.user_cover);
                                                    if (appCompatImageView != null) {
                                                        i10 = R.id.user_image;
                                                        ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.user_image);
                                                        if (shapeableImageView != null) {
                                                            i10 = R.id.userStatsBarChart;
                                                            PieChart pieChart = (PieChart) a2.b.a(view, R.id.userStatsBarChart);
                                                            if (pieChart != null) {
                                                                i10 = R.id.username_label;
                                                                SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.username_label);
                                                                if (singleLineTextView3 != null) {
                                                                    return new p1((CoordinatorLayout) view, linearLayout, nestedScrollView, materialButton, singleLineTextView, recyclerView, linearLayout2, progressBar, textView, materialToolbar, singleLineTextView2, textView2, appCompatImageView, shapeableImageView, pieChart, singleLineTextView3);
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
}
