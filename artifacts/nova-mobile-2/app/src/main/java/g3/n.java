package g3;

import android.graphics.Path;
import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import h3.a;
import java.util.List;
import l3.j;
import l3.r;

/* compiled from: PolystarContent.java */
/* loaded from: classes.dex */
public class n implements m, a.b, k {

    /* renamed from: b, reason: collision with root package name */
    public final String f6854b;

    /* renamed from: c, reason: collision with root package name */
    public final e3.f f6855c;

    /* renamed from: d, reason: collision with root package name */
    public final j.a f6856d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6857e;

    /* renamed from: f, reason: collision with root package name */
    public final h3.a<?, Float> f6858f;

    /* renamed from: g, reason: collision with root package name */
    public final h3.a<?, PointF> f6859g;

    /* renamed from: h, reason: collision with root package name */
    public final h3.a<?, Float> f6860h;

    /* renamed from: i, reason: collision with root package name */
    public final h3.a<?, Float> f6861i;

    /* renamed from: j, reason: collision with root package name */
    public final h3.a<?, Float> f6862j;

    /* renamed from: k, reason: collision with root package name */
    public final h3.a<?, Float> f6863k;

    /* renamed from: l, reason: collision with root package name */
    public final h3.a<?, Float> f6864l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6866n;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6853a = new Path();

    /* renamed from: m, reason: collision with root package name */
    public b f6865m = new b();

