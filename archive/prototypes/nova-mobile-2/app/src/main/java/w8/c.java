package w8;

import android.graphics.RectF;
import com.github.mikephil.charting.charts.BarChart;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import f9.m;
import f9.p;
import g9.g;
import x8.h;
import x8.i;

/* compiled from: HorizontalBarChart.java */
/* loaded from: classes.dex */
public class c extends BarChart {
    public RectF A0;

    @Override // w8.a
    public void Q() {
        g gVar = this.f15371k0;
        i iVar = this.f15367g0;
        float f10 = iVar.H;
        float f11 = iVar.I;
        h hVar = this.f15394n;
        gVar.g(f10, f11, hVar.I, hVar.H);
        g gVar2 = this.f15370j0;
        i iVar2 = this.f15366f0;
        float f12 = iVar2.H;
        float f13 = iVar2.I;
        h hVar2 = this.f15394n;
        gVar2.g(f12, f13, hVar2.I, hVar2.H);
    }

    @Override // w8.a, w8.b
    public void f() {
        z(this.A0);
        RectF rectF = this.A0;
        float f10 = rectF.left + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f11 = rectF.top + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f12 = rectF.right + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f13 = rectF.bottom + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (this.f15366f0.d0()) {
            f11 += this.f15366f0.T(this.f15368h0.c());
        }
        if (this.f15367g0.d0()) {
            f13 += this.f15367g0.T(this.f15369i0.c());
        }
        h hVar = this.f15394n;
        float f14 = hVar.L;
        if (hVar.f()) {
            if (this.f15394n.Q() == h.a.BOTTOM) {
                f10 += f14;
            } else {
                if (this.f15394n.Q() != h.a.TOP) {
                    if (this.f15394n.Q() == h.a.BOTH_SIDED) {
                        f10 += f14;
                    }
                }
                f12 += f14;
            }
        }
        float extraTopOffset = f11 + getExtraTopOffset();
        float extraRightOffset = f12 + getExtraRightOffset();
        float extraBottomOffset = f13 + getExtraBottomOffset();
        float extraLeftOffset = f10 + getExtraLeftOffset();
        float e10 = g9.i.e(this.f15363c0);
        this.f15405y.K(Math.max(e10, extraLeftOffset), Math.max(e10, extraTopOffset), Math.max(e10, extraRightOffset), Math.max(e10, extraBottomOffset));
        if (this.f15386f) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("offsetLeft: ");
            sb2.append(extraLeftOffset);
            sb2.append(", offsetTop: ");
            sb2.append(extraTopOffset);
            sb2.append(", offsetRight: ");
            sb2.append(extraRightOffset);
            sb2.append(", offsetBottom: ");
            sb2.append(extraBottomOffset);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Content: ");
            sb3.append(this.f15405y.o().toString());
        }
        P();
        Q();
    }

    @Override // w8.a
    public float getHighestVisibleX() {
        b(i.a.LEFT).c(this.f15405y.h(), this.f15405y.j(), this.f15381u0);
        return (float) Math.min(this.f15394n.G, this.f15381u0.f7052d);
    }

    @Override // w8.a
    public float getLowestVisibleX() {
        b(i.a.LEFT).c(this.f15405y.h(), this.f15405y.f(), this.f15380t0);
        return (float) Math.max(this.f15394n.H, this.f15380t0.f7052d);
    }

    @Override // com.github.mikephil.charting.charts.BarChart, w8.b
    public a9.c k(float f10, float f11) {
        if (this.f15387g == 0) {
            return null;
        }
        return getHighlighter().a(f11, f10);
    }

    @Override // w8.b
    public float[] l(a9.c cVar) {
        return new float[]{cVar.e(), cVar.d()};
    }

    @Override // com.github.mikephil.charting.charts.BarChart, w8.a, w8.b
    public void n() {
        this.f15405y = new g9.c();
        super.n();
        this.f15370j0 = new g9.h(this.f15405y);
        this.f15371k0 = new g9.h(this.f15405y);
        this.f15403w = new f9.e(this, this.f15406z, this.f15405y);
        setHighlighter(new a9.d(this));
        this.f15368h0 = new p(this.f15405y, this.f15366f0, this.f15370j0);
        this.f15369i0 = new p(this.f15405y, this.f15367g0, this.f15371k0);
        this.f15372l0 = new m(this.f15405y, this.f15394n, this.f15370j0, this);
    }

    @Override // w8.a
    public void setVisibleXRangeMaximum(float f10) {
        this.f15405y.R(this.f15394n.I / f10);
    }

    @Override // w8.a
    public void setVisibleXRangeMinimum(float f10) {
        this.f15405y.P(this.f15394n.I / f10);
    }
}
