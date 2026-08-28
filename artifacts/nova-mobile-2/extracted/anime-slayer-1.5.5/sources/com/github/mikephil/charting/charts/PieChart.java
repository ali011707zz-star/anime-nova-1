package com.github.mikephil.charting.charts;

import a9.c;
import a9.f;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import c9.g;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g9.e;
import g9.i;
import java.util.List;
import w8.d;
import x8.h;
import y8.k;

/* loaded from: classes.dex */
public class PieChart extends d<k> {
    public RectF P;
    public boolean Q;
    public float[] R;
    public float[] S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;

    /* renamed from: a0, reason: collision with root package name */
    public CharSequence f4656a0;

    /* renamed from: b0, reason: collision with root package name */
    public e f4657b0;

    /* renamed from: c0, reason: collision with root package name */
    public float f4658c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f4659d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4660e0;

    /* renamed from: f0, reason: collision with root package name */
    public float f4661f0;

    /* renamed from: g0, reason: collision with root package name */
    public float f4662g0;

    /* renamed from: h0, reason: collision with root package name */
    public float f4663h0;

    public PieChart(Context context) {
        super(context);
        this.P = new RectF();
        this.Q = true;
        this.R = new float[1];
        this.S = new float[1];
        this.T = true;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f4656a0 = "";
        this.f4657b0 = e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f4658c0 = 50.0f;
        this.f4659d0 = 55.0f;
        this.f4660e0 = true;
        this.f4661f0 = 100.0f;
        this.f4662g0 = 360.0f;
        this.f4663h0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // w8.d
    public int A(float f10) {
        float q10 = i.q(f10 - getRotationAngle());
        int i10 = 0;
        while (true) {
            float[] fArr = this.S;
            if (i10 >= fArr.length) {
                return -1;
            }
            if (fArr[i10] > q10) {
                return i10;
            }
            i10++;
        }
    }

    public final float E(float f10, float f11) {
        return (f10 / f11) * this.f4662g0;
    }

    public final void F() {
        int h10 = ((k) this.f15387g).h();
        if (this.R.length != h10) {
            this.R = new float[h10];
        } else {
            for (int i10 = 0; i10 < h10; i10++) {
                this.R[i10] = 0.0f;
            }
        }
        if (this.S.length != h10) {
            this.S = new float[h10];
        } else {
            for (int i11 = 0; i11 < h10; i11++) {
                this.S[i11] = 0.0f;
            }
        }
        float w10 = ((k) this.f15387g).w();
        List<g> g10 = ((k) this.f15387g).g();
        float f10 = this.f4663h0;
        boolean z10 = f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && ((float) h10) * f10 <= this.f4662g0;
        float[] fArr = new float[h10];
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i12 = 0;
        for (int i13 = 0; i13 < ((k) this.f15387g).f(); i13++) {
            g gVar = g10.get(i13);
            for (int i14 = 0; i14 < gVar.e0(); i14++) {
                float E = E(Math.abs(gVar.l0(i14).e()), w10);
                if (z10) {
                    float f13 = this.f4663h0;
                    float f14 = E - f13;
                    if (f14 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        fArr[i12] = f13;
                        f11 += -f14;
                    } else {
                        fArr[i12] = E;
                        f12 += f14;
                    }
                }
                float[] fArr2 = this.R;
                fArr2[i12] = E;
                if (i12 == 0) {
                    this.S[i12] = fArr2[i12];
                } else {
                    float[] fArr3 = this.S;
                    fArr3[i12] = fArr3[i12 - 1] + fArr2[i12];
                }
                i12++;
            }
        }
        if (z10) {
            for (int i15 = 0; i15 < h10; i15++) {
                fArr[i15] = fArr[i15] - (((fArr[i15] - this.f4663h0) / f12) * f11);
                if (i15 == 0) {
                    this.S[0] = fArr[0];
                } else {
                    float[] fArr4 = this.S;
                    fArr4[i15] = fArr4[i15 - 1] + fArr[i15];
                }
            }
            this.R = fArr;
        }
    }

    public boolean G() {
        return this.f4660e0;
    }

    public boolean H() {
        return this.Q;
    }

    public boolean I() {
        return this.T;
    }

    public boolean J() {
        return this.W;
    }

    public boolean K() {
        return this.U;
    }

    public boolean L() {
        return this.V;
    }

    public boolean M(int i10) {
        if (!w()) {
            return false;
        }
        int i11 = 0;
        while (true) {
            c[] cVarArr = this.F;
            if (i11 >= cVarArr.length) {
                return false;
            }
            if (((int) cVarArr[i11].g()) == i10) {
                return true;
            }
            i11++;
        }
    }

    @Override // w8.d, w8.b
    public void f() {
        super.f();
        if (this.f15387g == 0) {
            return;
        }
        float diameter = getDiameter() / 2.0f;
        e centerOffsets = getCenterOffsets();
        float N = ((k) this.f15387g).u().N();
        RectF rectF = this.P;
        float f10 = centerOffsets.f7055c;
        float f11 = centerOffsets.f7056d;
        rectF.set((f10 - diameter) + N, (f11 - diameter) + N, (f10 + diameter) - N, (f11 + diameter) - N);
        e.f(centerOffsets);
    }

    public float[] getAbsoluteAngles() {
        return this.S;
    }

    public e getCenterCircleBox() {
        return e.c(this.P.centerX(), this.P.centerY());
    }

    public CharSequence getCenterText() {
        return this.f4656a0;
    }

    public e getCenterTextOffset() {
        e eVar = this.f4657b0;
        return e.c(eVar.f7055c, eVar.f7056d);
    }

    public float getCenterTextRadiusPercent() {
        return this.f4661f0;
    }

    public RectF getCircleBox() {
        return this.P;
    }

    public float[] getDrawAngles() {
        return this.R;
    }

    public float getHoleRadius() {
        return this.f4658c0;
    }

    public float getMaxAngle() {
        return this.f4662g0;
    }

    public float getMinAngleForSlices() {
        return this.f4663h0;
    }

    @Override // w8.d
    public float getRadius() {
        RectF rectF = this.P;
        return rectF == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : Math.min(rectF.width() / 2.0f, this.P.height() / 2.0f);
    }

    @Override // w8.d
    public float getRequiredBaseOffset() {
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // w8.d
    public float getRequiredLegendOffset() {
        return this.f15402v.d().getTextSize() * 2.0f;
    }

    public float getTransparentCircleRadius() {
        return this.f4659d0;
    }

    @Override // w8.b
    @Deprecated
    public h getXAxis() {
        throw new RuntimeException("PieChart has no XAxis");
    }

    @Override // w8.b
    public float[] l(c cVar) {
        e centerCircleBox = getCenterCircleBox();
        float radius = getRadius();
        float f10 = (radius / 10.0f) * 3.6f;
        if (I()) {
            f10 = (radius - ((radius / 100.0f) * getHoleRadius())) / 2.0f;
        }
        float f11 = radius - f10;
        float rotationAngle = getRotationAngle();
        float f12 = this.R[(int) cVar.g()] / 2.0f;
        double d10 = f11;
        double cos = Math.cos(Math.toRadians(((this.S[r11] + rotationAngle) - f12) * this.f15406z.b()));
        Double.isNaN(d10);
        double d11 = centerCircleBox.f7055c;
        Double.isNaN(d11);
        float f13 = (float) ((cos * d10) + d11);
        double sin = Math.sin(Math.toRadians(((rotationAngle + this.S[r11]) - f12) * this.f15406z.b()));
        Double.isNaN(d10);
        double d12 = d10 * sin;
        double d13 = centerCircleBox.f7056d;
        Double.isNaN(d13);
        e.f(centerCircleBox);
        return new float[]{f13, (float) (d12 + d13)};
    }

    @Override // w8.d, w8.b
    public void n() {
        super.n();
        this.f15403w = new f9.i(this, this.f15406z, this.f15405y);
        this.f15394n = null;
        this.f15404x = new f(this);
    }

    @Override // w8.b, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        f9.d dVar = this.f15403w;
        if (dVar != null && (dVar instanceof f9.i)) {
            ((f9.i) dVar).s();
        }
        super.onDetachedFromWindow();
    }

    @Override // w8.b, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f15387g == 0) {
            return;
        }
        this.f15403w.b(canvas);
        if (w()) {
            this.f15403w.d(canvas, this.F);
        }
        this.f15403w.c(canvas);
        this.f15403w.e(canvas);
        this.f15402v.e(canvas);
        h(canvas);
        i(canvas);
    }

    public void setCenterText(CharSequence charSequence) {
        if (charSequence == null) {
            this.f4656a0 = "";
        } else {
            this.f4656a0 = charSequence;
        }
    }

    public void setCenterTextColor(int i10) {
        ((f9.i) this.f15403w).n().setColor(i10);
    }

    public void setCenterTextRadiusPercent(float f10) {
        this.f4661f0 = f10;
    }

    public void setCenterTextSize(float f10) {
        ((f9.i) this.f15403w).n().setTextSize(i.e(f10));
    }

    public void setCenterTextSizePixels(float f10) {
        ((f9.i) this.f15403w).n().setTextSize(f10);
    }

    public void setCenterTextTypeface(Typeface typeface) {
        ((f9.i) this.f15403w).n().setTypeface(typeface);
    }

    public void setDrawCenterText(boolean z10) {
        this.f4660e0 = z10;
    }

    public void setDrawEntryLabels(boolean z10) {
        this.Q = z10;
    }

    public void setDrawHoleEnabled(boolean z10) {
        this.T = z10;
    }

    public void setDrawRoundedSlices(boolean z10) {
        this.W = z10;
    }

    @Deprecated
    public void setDrawSliceText(boolean z10) {
        this.Q = z10;
    }

    public void setDrawSlicesUnderHole(boolean z10) {
        this.U = z10;
    }

    public void setEntryLabelColor(int i10) {
        ((f9.i) this.f15403w).o().setColor(i10);
    }

    public void setEntryLabelTextSize(float f10) {
        ((f9.i) this.f15403w).o().setTextSize(i.e(f10));
    }

    public void setEntryLabelTypeface(Typeface typeface) {
        ((f9.i) this.f15403w).o().setTypeface(typeface);
    }

    public void setHoleColor(int i10) {
        ((f9.i) this.f15403w).p().setColor(i10);
    }

    public void setHoleRadius(float f10) {
        this.f4658c0 = f10;
    }

    public void setMaxAngle(float f10) {
        if (f10 > 360.0f) {
            f10 = 360.0f;
        }
        if (f10 < 90.0f) {
            f10 = 90.0f;
        }
        this.f4662g0 = f10;
    }

    public void setMinAngleForSlices(float f10) {
        float f11 = this.f4662g0;
        if (f10 > f11 / 2.0f) {
            f10 = f11 / 2.0f;
        } else if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f4663h0 = f10;
    }

    public void setTransparentCircleAlpha(int i10) {
        ((f9.i) this.f15403w).q().setAlpha(i10);
    }

    public void setTransparentCircleColor(int i10) {
        Paint q10 = ((f9.i) this.f15403w).q();
        int alpha = q10.getAlpha();
        q10.setColor(i10);
        q10.setAlpha(alpha);
    }

    public void setTransparentCircleRadius(float f10) {
        this.f4659d0 = f10;
    }

    public void setUsePercentValues(boolean z10) {
        this.V = z10;
    }

    @Override // w8.d
    public void x() {
        F();
    }

    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.P = new RectF();
        this.Q = true;
        this.R = new float[1];
        this.S = new float[1];
        this.T = true;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f4656a0 = "";
        this.f4657b0 = e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f4658c0 = 50.0f;
        this.f4659d0 = 55.0f;
        this.f4660e0 = true;
        this.f4661f0 = 100.0f;
        this.f4662g0 = 360.0f;
        this.f4663h0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }
}
