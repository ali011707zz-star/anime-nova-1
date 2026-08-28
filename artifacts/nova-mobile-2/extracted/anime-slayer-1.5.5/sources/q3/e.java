package q3;

import android.view.Choreographer;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: LottieValueAnimator.java */
/* loaded from: classes.dex */
public class e extends a implements Choreographer.FrameCallback {

    /* renamed from: o, reason: collision with root package name */
    public e3.d f12453o;

    /* renamed from: h, reason: collision with root package name */
    public float f12446h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public boolean f12447i = false;

    /* renamed from: j, reason: collision with root package name */
    public long f12448j = 0;

    /* renamed from: k, reason: collision with root package name */
    public float f12449k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: l, reason: collision with root package name */
    public int f12450l = 0;

    /* renamed from: m, reason: collision with root package name */
    public float f12451m = -2.1474836E9f;

    /* renamed from: n, reason: collision with root package name */
    public float f12452n = 2.1474836E9f;

    /* renamed from: p, reason: collision with root package name */
    public boolean f12454p = false;

    public void A(float f10) {
        this.f12446h = f10;
    }

    public final void B() {
        if (this.f12453o == null) {
            return;
        }
        float f10 = this.f12449k;
        if (f10 < this.f12451m || f10 > this.f12452n) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f12451m), Float.valueOf(this.f12452n), Float.valueOf(this.f12449k)));
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        a();
        r();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        q();
        if (this.f12453o == null || !isRunning()) {
            return;
        }
        e3.c.a("LottieValueAnimator#doFrame");
        long j11 = this.f12448j;
        float j12 = ((float) (j11 != 0 ? j10 - j11 : 0L)) / j();
        float f10 = this.f12449k;
        if (n()) {
            j12 = -j12;
        }
        float f11 = f10 + j12;
        this.f12449k = f11;
        boolean z10 = !g.e(f11, l(), k());
        this.f12449k = g.c(this.f12449k, l(), k());
        this.f12448j = j10;
        e();
        if (z10) {
            if (getRepeatCount() != -1 && this.f12450l >= getRepeatCount()) {
                this.f12449k = this.f12446h < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? l() : k();
                r();
                b(n());
            } else {
                c();
                this.f12450l++;
                if (getRepeatMode() == 2) {
                    this.f12447i = !this.f12447i;
                    u();
                } else {
                    this.f12449k = n() ? k() : l();
                }
                this.f12448j = j10;
            }
        }
        B();
        e3.c.b("LottieValueAnimator#doFrame");
    }

    public void f() {
        this.f12453o = null;
        this.f12451m = -2.1474836E9f;
        this.f12452n = 2.1474836E9f;
    }

    public void g() {
        r();
        b(n());
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float l10;
        float k10;
        float l11;
        if (this.f12453o == null) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (n()) {
            l10 = k() - this.f12449k;
            k10 = k();
            l11 = l();
        } else {
            l10 = this.f12449k - l();
            k10 = k();
            l11 = l();
        }
        return l10 / (k10 - l11);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(h());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        if (this.f12453o == null) {
            return 0L;
        }
        return r0.d();
    }

    public float h() {
        e3.d dVar = this.f12453o;
        return dVar == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (this.f12449k - dVar.p()) / (this.f12453o.f() - this.f12453o.p());
    }

    public float i() {
        return this.f12449k;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f12454p;
    }

    public final float j() {
        e3.d dVar = this.f12453o;
        if (dVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / dVar.i()) / Math.abs(this.f12446h);
    }

    public float k() {
        e3.d dVar = this.f12453o;
        if (dVar == null) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float f10 = this.f12452n;
        return f10 == 2.1474836E9f ? dVar.f() : f10;
    }

    public float l() {
        e3.d dVar = this.f12453o;
        if (dVar == null) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float f10 = this.f12451m;
        return f10 == -2.1474836E9f ? dVar.p() : f10;
    }

    public float m() {
        return this.f12446h;
    }

    public final boolean n() {
        return m() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public void o() {
        r();
    }

    public void p() {
        this.f12454p = true;
        d(n());
        w((int) (n() ? k() : l()));
        this.f12448j = 0L;
        this.f12450l = 0;
        q();
    }

    public void q() {
        if (isRunning()) {
            s(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    public void r() {
        s(true);
    }

    public void s(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f12454p = false;
        }
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f12447i) {
            return;
        }
        this.f12447i = false;
        u();
    }

    public void t() {
        this.f12454p = true;
        q();
        this.f12448j = 0L;
        if (n() && i() == l()) {
            this.f12449k = k();
        } else {
            if (n() || i() != k()) {
                return;
            }
            this.f12449k = l();
        }
    }

    public void u() {
        A(-m());
    }

    public void v(e3.d dVar) {
        boolean z10 = this.f12453o == null;
        this.f12453o = dVar;
        if (z10) {
            y((int) Math.max(this.f12451m, dVar.p()), (int) Math.min(this.f12452n, dVar.f()));
        } else {
            y((int) dVar.p(), (int) dVar.f());
        }
        float f10 = this.f12449k;
        this.f12449k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        w((int) f10);
        e();
    }

    public void w(float f10) {
        if (this.f12449k == f10) {
            return;
        }
        this.f12449k = g.c(f10, l(), k());
        this.f12448j = 0L;
        e();
    }

    public void x(float f10) {
        y(this.f12451m, f10);
    }

    public void y(float f10, float f11) {
        if (f10 <= f11) {
            e3.d dVar = this.f12453o;
            float p10 = dVar == null ? -3.4028235E38f : dVar.p();
            e3.d dVar2 = this.f12453o;
            float f12 = dVar2 == null ? Float.MAX_VALUE : dVar2.f();
            float c10 = g.c(f10, p10, f12);
            float c11 = g.c(f11, p10, f12);
            if (c10 == this.f12451m && c11 == this.f12452n) {
                return;
            }
            this.f12451m = c10;
            this.f12452n = c11;
            w((int) g.c(this.f12449k, c10, c11));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }

    public void z(int i10) {
        y(i10, (int) this.f12452n);
    }
}
