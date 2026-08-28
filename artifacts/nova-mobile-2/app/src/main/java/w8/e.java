package w8;

import a9.h;
import android.graphics.Canvas;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import f9.j;
import f9.q;
import x8.i;
import y8.n;

/* compiled from: RadarChart.java */
/* loaded from: classes.dex */
public class e extends d<n> {
    public float P;
    public float Q;
    public int R;
    public int S;
    public int T;
    public boolean U;
    public int V;
    public i W;

    /* renamed from: a0, reason: collision with root package name */
    public q f15411a0;

    /* renamed from: b0, reason: collision with root package name */
    public f9.n f15412b0;

    @Override // w8.d
    public int A(float f10) {
        float q10 = g9.i.q(f10 - getRotationAngle());
        float sliceAngle = getSliceAngle();
        int e02 = ((n) this.f15387g).l().e0();
        int i10 = 0;
        while (i10 < e02) {
            int i11 = i10 + 1;
            if ((i11 * sliceAngle) - (sliceAngle / 2.0f) > q10) {
                return i10;
            }
            i10 = i11;
        }
        return 0;
    }

    public float getFactor() {
        RectF o10 = this.f15405y.o();
        return Math.min(o10.width() / 2.0f, o10.height() / 2.0f) / this.W.I;
    }

    @Override // w8.d
    public float getRadius() {
        RectF o10 = this.f15405y.o();
        return Math.min(o10.width() / 2.0f, o10.height() / 2.0f);
    }

    @Override // w8.d
    public float getRequiredBaseOffset() {
        return (this.f15394n.f() && this.f15394n.D()) ? this.f15394n.L : g9.i.e(10.0f);
    }

    @Override // w8.d
    public float getRequiredLegendOffset() {
        return this.f15402v.d().getTextSize() * 4.0f;
    }

    public int getSkipWebLineCount() {
        return this.V;
    }

    public float getSliceAngle() {
        return 360.0f / ((n) this.f15387g).l().e0();
    }

    public int getWebAlpha() {
        return this.T;
    }

    public int getWebColor() {
        return this.R;
    }

    public int getWebColorInner() {
        return this.S;
    }

    public float getWebLineWidth() {
        return this.P;
    }

    public float getWebLineWidthInner() {
        return this.Q;
    }

    public i getYAxis() {
        return this.W;
    }

    @Override // w8.d, w8.b
    public float getYChartMax() {
        return this.W.G;
    }

    @Override // w8.d, w8.b
    public float getYChartMin() {
        return this.W.H;
    }

    public float getYRange() {
        return this.W.I;
    }

    @Override // w8.d, w8.b
    public void n() {
        super.n();
        this.W = new i(i.a.LEFT);
        this.P = g9.i.e(1.5f);
        this.Q = g9.i.e(0.75f);
        this.f15403w = new j(this, this.f15406z, this.f15405y);
        this.f15411a0 = new q(this.f15405y, this.W, this);
        this.f15412b0 = new f9.n(this.f15405y, this.f15394n, this);
        this.f15404x = new h(this);
    }

    @Override // w8.b, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f15387g == 0) {
            return;
        }
        if (this.f15394n.f()) {
            f9.n nVar = this.f15412b0;
            x8.h hVar = this.f15394n;
            nVar.a(hVar.H, hVar.G, false);
        }
        this.f15412b0.i(canvas);
        if (this.U) {
            this.f15403w.c(canvas);
        }
        if (this.W.f() && this.W.E()) {
            this.f15411a0.l(canvas);
        }
        this.f15403w.b(canvas);
        if (w()) {
            this.f15403w.d(canvas, this.F);
        }
        if (this.W.f() && !this.W.E()) {
            this.f15411a0.l(canvas);
        }
        this.f15411a0.i(canvas);
        this.f15403w.e(canvas);
        this.f15402v.e(canvas);
        h(canvas);
        i(canvas);
    }

    @Override // w8.d, w8.b
    public void s() {
        if (this.f15387g == 0) {
            return;
        }
        x();
        q qVar = this.f15411a0;
        i iVar = this.W;
        qVar.a(iVar.H, iVar.G, iVar.c0());
        f9.n nVar = this.f15412b0;
        x8.h hVar = this.f15394n;
        nVar.a(hVar.H, hVar.G, false);
        x8.e eVar = this.f15397q;
        if (eVar != null && !eVar.G()) {
            this.f15402v.a(this.f15387g);
        }
        f();
    }

    public void setDrawWeb(boolean z10) {
        this.U = z10;
    }

    public void setSkipWebLineCount(int i10) {
        this.V = Math.max(0, i10);
    }

    public void setWebAlpha(int i10) {
        this.T = i10;
    }

    public void setWebColor(int i10) {
        this.R = i10;
    }

    public void setWebColorInner(int i10) {
        this.S = i10;
    }

    public void setWebLineWidth(float f10) {
        this.P = g9.i.e(f10);
    }

    public void setWebLineWidthInner(float f10) {
        this.Q = g9.i.e(f10);
    }

    @Override // w8.d
    public void x() {
        super.x();
        i iVar = this.W;
        n nVar = (n) this.f15387g;
        i.a aVar = i.a.LEFT;
        iVar.k(nVar.r(aVar), ((n) this.f15387g).p(aVar));
        this.f15394n.k(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, ((n) this.f15387g).l().e0());
    }
}
