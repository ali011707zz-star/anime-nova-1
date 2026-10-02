package y0;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import y0.b;

/* compiled from: SpringAnimation.java */
/* loaded from: classes.dex */
public final class d extends b<d> {
    public e A;
    public float B;
    public boolean C;

    public <K> d(K k10, c<K> cVar) {
        super(k10, cVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
    }

    @Override // y0.b
    public void j() {
        o();
        this.A.g(e());
        super.j();
    }

    @Override // y0.b
    public boolean l(long j10) {
        if (this.C) {
            float f10 = this.B;
            if (f10 != Float.MAX_VALUE) {
                this.A.e(f10);
                this.B = Float.MAX_VALUE;
            }
            this.f16300b = this.A.a();
            this.f16299a = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.C = false;
            return true;
        }
        if (this.B != Float.MAX_VALUE) {
            this.A.a();
            long j11 = j10 / 2;
            b.o h10 = this.A.h(this.f16300b, this.f16299a, j11);
            this.A.e(this.B);
            this.B = Float.MAX_VALUE;
            b.o h11 = this.A.h(h10.f16311a, h10.f16312b, j11);
            this.f16300b = h11.f16311a;
            this.f16299a = h11.f16312b;
        } else {
            b.o h12 = this.A.h(this.f16300b, this.f16299a, j10);
            this.f16300b = h12.f16311a;
            this.f16299a = h12.f16312b;
        }
        float max = Math.max(this.f16300b, this.f16306h);
        this.f16300b = max;
        float min = Math.min(max, this.f16305g);
        this.f16300b = min;
        if (!n(min, this.f16299a)) {
            return false;
        }
        this.f16300b = this.A.a();
        this.f16299a = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        return true;
    }

    public void m(float f10) {
        if (f()) {
            this.B = f10;
            return;
        }
        if (this.A == null) {
            this.A = new e(f10);
        }
        this.A.e(f10);
        j();
    }

    public boolean n(float f10, float f11) {
        return this.A.c(f10, f11);
    }

    public final void o() {
        e eVar = this.A;
        if (eVar != null) {
            double a10 = eVar.a();
            if (a10 > this.f16305g) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            }
            if (a10 < this.f16306h) {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
            return;
        }
        throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
    }

    public d p(e eVar) {
        this.A = eVar;
        return this;
    }
}
