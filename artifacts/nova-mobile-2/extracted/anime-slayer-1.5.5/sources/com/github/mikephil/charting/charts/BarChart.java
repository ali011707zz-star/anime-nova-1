package com.github.mikephil.charting.charts;

import a9.c;
import android.content.Context;
import android.util.AttributeSet;
import f9.b;
import w8.a;
import x8.i;

/* loaded from: classes.dex */
public class BarChart extends a<y8.a> implements b9.a {

    /* renamed from: w0, reason: collision with root package name */
    public boolean f4652w0;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f4653x0;

    /* renamed from: y0, reason: collision with root package name */
    public boolean f4654y0;

    /* renamed from: z0, reason: collision with root package name */
    public boolean f4655z0;

    public BarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4652w0 = false;
        this.f4653x0 = true;
        this.f4654y0 = false;
        this.f4655z0 = false;
    }

    @Override // b9.a
    public boolean c() {
        return this.f4654y0;
    }

    @Override // b9.a
    public boolean d() {
        return this.f4653x0;
    }

    @Override // b9.a
    public boolean e() {
        return this.f4652w0;
    }

    @Override // b9.a
    public y8.a getBarData() {
        return (y8.a) this.f15387g;
    }

    @Override // w8.b
    public c k(float f10, float f11) {
        if (this.f15387g == 0) {
            return null;
        }
        c a10 = getHighlighter().a(f10, f11);
        return (a10 == null || !e()) ? a10 : new c(a10.g(), a10.i(), a10.h(), a10.j(), a10.c(), -1, a10.b());
    }

    @Override // w8.a, w8.b
    public void n() {
        super.n();
        this.f15403w = new b(this, this.f15406z, this.f15405y);
        setHighlighter(new a9.a(this));
        getXAxis().N(0.5f);
        getXAxis().M(0.5f);
    }

    public void setDrawBarShadow(boolean z10) {
        this.f4654y0 = z10;
    }

    public void setDrawValueAboveBar(boolean z10) {
        this.f4653x0 = z10;
    }

    public void setFitBars(boolean z10) {
        this.f4655z0 = z10;
    }

    public void setHighlightFullBarEnabled(boolean z10) {
        this.f4652w0 = z10;
    }

    @Override // w8.a
    public void y() {
        if (this.f4655z0) {
            this.f15394n.k(((y8.a) this.f15387g).n() - (((y8.a) this.f15387g).u() / 2.0f), ((y8.a) this.f15387g).m() + (((y8.a) this.f15387g).u() / 2.0f));
        } else {
            this.f15394n.k(((y8.a) this.f15387g).n(), ((y8.a) this.f15387g).m());
        }
        i iVar = this.f15366f0;
        y8.a aVar = (y8.a) this.f15387g;
        i.a aVar2 = i.a.LEFT;
        iVar.k(aVar.r(aVar2), ((y8.a) this.f15387g).p(aVar2));
        i iVar2 = this.f15367g0;
        y8.a aVar3 = (y8.a) this.f15387g;
        i.a aVar4 = i.a.RIGHT;
        iVar2.k(aVar3.r(aVar4), ((y8.a) this.f15387g).p(aVar4));
    }
}
