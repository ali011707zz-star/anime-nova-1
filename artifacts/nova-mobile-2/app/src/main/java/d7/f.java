package d7;

import android.R;
import android.content.Context;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;
import jc.l;
import x8.i;

/* compiled from: ChartUtil.kt */
/* loaded from: classes.dex */
public final class f extends z8.c {

    /* renamed from: a, reason: collision with root package name */
    public w8.a<?> f5715a;

    public final void g(Context context) {
        l.f(context, "context");
        w8.a<?> aVar = this.f5715a;
        w8.a<?> aVar2 = null;
        if (aVar == null) {
            l.v("chartBase");
            aVar = null;
        }
        aVar.getLegend().h(SupportExtentionKt.getColorFromAttr(context, R.attr.textColorPrimary));
        w8.a<?> aVar3 = this.f5715a;
        if (aVar3 == null) {
            l.v("chartBase");
            aVar3 = null;
        }
        aVar3.getLegend().g(false);
        w8.a<?> aVar4 = this.f5715a;
        if (aVar4 == null) {
            l.v("chartBase");
            aVar4 = null;
        }
        i axisLeft = aVar4.getAxisLeft();
        axisLeft.L(5, false);
        axisLeft.h0(15.0f);
        axisLeft.H(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        axisLeft.f0(false);
        axisLeft.e0(false);
        axisLeft.m();
        axisLeft.l();
        axisLeft.g0(i.b.OUTSIDE_CHART);
        axisLeft.h(SupportExtentionKt.getColorFromAttr(context, R.attr.textColorPrimary));
        axisLeft.O(this);
        w8.a<?> aVar5 = this.f5715a;
        if (aVar5 == null) {
            l.v("chartBase");
            aVar5 = null;
        }
        aVar5.getAxisRight().g(false);
        w8.a<?> aVar6 = this.f5715a;
        if (aVar6 == null) {
            l.v("chartBase");
        } else {
            aVar2 = aVar6;
        }
        aVar2.getAxisLeft().g(false);
    }

    public final f h(w8.a<?> aVar) {
        l.f(aVar, "chartBase");
        this.f5715a = aVar;
        return this;
    }
}
