package j3;

import android.graphics.PointF;

/* compiled from: CubicCurveData.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f8075a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f8076b;

    /* renamed from: c, reason: collision with root package name */
    public final PointF f8077c;

    public a() {
        this.f8075a = new PointF();
        this.f8076b = new PointF();
        this.f8077c = new PointF();
    }

    public PointF a() {
        return this.f8075a;
    }

    public PointF b() {
        return this.f8076b;
    }

    public PointF c() {
        return this.f8077c;
    }

    public void d(float f10, float f11) {
        this.f8075a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f8076b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f8077c.set(f10, f11);
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f8075a = pointF;
        this.f8076b = pointF2;
        this.f8077c = pointF3;
    }
}
