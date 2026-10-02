package u0;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import q0.b0;

/* compiled from: AutoScrollHelper.java */
/* loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {

    /* renamed from: w, reason: collision with root package name */
    public static final int f14276w = ViewConfiguration.getTapTimeout();

    /* renamed from: h, reason: collision with root package name */
    public final View f14279h;

    /* renamed from: i, reason: collision with root package name */
    public Runnable f14280i;

    /* renamed from: l, reason: collision with root package name */
    public int f14283l;

    /* renamed from: m, reason: collision with root package name */
    public int f14284m;

    /* renamed from: q, reason: collision with root package name */
    public boolean f14288q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f14289r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f14290s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f14291t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f14292u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f14293v;

    /* renamed from: f, reason: collision with root package name */
    public final C0357a f14277f = new C0357a();

    /* renamed from: g, reason: collision with root package name */
    public final Interpolator f14278g = new AccelerateInterpolator();

    /* renamed from: j, reason: collision with root package name */
    public float[] f14281j = {StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD};

    /* renamed from: k, reason: collision with root package name */
    public float[] f14282k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: n, reason: collision with root package name */
    public float[] f14285n = {StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD};

    /* renamed from: o, reason: collision with root package name */
    public float[] f14286o = {StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD};

    /* renamed from: p, reason: collision with root package name */
    public float[] f14287p = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* compiled from: AutoScrollHelper.java */
    /* renamed from: u0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0357a {

        /* renamed from: a, reason: collision with root package name */
        public int f14294a;

        /* renamed from: b, reason: collision with root package name */
        public int f14295b;

        /* renamed from: c, reason: collision with root package name */
        public float f14296c;

        /* renamed from: d, reason: collision with root package name */
        public float f14297d;

        /* renamed from: j, reason: collision with root package name */
        public float f14303j;

        /* renamed from: k, reason: collision with root package name */
        public int f14304k;

        /* renamed from: e, reason: collision with root package name */
        public long f14298e = Long.MIN_VALUE;

        /* renamed from: i, reason: collision with root package name */
        public long f14302i = -1;

        /* renamed from: f, reason: collision with root package name */
        public long f14299f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f14300g = 0;

        /* renamed from: h, reason: collision with root package name */
        public int f14301h = 0;

        public void a() {
            if (this.f14299f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float g10 = g(e(currentAnimationTimeMillis));
                long j10 = currentAnimationTimeMillis - this.f14299f;
                this.f14299f = currentAnimationTimeMillis;
                float f10 = ((float) j10) * g10;
                this.f14300g = (int) (this.f14296c * f10);
                this.f14301h = (int) (f10 * this.f14297d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int b() {
            return this.f14300g;
        }

        public int c() {
            return this.f14301h;
        }

        public int d() {
            float f10 = this.f14296c;
            return (int) (f10 / Math.abs(f10));
        }

        public final float e(long j10) {
            long j11 = this.f14298e;
            if (j10 < j11) {
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            long j12 = this.f14302i;
            if (j12 >= 0 && j10 >= j12) {
                float f10 = this.f14303j;
                return (1.0f - f10) + (f10 * a.e(((float) (j10 - j12)) / this.f14304k, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f));
            }
            return a.e(((float) (j10 - j11)) / this.f14294a, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f) * 0.5f;
        }

        public int f() {
            float f10 = this.f14297d;
            return (int) (f10 / Math.abs(f10));
        }

        public final float g(float f10) {
            return ((-4.0f) * f10 * f10) + (f10 * 4.0f);
        }

        public boolean h() {
            return this.f14302i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f14302i + ((long) this.f14304k);
        }

        public void i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f14304k = a.f((int) (currentAnimationTimeMillis - this.f14298e), 0, this.f14295b);
            this.f14303j = e(currentAnimationTimeMillis);
            this.f14302i = currentAnimationTimeMillis;
        }

        public void j(int i10) {
            this.f14295b = i10;
        }

        public void k(int i10) {
            this.f14294a = i10;
        }

        public void l(float f10, float f11) {
            this.f14296c = f10;
            this.f14297d = f11;
        }

        public void m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f14298e = currentAnimationTimeMillis;
            this.f14302i = -1L;
            this.f14299f = currentAnimationTimeMillis;
            this.f14303j = 0.5f;
            this.f14300g = 0;
            this.f14301h = 0;
        }
    }

    /* compiled from: AutoScrollHelper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.f14291t) {
                if (aVar.f14289r) {
                    aVar.f14289r = false;
                    aVar.f14277f.m();
                }
                C0357a c0357a = a.this.f14277f;
                if (!c0357a.h() && a.this.u()) {
                    a aVar2 = a.this;
                    if (aVar2.f14290s) {
                        aVar2.f14290s = false;
                        aVar2.c();
                    }
                    c0357a.a();
                    a.this.j(c0357a.b(), c0357a.c());
                    b0.l0(a.this.f14279h, this);
                    return;
                }
                a.this.f14291t = false;
            }
        }
    }

    public a(View view) {
        this.f14279h = view;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = (int) ((1575.0f * f10) + 0.5f);
        o(f11, f11);
        float f12 = (int) ((f10 * 315.0f) + 0.5f);
        p(f12, f12);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(f14276w);
        r(500);
        q(500);
    }

    public static float e(float f10, float f11, float f12) {
        return f10 > f12 ? f12 : f10 < f11 ? f11 : f10;
    }

    public static int f(int i10, int i11, int i12) {
        return i10 > i12 ? i12 : i10 < i11 ? i11 : i10;
    }

    public abstract boolean a(int i10);

    public abstract boolean b(int i10);

    public void c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
        this.f14279h.onTouchEvent(obtain);
        obtain.recycle();
    }

    public final float d(int i10, float f10, float f11, float f12) {
        float h10 = h(this.f14281j[i10], f11, this.f14282k[i10], f10);
        if (h10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float f13 = this.f14285n[i10];
        float f14 = this.f14286o[i10];
        float f15 = this.f14287p[i10];
        float f16 = f13 * f12;
        if (h10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return e(h10 * f16, f14, f15);
        }
        return -e((-h10) * f16, f14, f15);
    }

    public final float g(float f10, float f11) {
        if (f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int i10 = this.f14283l;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    return 1.0f - (f10 / f11);
                }
                if (this.f14291t && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return f10 / (-f11);
        }
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public final float h(float f10, float f11, float f12, float f13) {
        float interpolation;
        float e10 = e(f10 * f11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f12);
        float g10 = g(f11 - f13, e10) - g(f13, e10);
        if (g10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            interpolation = -this.f14278g.getInterpolation(-g10);
        } else {
            if (g10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            interpolation = this.f14278g.getInterpolation(g10);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    public final void i() {
        if (this.f14289r) {
            this.f14291t = false;
        } else {
            this.f14277f.i();
        }
    }

    public abstract void j(int i10, int i11);

    public a k(int i10) {
        this.f14284m = i10;
        return this;
    }

    public a l(int i10) {
        this.f14283l = i10;
        return this;
    }

    public a m(boolean z10) {
        if (this.f14292u && !z10) {
            i();
        }
        this.f14292u = z10;
        return this;
    }

    public a n(float f10, float f11) {
        float[] fArr = this.f14282k;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a o(float f10, float f11) {
        float[] fArr = this.f14287p;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L20;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f14292u) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                }
            }
            i();
            return this.f14293v && this.f14291t;
        }
        this.f14290s = true;
        this.f14288q = false;
        this.f14277f.l(d(0, motionEvent.getX(), view.getWidth(), this.f14279h.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.f14279h.getHeight()));
        if (!this.f14291t && u()) {
            v();
        }
        if (this.f14293v) {
            return false;
        }
    }

    public a p(float f10, float f11) {
        float[] fArr = this.f14286o;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    public a q(int i10) {
        this.f14277f.j(i10);
        return this;
    }

    public a r(int i10) {
        this.f14277f.k(i10);
        return this;
    }

    public a s(float f10, float f11) {
        float[] fArr = this.f14281j;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a t(float f10, float f11) {
        float[] fArr = this.f14285n;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    public boolean u() {
        C0357a c0357a = this.f14277f;
        int f10 = c0357a.f();
        int d10 = c0357a.d();
        return (f10 != 0 && b(f10)) || (d10 != 0 && a(d10));
    }

    public final void v() {
        int i10;
        if (this.f14280i == null) {
            this.f14280i = new b();
        }
        this.f14291t = true;
        this.f14289r = true;
        if (!this.f14288q && (i10 = this.f14284m) > 0) {
            b0.m0(this.f14279h, this.f14280i, i10);
        } else {
            this.f14280i.run();
        }
        this.f14288q = true;
    }
}
