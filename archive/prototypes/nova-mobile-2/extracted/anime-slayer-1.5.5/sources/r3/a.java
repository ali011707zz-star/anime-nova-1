package r3;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: Keyframe.java */
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final e3.d f12829a;

    /* renamed from: b, reason: collision with root package name */
    public final T f12830b;

    /* renamed from: c, reason: collision with root package name */
    public T f12831c;

    /* renamed from: d, reason: collision with root package name */
    public final Interpolator f12832d;

    /* renamed from: e, reason: collision with root package name */
    public final Interpolator f12833e;

    /* renamed from: f, reason: collision with root package name */
    public final Interpolator f12834f;

    /* renamed from: g, reason: collision with root package name */
    public final float f12835g;

    /* renamed from: h, reason: collision with root package name */
    public Float f12836h;

    /* renamed from: i, reason: collision with root package name */
    public float f12837i;

    /* renamed from: j, reason: collision with root package name */
    public float f12838j;

    /* renamed from: k, reason: collision with root package name */
    public int f12839k;

    /* renamed from: l, reason: collision with root package name */
    public int f12840l;

    /* renamed from: m, reason: collision with root package name */
    public float f12841m;

    /* renamed from: n, reason: collision with root package name */
    public float f12842n;

    /* renamed from: o, reason: collision with root package name */
    public PointF f12843o;

    /* renamed from: p, reason: collision with root package name */
    public PointF f12844p;

    public a(e3.d dVar, T t10, T t11, Interpolator interpolator, float f10, Float f11) {
        this.f12837i = -3987645.8f;
        this.f12838j = -3987645.8f;
        this.f12839k = 784923401;
        this.f12840l = 784923401;
        this.f12841m = Float.MIN_VALUE;
        this.f12842n = Float.MIN_VALUE;
        this.f12843o = null;
        this.f12844p = null;
        this.f12829a = dVar;
        this.f12830b = t10;
        this.f12831c = t11;
        this.f12832d = interpolator;
        this.f12833e = null;
        this.f12834f = null;
        this.f12835g = f10;
        this.f12836h = f11;
    }

    public boolean a(float f10) {
        return f10 >= e() && f10 < b();
    }

    public float b() {
        if (this.f12829a == null) {
            return 1.0f;
        }
        if (this.f12842n == Float.MIN_VALUE) {
            if (this.f12836h == null) {
                this.f12842n = 1.0f;
            } else {
                this.f12842n = e() + ((this.f12836h.floatValue() - this.f12835g) / this.f12829a.e());
            }
        }
        return this.f12842n;
    }

    public float c() {
        if (this.f12838j == -3987645.8f) {
            this.f12838j = ((Float) this.f12831c).floatValue();
        }
        return this.f12838j;
    }

    public int d() {
        if (this.f12840l == 784923401) {
            this.f12840l = ((Integer) this.f12831c).intValue();
        }
        return this.f12840l;
    }

    public float e() {
        e3.d dVar = this.f12829a;
        if (dVar == null) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (this.f12841m == Float.MIN_VALUE) {
            this.f12841m = (this.f12835g - dVar.p()) / this.f12829a.e();
        }
        return this.f12841m;
    }

    public float f() {
        if (this.f12837i == -3987645.8f) {
            this.f12837i = ((Float) this.f12830b).floatValue();
        }
        return this.f12837i;
    }

    public int g() {
        if (this.f12839k == 784923401) {
            this.f12839k = ((Integer) this.f12830b).intValue();
        }
        return this.f12839k;
    }

    public boolean h() {
        return this.f12832d == null && this.f12833e == null && this.f12834f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f12830b + ", endValue=" + this.f12831c + ", startFrame=" + this.f12835g + ", endFrame=" + this.f12836h + ", interpolator=" + this.f12832d + '}';
    }

    public a(e3.d dVar, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.f12837i = -3987645.8f;
        this.f12838j = -3987645.8f;
        this.f12839k = 784923401;
        this.f12840l = 784923401;
        this.f12841m = Float.MIN_VALUE;
        this.f12842n = Float.MIN_VALUE;
        this.f12843o = null;
        this.f12844p = null;
        this.f12829a = dVar;
        this.f12830b = t10;
        this.f12831c = t11;
        this.f12832d = null;
        this.f12833e = interpolator;
        this.f12834f = interpolator2;
        this.f12835g = f10;
        this.f12836h = f11;
    }

    public a(e3.d dVar, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.f12837i = -3987645.8f;
        this.f12838j = -3987645.8f;
        this.f12839k = 784923401;
        this.f12840l = 784923401;
        this.f12841m = Float.MIN_VALUE;
        this.f12842n = Float.MIN_VALUE;
        this.f12843o = null;
        this.f12844p = null;
        this.f12829a = dVar;
        this.f12830b = t10;
        this.f12831c = t11;
        this.f12832d = interpolator;
        this.f12833e = interpolator2;
        this.f12834f = interpolator3;
        this.f12835g = f10;
        this.f12836h = f11;
    }

    public a(T t10) {
        this.f12837i = -3987645.8f;
        this.f12838j = -3987645.8f;
        this.f12839k = 784923401;
        this.f12840l = 784923401;
        this.f12841m = Float.MIN_VALUE;
        this.f12842n = Float.MIN_VALUE;
        this.f12843o = null;
        this.f12844p = null;
        this.f12829a = null;
        this.f12830b = t10;
        this.f12831c = t10;
        this.f12832d = null;
        this.f12833e = null;
        this.f12834f = null;
        this.f12835g = Float.MIN_VALUE;
        this.f12836h = Float.valueOf(Float.MAX_VALUE);
    }
}
