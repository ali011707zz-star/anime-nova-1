package g9;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: ViewPortHandler.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f7090a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public RectF f7091b = new RectF();

    /* renamed from: c, reason: collision with root package name */
    public float f7092c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: d, reason: collision with root package name */
    public float f7093d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: e, reason: collision with root package name */
    public float f7094e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f7095f = Float.MAX_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public float f7096g = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f7097h = Float.MAX_VALUE;

    /* renamed from: i, reason: collision with root package name */
    public float f7098i = 1.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f7099j = 1.0f;

    /* renamed from: k, reason: collision with root package name */
    public float f7100k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: l, reason: collision with root package name */
    public float f7101l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: m, reason: collision with root package name */
    public float f7102m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: n, reason: collision with root package name */
    public float f7103n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: o, reason: collision with root package name */
    public float[] f7104o = new float[9];

    /* renamed from: p, reason: collision with root package name */
    public Matrix f7105p = new Matrix();

    /* renamed from: q, reason: collision with root package name */
    public final float[] f7106q = new float[9];

    public boolean A(float f10) {
        return this.f7091b.right >= (((float) ((int) (f10 * 100.0f))) / 100.0f) - 1.0f;
    }

    public boolean B(float f10) {
        return this.f7091b.top <= f10;
    }

    public boolean C(float f10) {
        return z(f10) && A(f10);
    }

    public boolean D(float f10) {
        return B(f10) && y(f10);
    }

    public void E(Matrix matrix, RectF rectF) {
        float f10;
        matrix.getValues(this.f7106q);
        float[] fArr = this.f7106q;
        float f11 = fArr[2];
        float f12 = fArr[0];
        float f13 = fArr[5];
        float f14 = fArr[4];
        this.f7098i = Math.min(Math.max(this.f7096g, f12), this.f7097h);
        this.f7099j = Math.min(Math.max(this.f7094e, f14), this.f7095f);
        float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (rectF != null) {
            f15 = rectF.width();
            f10 = rectF.height();
        } else {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f7100k = Math.min(Math.max(f11, ((-f15) * (this.f7098i - 1.0f)) - this.f7102m), this.f7102m);
        float max = Math.max(Math.min(f13, (f10 * (this.f7099j - 1.0f)) + this.f7103n), -this.f7103n);
        this.f7101l = max;
        float[] fArr2 = this.f7106q;
        fArr2[2] = this.f7100k;
        fArr2[0] = this.f7098i;
        fArr2[5] = max;
        fArr2[4] = this.f7099j;
        matrix.setValues(fArr2);
    }

    public float F() {
        return this.f7093d - this.f7091b.bottom;
    }

    public float G() {
        return this.f7091b.left;
    }

    public float H() {
        return this.f7092c - this.f7091b.right;
    }

    public float I() {
        return this.f7091b.top;
    }

    public Matrix J(Matrix matrix, View view, boolean z10) {
        this.f7090a.set(matrix);
        E(this.f7090a, this.f7091b);
        if (z10) {
            view.invalidate();
        }
        matrix.set(this.f7090a);
        return matrix;
    }

    public void K(float f10, float f11, float f12, float f13) {
        this.f7091b.set(f10, f11, this.f7092c - f12, this.f7093d - f13);
    }

    public void L(float f10, float f11) {
        float G = G();
        float I = I();
        float H = H();
        float F = F();
        this.f7093d = f11;
        this.f7092c = f10;
        K(G, I, H, F);
    }

    public void M(float f10) {
        this.f7102m = i.e(f10);
    }

    public void N(float f10) {
        this.f7103n = i.e(f10);
    }

    public void O(float f10) {
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = Float.MAX_VALUE;
        }
        this.f7097h = f10;
        E(this.f7090a, this.f7091b);
    }

    public void P(float f10) {
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = Float.MAX_VALUE;
        }
        this.f7095f = f10;
        E(this.f7090a, this.f7091b);
    }

    public void Q(float f10) {
        if (f10 < 1.0f) {
            f10 = 1.0f;
        }
        this.f7096g = f10;
        E(this.f7090a, this.f7091b);
    }

    public void R(float f10) {
        if (f10 < 1.0f) {
            f10 = 1.0f;
        }
        this.f7094e = f10;
        E(this.f7090a, this.f7091b);
    }

    public void S(float f10, float f11, float f12, float f13, Matrix matrix) {
        matrix.reset();
        matrix.set(this.f7090a);
        matrix.postScale(f10, f11, f12, f13);
    }

    public boolean a() {
        return this.f7098i < this.f7097h;
    }

    public boolean b() {
        return this.f7099j < this.f7095f;
    }

    public boolean c() {
        return this.f7098i > this.f7096g;
    }

    public boolean d() {
        return this.f7099j > this.f7094e;
    }

    public void e(float[] fArr, View view) {
        Matrix matrix = this.f7105p;
        matrix.reset();
        matrix.set(this.f7090a);
        matrix.postTranslate(-(fArr[0] - G()), -(fArr[1] - I()));
        J(matrix, view, true);
    }

    public float f() {
        return this.f7091b.bottom;
    }

    public float g() {
        return this.f7091b.height();
    }

    public float h() {
        return this.f7091b.left;
    }

    public float i() {
        return this.f7091b.right;
    }

    public float j() {
        return this.f7091b.top;
    }

    public float k() {
        return this.f7091b.width();
    }

    public float l() {
        return this.f7093d;
    }

    public float m() {
        return this.f7092c;
    }

    public e n() {
        return e.c(this.f7091b.centerX(), this.f7091b.centerY());
    }

    public RectF o() {
        return this.f7091b;
    }

    public Matrix p() {
        return this.f7090a;
    }

    public float q() {
        return this.f7098i;
    }

    public float r() {
        return this.f7099j;
    }

    public float s() {
        return Math.min(this.f7091b.width(), this.f7091b.height());
    }

    public boolean t() {
        return this.f7102m <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && this.f7103n <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public boolean u() {
        return v() && w();
    }

    public boolean v() {
        float f10 = this.f7098i;
        float f11 = this.f7096g;
        return f10 <= f11 && f11 <= 1.0f;
    }

    public boolean w() {
        float f10 = this.f7099j;
        float f11 = this.f7094e;
        return f10 <= f11 && f11 <= 1.0f;
    }

    public boolean x(float f10, float f11) {
        return C(f10) && D(f11);
    }

    public boolean y(float f10) {
        return this.f7091b.bottom >= ((float) ((int) (f10 * 100.0f))) / 100.0f;
    }

    public boolean z(float f10) {
        return this.f7091b.left <= f10 + 1.0f;
    }
}
