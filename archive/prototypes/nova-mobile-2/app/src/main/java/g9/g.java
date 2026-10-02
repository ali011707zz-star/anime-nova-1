package g9;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: Transformer.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: c, reason: collision with root package name */
    public j f7068c;

    /* renamed from: a, reason: collision with root package name */
    public Matrix f7066a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public Matrix f7067b = new Matrix();

    /* renamed from: d, reason: collision with root package name */
    public float[] f7069d = new float[1];

    /* renamed from: e, reason: collision with root package name */
    public float[] f7070e = new float[1];

    /* renamed from: f, reason: collision with root package name */
    public float[] f7071f = new float[1];

    /* renamed from: g, reason: collision with root package name */
    public float[] f7072g = new float[1];

    /* renamed from: h, reason: collision with root package name */
    public Matrix f7073h = new Matrix();

    /* renamed from: i, reason: collision with root package name */
    public float[] f7074i = new float[2];

    /* renamed from: j, reason: collision with root package name */
    public Matrix f7075j = new Matrix();

    /* renamed from: k, reason: collision with root package name */
    public Matrix f7076k = new Matrix();

    public g(j jVar) {
        this.f7068c = jVar;
    }

    public d a(float f10, float f11) {
        float[] fArr = this.f7074i;
        fArr[0] = f10;
        fArr[1] = f11;
        e(fArr);
        float[] fArr2 = this.f7074i;
        return d.b(fArr2[0], fArr2[1]);
    }

    public d b(float f10, float f11) {
        d b10 = d.b(ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45);
        c(f10, f11, b10);
        return b10;
    }

    public void c(float f10, float f11, d dVar) {
        float[] fArr = this.f7074i;
        fArr[0] = f10;
        fArr[1] = f11;
        d(fArr);
        float[] fArr2 = this.f7074i;
        dVar.f7051c = fArr2[0];
        dVar.f7052d = fArr2[1];
    }

    public void d(float[] fArr) {
        Matrix matrix = this.f7073h;
        matrix.reset();
        this.f7067b.invert(matrix);
        matrix.mapPoints(fArr);
        this.f7068c.p().invert(matrix);
        matrix.mapPoints(fArr);
        this.f7066a.invert(matrix);
        matrix.mapPoints(fArr);
    }

    public void e(float[] fArr) {
        this.f7066a.mapPoints(fArr);
        this.f7068c.p().mapPoints(fArr);
        this.f7067b.mapPoints(fArr);
    }

    public void f(boolean z10) {
        this.f7067b.reset();
        if (!z10) {
            this.f7067b.postTranslate(this.f7068c.G(), this.f7068c.l() - this.f7068c.F());
        } else {
            this.f7067b.setTranslate(this.f7068c.G(), -this.f7068c.I());
            this.f7067b.postScale(1.0f, -1.0f);
        }
    }

    public void g(float f10, float f11, float f12, float f13) {
        float k10 = this.f7068c.k() / f11;
        float g10 = this.f7068c.g() / f12;
        if (Float.isInfinite(k10)) {
            k10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (Float.isInfinite(g10)) {
            g10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f7066a.reset();
        this.f7066a.postTranslate(-f10, -f13);
        this.f7066a.postScale(k10, -g10);
    }

    public void h(RectF rectF, float f10) {
        rectF.top *= f10;
        rectF.bottom *= f10;
        this.f7066a.mapRect(rectF);
        this.f7068c.p().mapRect(rectF);
        this.f7067b.mapRect(rectF);
    }

    public void i(RectF rectF, float f10) {
        rectF.left *= f10;
        rectF.right *= f10;
        this.f7066a.mapRect(rectF);
        this.f7068c.p().mapRect(rectF);
        this.f7067b.mapRect(rectF);
    }

    public void j(RectF rectF) {
        this.f7066a.mapRect(rectF);
        this.f7068c.p().mapRect(rectF);
        this.f7067b.mapRect(rectF);
    }
}
