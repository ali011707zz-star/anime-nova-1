package g0;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: CamColor.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final float f6705a;

    /* renamed from: b, reason: collision with root package name */
    public final float f6706b;

    /* renamed from: c, reason: collision with root package name */
    public final float f6707c;

    /* renamed from: d, reason: collision with root package name */
    public final float f6708d;

    /* renamed from: e, reason: collision with root package name */
    public final float f6709e;

    /* renamed from: f, reason: collision with root package name */
    public final float f6710f;

    /* renamed from: g, reason: collision with root package name */
    public final float f6711g;

    /* renamed from: h, reason: collision with root package name */
    public final float f6712h;

    /* renamed from: i, reason: collision with root package name */
    public final float f6713i;

    public a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.f6705a = f10;
        this.f6706b = f11;
        this.f6707c = f12;
        this.f6708d = f13;
        this.f6709e = f14;
        this.f6710f = f15;
        this.f6711g = f16;
        this.f6712h = f17;
        this.f6713i = f18;
    }

    public static a b(float f10, float f11, float f12) {
        float f13 = 1000.0f;
        a aVar = null;
        float f14 = 1000.0f;
        float f15 = 100.0f;
        float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (Math.abs(f16 - f15) > 0.01f) {
            float f17 = ((f15 - f16) / 2.0f) + f16;
            int p10 = e(f17, f11, f10).p();
            float b10 = b.b(p10);
            float abs = Math.abs(f12 - b10);
            if (abs < 0.2f) {
                a c10 = c(p10);
                float a10 = c10.a(e(c10.k(), c10.i(), f10));
                if (a10 <= 1.0f) {
                    aVar = c10;
                    f13 = abs;
                    f14 = a10;
                }
            }
            if (f13 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f14 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                break;
            }
            if (b10 < f12) {
                f16 = f17;
            } else {
                f15 = f17;
            }
        }
        return aVar;
    }

    public static a c(int i10) {
        return d(i10, j.f6749k);
    }

    public static a d(int i10, j jVar) {
        float[] f10 = b.f(i10);
        float[][] fArr = b.f6714a;
        float f11 = (f10[0] * fArr[0][0]) + (f10[1] * fArr[0][1]) + (f10[2] * fArr[0][2]);
        float f12 = (f10[0] * fArr[1][0]) + (f10[1] * fArr[1][1]) + (f10[2] * fArr[1][2]);
        float f13 = (f10[0] * fArr[2][0]) + (f10[1] * fArr[2][1]) + (f10[2] * fArr[2][2]);
        float f14 = jVar.i()[0] * f11;
        float f15 = jVar.i()[1] * f12;
        float f16 = jVar.i()[2] * f13;
        double c10 = jVar.c() * Math.abs(f14);
        Double.isNaN(c10);
        float pow = (float) Math.pow(c10 / 100.0d, 0.42d);
        double c11 = jVar.c() * Math.abs(f15);
        Double.isNaN(c11);
        float pow2 = (float) Math.pow(c11 / 100.0d, 0.42d);
        double c12 = jVar.c() * Math.abs(f16);
        Double.isNaN(c12);
        float pow3 = (float) Math.pow(c12 / 100.0d, 0.42d);
        float signum = ((Math.signum(f14) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f15) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f16) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d10 = signum;
        Double.isNaN(d10);
        double d11 = signum2;
        Double.isNaN(d11);
        double d12 = (d10 * 11.0d) + (d11 * (-12.0d));
        double d13 = signum3;
        Double.isNaN(d13);
        double d14 = signum + signum2;
        Double.isNaN(d13);
        Double.isNaN(d14);
        float f17 = ((float) (d14 - (d13 * 2.0d))) / 9.0f;
        float f18 = signum2 * 20.0f;
        float f19 = (((signum * 20.0f) + f18) + (21.0f * signum3)) / 20.0f;
        float f20 = (((signum * 40.0f) + f18) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f17, ((float) (d12 + d13)) / 11.0f)) * 180.0f) / 3.1415927f;
        if (atan2 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f21 = atan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float pow4 = ((float) Math.pow((f20 * jVar.f()) / jVar.a(), jVar.b() * jVar.j())) * 100.0f;
        float d15 = jVar.d() * (4.0f / jVar.b()) * ((float) Math.sqrt(pow4 / 100.0f)) * (jVar.a() + 4.0f);
        Double.isNaN(((double) f21) < 20.14d ? 360.0f + f21 : f21);
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, jVar.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((r9 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * jVar.g()) * jVar.h()) * ((float) Math.sqrt((r3 * r3) + (f17 * f17)))) / (f19 + 0.305f), 0.9d));
        double d16 = pow4;
        Double.isNaN(d16);
        float sqrt = pow5 * ((float) Math.sqrt(d16 / 100.0d));
        float d17 = sqrt * jVar.d();
        float sqrt2 = ((float) Math.sqrt((pow5 * jVar.b()) / (jVar.a() + 4.0f))) * 50.0f;
        float f23 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((0.0228f * d17) + 1.0f)) * 43.85965f;
        double d18 = f22;
        return new a(f21, sqrt, pow4, d15, d17, sqrt2, f23, log * ((float) Math.cos(d18)), log * ((float) Math.sin(d18)));
    }

    public static a e(float f10, float f11, float f12) {
        return f(f10, f11, f12, j.f6749k);
    }

    public static a f(float f10, float f11, float f12, j jVar) {
        float b10 = 4.0f / jVar.b();
        double d10 = f10;
        Double.isNaN(d10);
        float sqrt = b10 * ((float) Math.sqrt(d10 / 100.0d)) * (jVar.a() + 4.0f) * jVar.d();
        float d11 = f11 * jVar.d();
        float sqrt2 = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(r4))) * jVar.b()) / (jVar.a() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        double d12 = d11;
        Double.isNaN(d12);
        float log = ((float) Math.log((d12 * 0.0228d) + 1.0d)) * 43.85965f;
        double d13 = (3.1415927f * f12) / 180.0f;
        return new a(f12, f11, f10, sqrt, d11, sqrt2, f13, log * ((float) Math.cos(d13)), log * ((float) Math.sin(d13)));
    }

    public static int m(float f10, float f11, float f12) {
        return n(f10, f11, f12, j.f6749k);
    }

    public static int n(float f10, float f11, float f12, j jVar) {
        if (f11 >= 1.0d && Math.round(f12) > ShadowDrawableWrapper.COS_45 && Math.round(f12) < 100.0d) {
            float min = f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : Math.min(360.0f, f10);
            float f13 = f11;
            a aVar = null;
            float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            boolean z10 = true;
            while (Math.abs(f14 - f11) >= 0.4f) {
                a b10 = b(min, f13, f12);
                if (z10) {
                    if (b10 != null) {
                        return b10.o(jVar);
                    }
                    z10 = false;
                } else if (b10 == null) {
                    f11 = f13;
                } else {
                    f14 = f13;
                    aVar = b10;
                }
                f13 = ((f11 - f14) / 2.0f) + f14;
            }
            if (aVar == null) {
                return b.a(f12);
            }
            return aVar.o(jVar);
        }
        return b.a(f12);
    }

    public float a(a aVar) {
        float l10 = l() - aVar.l();
        float g10 = g() - aVar.g();
        float h10 = h() - aVar.h();
        return (float) (Math.pow(Math.sqrt((l10 * l10) + (g10 * g10) + (h10 * h10)), 0.63d) * 1.41d);
    }

    public float g() {
        return this.f6712h;
    }

    public float h() {
        return this.f6713i;
    }

    public float i() {
        return this.f6706b;
    }

    public float j() {
        return this.f6705a;
    }

    public float k() {
        return this.f6707c;
    }

    public float l() {
        return this.f6711g;
    }

    public int o(j jVar) {
        float f10;
        if (i() == ShadowDrawableWrapper.COS_45 || k() == ShadowDrawableWrapper.COS_45) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            float i10 = i();
            double k10 = k();
            Double.isNaN(k10);
            f10 = i10 / ((float) Math.sqrt(k10 / 100.0d));
        }
        double d10 = f10;
        double pow = Math.pow(1.64d - Math.pow(0.29d, jVar.e()), 0.73d);
        Double.isNaN(d10);
        float pow2 = (float) Math.pow(d10 / pow, 1.1111111111111112d);
        double j10 = (j() * 3.1415927f) / 180.0f;
        Double.isNaN(j10);
        float cos = ((float) (Math.cos(2.0d + j10) + 3.8d)) * 0.25f;
        float a10 = jVar.a();
        double k11 = k();
        Double.isNaN(k11);
        double b10 = jVar.b();
        Double.isNaN(b10);
        double d11 = 1.0d / b10;
        double j11 = jVar.j();
        Double.isNaN(j11);
        float pow3 = a10 * ((float) Math.pow(k11 / 100.0d, d11 / j11));
        float g10 = cos * 3846.1538f * jVar.g() * jVar.h();
        float f11 = pow3 / jVar.f();
        float sin = (float) Math.sin(j10);
        float cos2 = (float) Math.cos(j10);
        float f12 = (((0.305f + f11) * 23.0f) * pow2) / (((g10 * 23.0f) + ((11.0f * pow2) * cos2)) + ((pow2 * 108.0f) * sin));
        float f13 = cos2 * f12;
        float f14 = f12 * sin;
        float f15 = f11 * 460.0f;
        float f16 = (((451.0f * f13) + f15) + (288.0f * f14)) / 1403.0f;
        float f17 = ((f15 - (891.0f * f13)) - (261.0f * f14)) / 1403.0f;
        float f18 = ((f15 - (f13 * 220.0f)) - (f14 * 6300.0f)) / 1403.0f;
        Double.isNaN(Math.abs(f16));
        Double.isNaN(Math.abs(f16));
        float signum = Math.signum(f16) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(ShadowDrawableWrapper.COS_45, (r7 * 27.13d) / (400.0d - r11)), 2.380952380952381d));
        Double.isNaN(Math.abs(f17));
        Double.isNaN(Math.abs(f17));
        float signum2 = Math.signum(f17) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(ShadowDrawableWrapper.COS_45, (r11 * 27.13d) / (400.0d - r9)), 2.380952380952381d));
        Double.isNaN(Math.abs(f18));
        Double.isNaN(Math.abs(f18));
        float signum3 = Math.signum(f18) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(ShadowDrawableWrapper.COS_45, (r9 * 27.13d) / (400.0d - r11)), 2.380952380952381d));
        float f19 = signum / jVar.i()[0];
        float f20 = signum2 / jVar.i()[1];
        float f21 = signum3 / jVar.i()[2];
        float[][] fArr = b.f6715b;
        return h0.d.b((fArr[0][0] * f19) + (fArr[0][1] * f20) + (fArr[0][2] * f21), (fArr[1][0] * f19) + (fArr[1][1] * f20) + (fArr[1][2] * f21), (f19 * fArr[2][0]) + (f20 * fArr[2][1]) + (f21 * fArr[2][2]));
    }

    public int p() {
        return o(j.f6749k);
    }
}