    /* compiled from: PolystarContent.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6867a;

        static {
            int[] iArr = new int[j.a.values().length];
            f6867a = iArr;
            try {
                iArr[j.a.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6867a[j.a.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(e3.f fVar, m3.a aVar, l3.j jVar) {
        this.f6855c = fVar;
        this.f6854b = jVar.d();
        j.a j10 = jVar.j();
        this.f6856d = j10;
        this.f6857e = jVar.k();
        h3.a<Float, Float> a10 = jVar.g().a();
        this.f6858f = a10;
        h3.a<PointF, PointF> a11 = jVar.h().a();
        this.f6859g = a11;
        h3.a<Float, Float> a12 = jVar.i().a();
        this.f6860h = a12;
        h3.a<Float, Float> a13 = jVar.e().a();
        this.f6862j = a13;
        h3.a<Float, Float> a14 = jVar.f().a();
        this.f6864l = a14;
        j.a aVar2 = j.a.STAR;
        if (j10 == aVar2) {
            this.f6861i = jVar.b().a();
            this.f6863k = jVar.c().a();
        } else {
            this.f6861i = null;
            this.f6863k = null;
        }
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        aVar.i(a13);
        aVar.i(a14);
        if (j10 == aVar2) {
            aVar.i(this.f6861i);
            aVar.i(this.f6863k);
        }
        a10.a(this);
        a11.a(this);
        a12.a(this);
        a13.a(this);
        a14.a(this);
        if (j10 == aVar2) {
            this.f6861i.a(this);
            this.f6863k.a(this);
        }
    }

    @Override // h3.a.b
    public void b() {
        i();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.i() == r.a.SIMULTANEOUSLY) {
                    this.f6865m.a(sVar);
                    sVar.d(this);
                }
            }
        }
    }

    public final void d() {
        double d10;
        double d11;
        double d12;
        int i10;
        int floor = (int) Math.floor(this.f6858f.h().floatValue());
        double radians = Math.toRadians((this.f6860h == null ? ShadowDrawableWrapper.COS_45 : r2.h().floatValue()) - 90.0d);
        double d13 = floor;
        Double.isNaN(d13);
        float floatValue = this.f6864l.h().floatValue() / 100.0f;
        float floatValue2 = this.f6862j.h().floatValue();
        double d14 = floatValue2;
        double cos = Math.cos(radians);
        Double.isNaN(d14);
        float f10 = (float) (cos * d14);
        double sin = Math.sin(radians);
        Double.isNaN(d14);
        float f11 = (float) (sin * d14);
        this.f6853a.moveTo(f10, f11);
        double d15 = (float) (6.283185307179586d / d13);
        Double.isNaN(d15);
        double d16 = radians + d15;
        double ceil = Math.ceil(d13);
        int i11 = 0;
        while (i11 < ceil) {
            double cos2 = Math.cos(d16);
            Double.isNaN(d14);
            float f12 = (float) (cos2 * d14);
            double sin2 = Math.sin(d16);
            Double.isNaN(d14);
            double d17 = ceil;
            float f13 = (float) (d14 * sin2);
            if (floatValue != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                d11 = d14;
                i10 = i11;
                d10 = d16;
                double atan2 = (float) (Math.atan2(f11, f10) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                float sin3 = (float) Math.sin(atan2);
                d12 = d15;
                double atan22 = (float) (Math.atan2(f13, f12) - 1.5707963267948966d);
                float f14 = floatValue2 * floatValue * 0.25f;
                this.f6853a.cubicTo(f10 - (cos3 * f14), f11 - (sin3 * f14), f12 + (((float) Math.cos(atan22)) * f14), f13 + (f14 * ((float) Math.sin(atan22))), f12, f13);
            } else {
                d10 = d16;
                d11 = d14;
                d12 = d15;
                i10 = i11;
                this.f6853a.lineTo(f12, f13);
            }
            Double.isNaN(d12);
            d16 = d10 + d12;
            i11 = i10 + 1;
            f11 = f13;
            f10 = f12;
            ceil = d17;
            d14 = d11;
            d15 = d12;
        }
        PointF h10 = this.f6859g.h();
        this.f6853a.offset(h10.x, h10.y);
        this.f6853a.close();
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        h3.a<?, Float> aVar;
        h3.a<?, Float> aVar2;
        if (t10 == e3.k.f6127w) {
            this.f6858f.n(cVar);
            return;
        }
        if (t10 == e3.k.f6128x) {
            this.f6860h.n(cVar);
            return;
        }
        if (t10 == e3.k.f6118n) {
            this.f6859g.n(cVar);
            return;
        }
        if (t10 == e3.k.f6129y && (aVar2 = this.f6861i) != null) {
            aVar2.n(cVar);
            return;
        }
        if (t10 == e3.k.f6130z) {
            this.f6862j.n(cVar);
            return;
        }
        if (t10 == e3.k.A && (aVar = this.f6863k) != null) {
            aVar.n(cVar);
        } else if (t10 == e3.k.B) {
            this.f6864l.n(cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        q3.g.m(eVar, i10, list, eVar2, this);
    }

    @Override // g3.c
    public String getName() {
        return this.f6854b;
    }

    @Override // g3.m
    public Path getPath() {
        if (this.f6866n) {
            return this.f6853a;
        }
        this.f6853a.reset();
        if (this.f6857e) {
            this.f6866n = true;
            return this.f6853a;
        }
        int i10 = a.f6867a[this.f6856d.ordinal()];
        if (i10 == 1) {
            h();
        } else if (i10 == 2) {
            d();
        }
        this.f6853a.close();
        this.f6865m.b(this.f6853a);
        this.f6866n = true;
        return this.f6853a;
    }

    public final void h() {
        double d10;
        float f10;
        float f11;
        float f12;
        float f13;
        double d11;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        double d12;
        float f20;
        float f21;
        float floatValue = this.f6858f.h().floatValue();
        double radians = Math.toRadians((this.f6860h == null ? ShadowDrawableWrapper.COS_45 : r2.h().floatValue()) - 90.0d);
        double d13 = floatValue;
        Double.isNaN(d13);
        float f22 = (float) (6.283185307179586d / d13);
        float f23 = f22 / 2.0f;
        float f24 = floatValue - ((int) floatValue);
        if (f24 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            double d14 = (1.0f - f24) * f23;
            Double.isNaN(d14);
            radians += d14;
        }
        float floatValue2 = this.f6862j.h().floatValue();
        float floatValue3 = this.f6861i.h().floatValue();
        h3.a<?, Float> aVar = this.f6863k;
        float floatValue4 = aVar != null ? aVar.h().floatValue() / 100.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        h3.a<?, Float> aVar2 = this.f6864l;
        float floatValue5 = aVar2 != null ? aVar2.h().floatValue() / 100.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f24 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float f25 = ((floatValue2 - floatValue3) * f24) + floatValue3;
            double d15 = f25;
            double cos = Math.cos(radians);
            Double.isNaN(d15);
            d10 = d13;
            float f26 = (float) (d15 * cos);
            double sin = Math.sin(radians);
            Double.isNaN(d15);
            float f27 = (float) (d15 * sin);
            this.f6853a.moveTo(f26, f27);
            double d16 = (f22 * f24) / 2.0f;
            Double.isNaN(d16);
            d11 = radians + d16;
            f12 = f26;
            f14 = f25;
            f10 = floatValue2;
            f13 = f27;
            f11 = f23;
        } else {
            d10 = d13;
            f10 = floatValue2;
            double d17 = f10;
            double cos2 = Math.cos(radians);
            Double.isNaN(d17);
            f11 = f23;
            f12 = (float) (d17 * cos2);
            double sin2 = Math.sin(radians);
            Double.isNaN(d17);
            f13 = (float) (d17 * sin2);
            this.f6853a.moveTo(f12, f13);
            double d18 = f11;
            Double.isNaN(d18);
            d11 = radians + d18;
            f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        double ceil = Math.ceil(d10) * 2.0d;
        int i10 = 0;
        float f28 = floatValue5;
        boolean z10 = false;
        while (true) {
            double d19 = i10;
            if (d19 < ceil) {
                float f29 = z10 ? f10 : floatValue3;
                float f30 = (f14 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || d19 != ceil - 2.0d) ? f11 : (f22 * f24) / 2.0f;
                if (f14 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || d19 != ceil - 1.0d) {
                    f15 = f22;
                    f16 = f29;
                    f17 = f10;
                } else {
                    f15 = f22;
                    f17 = f10;
                    f16 = f14;
                }
                double d20 = f16;
                double cos3 = Math.cos(d11);
                Double.isNaN(d20);
                float f31 = (float) (d20 * cos3);
                double sin3 = Math.sin(d11);
                Double.isNaN(d20);
                float f32 = (float) (d20 * sin3);
                if (floatValue4 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f28 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    this.f6853a.lineTo(f31, f32);
                    d12 = d11;
                    f18 = floatValue3;
                    f19 = floatValue4;
                    f20 = f11;
                    f21 = f30;
                } else {
                    f18 = floatValue3;
                    f19 = floatValue4;
                    double atan2 = (float) (Math.atan2(f13, f12) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin4 = (float) Math.sin(atan2);
                    d12 = d11;
                    f20 = f11;
                    f21 = f30;
                    double atan22 = (float) (Math.atan2(f32, f31) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin5 = (float) Math.sin(atan22);
                    float f33 = z10 ? f19 : f28;
                    float f34 = z10 ? f28 : f19;
                    float f35 = (z10 ? f18 : f17) * f33 * 0.47829f;
                    float f36 = cos4 * f35;
                    float f37 = f35 * sin4;
                    float f38 = (z10 ? f17 : f18) * f34 * 0.47829f;
                    float f39 = cos5 * f38;
                    float f40 = f38 * sin5;
                    if (f24 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        if (i10 == 0) {
                            f36 *= f24;
                            f37 *= f24;
                        } else if (d19 == ceil - 1.0d) {
                            f39 *= f24;
                            f40 *= f24;
                        }
                    }
                    this.f6853a.cubicTo(f12 - f36, f13 - f37, f31 + f39, f32 + f40, f31, f32);
                }
                double d21 = f21;
                Double.isNaN(d21);
                z10 = !z10;
                i10++;
                f13 = f32;
                d11 = d12 + d21;
                f11 = f20;
                f12 = f31;
                f10 = f17;
                f22 = f15;
                floatValue3 = f18;
                floatValue4 = f19;
            } else {
                PointF h10 = this.f6859g.h();
                this.f6853a.offset(h10.x, h10.y);
                this.f6853a.close();
                return;
            }
        }
    }

    public final void i() {
        this.f6866n = false;
        this.f6855c.invalidateSelf();
    }
}
