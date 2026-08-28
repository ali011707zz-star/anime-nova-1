package d7;

import android.R;
import android.content.Context;
import com.github.mikephil.charting.charts.BarChart;
import io.wax911.support.SupportExtentionKt;
import java.util.List;
import jc.l;
import x8.h;

/* compiled from: ChartUtil.kt */
/* loaded from: classes.dex */
public final class e extends z8.c {

    /* renamed from: a, reason: collision with root package name */
    public List<Integer> f5713a;

    /* renamed from: b, reason: collision with root package name */
    public BarChart f5714b;

    @Override // z8.c
    public String d(float f10) {
        return String.valueOf((int) f10);
    }

    public final void g(Context context) {
        l.f(context, "context");
        BarChart barChart = this.f5714b;
        List<Integer> list = null;
        if (barChart == null) {
            l.v("chartBase");
            barChart = null;
        }
        x8.h xAxis = barChart.getXAxis();
        xAxis.T(h.a.BOTTOM);
        xAxis.I(false);
        xAxis.m();
        xAxis.l();
        xAxis.S(true);
        xAxis.J(1.0f);
        List<Integer> list2 = this.f5713a;
        if (list2 == null) {
            l.v("dataModel");
            list2 = null;
        }
        if (list2.size() <= 10) {
            List<Integer> list3 = this.f5713a;
            if (list3 == null) {
                l.v("dataModel");
            } else {
                list = list3;
            }
            xAxis.K(list.size());
        }
        xAxis.h(SupportExtentionKt.getColorFromAttr(context, R.attr.textColorPrimary));
        xAxis.i(12.0f);
        xAxis.O(this);
    }

    public final e h(BarChart barChart) {
        l.f(barChart, "chartBase");
        this.f5714b = barChart;
        return this;
    }

    public final e i(List<Integer> list) {
        l.f(list, "dataModel");
        this.f5713a = list;
        return this;
    }
}
