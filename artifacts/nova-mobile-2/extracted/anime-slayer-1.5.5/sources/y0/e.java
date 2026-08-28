package y0;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import y0.b;

/* compiled from: SpringForce.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public double f16314a;

    /* renamed from: b, reason: collision with root package name */
    public double f16315b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16316c;

    /* renamed from: d, reason: collision with root package name */
    public double f16317d;

    /* renamed from: e, reason: collision with root package name */
    public double f16318e;

    /* renamed from: f, reason: collision with root package name */
    public double f16319f;

    /* renamed from: g, reason: collision with root package name */
    public double f16320g;

    /* renamed from: h, reason: collision with root package name */
    public double f16321h;

    /* renamed from: i, reason: collision with root package name */
    public double f16322i;

    /* renamed from: j, reason: collision with root package name */
    public final b.o f16323j;

    public e() {
        this.f16314a = Math.sqrt(1500.0d);
        this.f16315b = 0.5d;
        this.f16316c = false;
        this.f16322i = Double.MAX_VALUE;
        this.f16323j = new b.o();
    }

    public float a() {
        return (float) this.f16322i;
    }

    public final void b() {
        if (this.f16316c) {
            return;
        }
        if (this.f16322i != Double.MAX_VALUE) {
            double d10 = this.f16315b;
            if (d10 > 1.0d) {
                double d11 = this.f16314a;
                this.f16319f = ((-d10) * d11) + (d11 * Math.sqrt((d10 * d10) - 1.0d));
                double d12 = this.f16315b;
                double d13 = this.f16314a;
                this.f16320g = ((-d12) * d13) - (d13 * Math.sqrt((d12 * d12) - 1.0d));
            } else if (d10 >= ShadowDrawableWrapper.COS_45 && d10 < 1.0d) {
                this.f16321h = this.f16314a * Math.sqrt(1.0d - (d10 * d10));
            }
            this.f16316c = true;
            return;
        }
        throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
    }

    public boolean c(float f10, float f11) {
        return ((double) Math.abs(f11)) < this.f16318e && ((double) Math.abs(f10 - a())) < this.f16317d;
    }

    public e d(float f10) {
        if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f16315b = f10;
            this.f16316c = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    public e e(float f10) {
        this.f16322i = f10;
        return this;
    }

    public e f(float f10) {
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f16314a = Math.sqrt(f10);
            this.f16316c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    public void g(double d10) {
        double abs = Math.abs(d10);
        this.f16317d = abs;
        this.f16318e = abs * 62.5d;
    }

    public b.o h(double d10, double d11, long j10) {
        double cos;
        double d12;
        b();
        double d13 = j10;
        Double.isNaN(d13);
        double d14 = d13 / 1000.0d;
        double d15 = d10 - this.f16322i;
        double d16 = this.f16315b;
        if (d16 > 1.0d) {
            double d17 = this.f16320g;
            double d18 = this.f16319f;
            double d19 = d15 - (((d17 * d15) - d11) / (d17 - d18));
            double d20 = ((d15 * d17) - d11) / (d17 - d18);
            d12 = (Math.pow(2.718281828459045d, d17 * d14) * d19) + (Math.pow(2.718281828459045d, this.f16319f * d14) * d20);
            double d21 = this.f16320g;
            double pow = d19 * d21 * Math.pow(2.718281828459045d, d21 * d14);
            double d22 = this.f16319f;
            cos = pow + (d20 * d22 * Math.pow(2.718281828459045d, d22 * d14));
        } else if (d16 == 1.0d) {
            double d23 = this.f16314a;
            double d24 = d11 + (d23 * d15);
            double d25 = d15 + (d24 * d14);
            d12 = Math.pow(2.718281828459045d, (-d23) * d14) * d25;
            double pow2 = d25 * Math.pow(2.718281828459045d, (-this.f16314a) * d14);
            double d26 = this.f16314a;
            cos = (d24 * Math.pow(2.718281828459045d, (-d26) * d14)) + (pow2 * (-d26));
        } else {
            double d27 = 1.0d / this.f16321h;
            double d28 = this.f16314a;
            double d29 = d27 * ((d16 * d28 * d15) + d11);
            double pow3 = Math.pow(2.718281828459045d, (-d16) * d28 * d14) * ((Math.cos(this.f16321h * d14) * d15) + (Math.sin(this.f16321h * d14) * d29));
            double d30 = this.f16314a;
            double d31 = this.f16315b;
            double d32 = (-d30) * pow3 * d31;
            double pow4 = Math.pow(2.718281828459045d, (-d31) * d30 * d14);
            double d33 = this.f16321h;
            double sin = (-d33) * d15 * Math.sin(d33 * d14);
            double d34 = this.f16321h;
            cos = d32 + (pow4 * (sin + (d29 * d34 * Math.cos(d34 * d14))));
            d12 = pow3;
        }
        b.o oVar = this.f16323j;
        oVar.f16311a = (float) (d12 + this.f16322i);
        oVar.f16312b = (float) cos;
        return oVar;
    }

    public e(float f10) {
        this.f16314a = Math.sqrt(1500.0d);
        this.f16315b = 0.5d;
        this.f16316c = false;
        this.f16322i = Double.MAX_VALUE;
        this.f16323j = new b.o();
        this.f16322i = f10;
    }
}
