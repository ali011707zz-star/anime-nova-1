package x8;

import android.graphics.Paint;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: YAxis.java */
/* loaded from: classes.dex */
public class i extends x8.a {
    public a U;
    public boolean J = true;
    public boolean K = true;
    public boolean L = false;
    public boolean M = false;
    public boolean N = false;
    public boolean O = false;
    public int P = -7829368;
    public float Q = 1.0f;
    public float R = 10.0f;
    public float S = 10.0f;
    public b T = b.OUTSIDE_CHART;
    public float V = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public float W = Float.POSITIVE_INFINITY;

    /* compiled from: YAxis.java */
    /* loaded from: classes.dex */
    public enum a {
        LEFT,
        RIGHT
    }

    /* compiled from: YAxis.java */
    /* loaded from: classes.dex */
    public enum b {
        OUTSIDE_CHART,
        INSIDE_CHART
    }

    public i(a aVar) {
        this.U = aVar;
        this.f16156c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public a P() {
        return this.U;
    }

    public b Q() {
        return this.T;
    }

    public float R() {
        return this.W;
    }

    public float S() {
        return this.V;
    }

    public float T(Paint paint) {
        paint.setTextSize(this.f16158e);
        return g9.i.a(paint, x()) + (e() * 2.0f);
    }

    public float U(Paint paint) {
        paint.setTextSize(this.f16158e);
        float d10 = g9.i.d(paint, x()) + (d() * 2.0f);
        float S = S();
        float R = R();
        if (S > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            S = g9.i.e(S);
        }
        if (R > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && R != Float.POSITIVE_INFINITY) {
            R = g9.i.e(R);
        }
        if (R <= ShadowDrawableWrapper.COS_45) {
            R = d10;
        }
        return Math.max(S, Math.min(d10, R));
    }

    public float V() {
        return this.S;
    }

    public float W() {
        return this.R;
    }

    public int X() {
        return this.P;
    }

    public float Y() {
        return this.Q;
    }

    public boolean Z() {
        return this.J;
    }

    public boolean a0() {
        return this.K;
    }

    public boolean b0() {
        return this.M;
    }

    public boolean c0() {
        return this.L;
    }

    public boolean d0() {
        return f() && D() && Q() == b.OUTSIDE_CHART;
    }

    public void e0(boolean z10) {
        this.K = z10;
    }

    public void f0(boolean z10) {
        this.M = z10;
    }

    public void g0(b bVar) {
        this.T = bVar;
    }

    public void h0(float f10) {
        this.R = f10;
    }

    @Override // x8.a
    public void k(float f10, float f11) {
        if (Math.abs(f11 - f10) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f11 += 1.0f;
            f10 -= 1.0f;
        }
        float abs = Math.abs(f11 - f10);
        this.H = this.E ? this.H : f10 - ((abs / 100.0f) * V());
        float W = this.F ? this.G : f11 + ((abs / 100.0f) * W());
        this.G = W;
        this.I = Math.abs(this.H - W);
    }
}
