package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.cardview.widget.CardView;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.charts.PieChart;

/* compiled from: AnimeStaticsFragmentBinding.java */
/* loaded from: classes.dex */
public final class u implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8727a;

    /* renamed from: b, reason: collision with root package name */
    public final NestedScrollView f8728b;

    /* renamed from: c, reason: collision with root package name */
    public final ErrorView f8729c;

    /* renamed from: d, reason: collision with root package name */
    public final ProgressBar f8730d;

    /* renamed from: e, reason: collision with root package name */
    public final CardView f8731e;

    /* renamed from: f, reason: collision with root package name */
    public final BarChart f8732f;

    /* renamed from: g, reason: collision with root package name */
    public final CardView f8733g;

    /* renamed from: h, reason: collision with root package name */
    public final PieChart f8734h;

    public u(LinearLayout linearLayout, NestedScrollView nestedScrollView, ErrorView errorView, ProgressBar progressBar, CardView cardView, BarChart barChart, CardView cardView2, PieChart pieChart) {
        this.f8727a = linearLayout;
        this.f8728b = nestedScrollView;
        this.f8729c = errorView;
        this.f8730d = progressBar;
        this.f8731e = cardView;
        this.f8732f = barChart;
        this.f8733g = cardView2;
        this.f8734h = pieChart;
    }

    public static u a(View view) {
        int i10 = R.id.content_group;
        NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.content_group);
        if (nestedScrollView != null) {
            i10 = R.id.error_view;
            ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
            if (errorView != null) {
                i10 = R.id.progress;
                ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                if (progressBar != null) {
                    i10 = R.id.rating_card;
                    CardView cardView = (CardView) a2.b.a(view, R.id.rating_card);
                    if (cardView != null) {
                        i10 = R.id.rating_chart;
                        BarChart barChart = (BarChart) a2.b.a(view, R.id.rating_chart);
                        if (barChart != null) {
                            i10 = R.id.status_card;
                            CardView cardView2 = (CardView) a2.b.a(view, R.id.status_card);
                            if (cardView2 != null) {
                                i10 = R.id.userStatsBarChart;
                                PieChart pieChart = (PieChart) a2.b.a(view, R.id.userStatsBarChart);
                                if (pieChart != null) {
                                    return new u((LinearLayout) view, nestedScrollView, errorView, progressBar, cardView, barChart, cardView2, pieChart);
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
