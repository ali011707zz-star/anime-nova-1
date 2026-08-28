package v1;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import p0.i;

/* compiled from: CircularProgressDrawable.java */
/* loaded from: classes.dex */
public class b extends Drawable implements Animatable {

    /* renamed from: l, reason: collision with root package name */
    public static final Interpolator f14754l = new LinearInterpolator();

    /* renamed from: m, reason: collision with root package name */
    public static final Interpolator f14755m = new d1.b();

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f14756n = {-16777216};

    /* renamed from: f, reason: collision with root package name */
    public final c f14757f;

    /* renamed from: g, reason: collision with root package name */
    public float f14758g;

    /* renamed from: h, reason: collision with root package name */
    public Resources f14759h;

    /* renamed from: i, reason: collision with root package name */
    public Animator f14760i;

    /* renamed from: j, reason: collision with root package name */
    public float f14761j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14762k;

    /* compiled from: CircularProgressDrawable.java */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f14763a;

        public a(c cVar) {
            this.f14763a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.n(floatValue, this.f14763a);
            b.this.b(floatValue, this.f14763a, false);
            b.this.invalidateSelf();
        }
    }

    /* compiled from: CircularProgressDrawable.java */
    /* renamed from: v1.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0383b implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f14765a;

        public C0383b(c cVar) {
            this.f14765a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            b.this.b(1.0f, this.f14765a, true);
            this.f14765a.A();
            this.f14765a.l();
            b bVar = b.this;
            if (bVar.f14762k) {
                bVar.f14762k = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                this.f14765a.x(false);
                return;
            }
            bVar.f14761j += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.f14761j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
    }

    /* compiled from: CircularProgressDrawable.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final RectF f14767a = new RectF();

        /* renamed from: b, reason: collision with root package name */
        public final Paint f14768b;

        /* renamed from: c, reason: collision with root package name */
        public final Paint f14769c;

        /* renamed from: d, reason: collision with root package name */
        public final Paint f14770d;

        /* renamed from: e, reason: collision with root package name */
        public float f14771e;

        /* renamed from: f, reason: collision with root package name */
        public float f14772f;

        /* renamed from: g, reason: collision with root package name */
        public float f14773g;

        /* renamed from: h, reason: collision with root package name */
        public float f14774h;

        /* renamed from: i, reason: collision with root package name */
        public int[] f14775i;

        /* renamed from: j, reason: collision with root package name */
        public int f14776j;

        /* renamed from: k, reason: collision with root package name */
        public float f14777k;

        /* renamed from: l, reason: collision with root package name */
        public float f14778l;

        /* renamed from: m, reason: collision with root package name */
        public float f14779m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f14780n;

        /* renamed from: o, reason: collision with root package name */
        public Path f14781o;

        /* renamed from: p, reason: collision with root package name */
        public float f14782p;

        /* renamed from: q, reason: collision with root package name */
        public float f14783q;

        /* renamed from: r, reason: collision with root package name */
        public int f14784r;

        /* renamed from: s, reason: collision with root package name */
        public int f14785s;

        /* renamed from: t, reason: collision with root package name */
        public int f14786t;

        /* renamed from: u, reason: collision with root package name */
        public int f14787u;

        public c() {
            Paint paint = new Paint();
            this.f14768b = paint;
            Paint paint2 = new Paint();
            this.f14769c = paint2;
            Paint paint3 = new Paint();
            this.f14770d = paint3;
            this.f14771e = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f14772f = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f14773g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f14774h = 5.0f;
            this.f14782p = 1.0f;
            this.f14786t = BaseProgressIndicator.MAX_ALPHA;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        public void A() {
            this.f14777k = this.f14771e;
            this.f14778l = this.f14772f;
            this.f14779m = this.f14773g;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f14767a;
            float f10 = this.f14783q;
            float f11 = (this.f14774h / 2.0f) + f10;
            if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f11 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f14784r * this.f14782p) / 2.0f, this.f14774h / 2.0f);
            }
            rectF.set(rect.centerX() - f11, rect.centerY() - f11, rect.centerX() + f11, rect.centerY() + f11);
            float f12 = this.f14771e;
            float f13 = this.f14773g;
            float f14 = (f12 + f13) * 360.0f;
            float f15 = ((this.f14772f + f13) * 360.0f) - f14;
            this.f14768b.setColor(this.f14787u);
            this.f14768b.setAlpha(this.f14786t);
            float f16 = this.f14774h / 2.0f;
            rectF.inset(f16, f16);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f14770d);
            float f17 = -f16;
            rectF.inset(f17, f17);
            canvas.drawArc(rectF, f14, f15, false, this.f14768b);
            b(canvas, f14, f15, rectF);
        }

        public void b(Canvas canvas, float f10, float f11, RectF rectF) {
            if (this.f14780n) {
                Path path = this.f14781o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f14781o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f12 = (this.f14784r * this.f14782p) / 2.0f;
                this.f14781o.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                this.f14781o.lineTo(this.f14784r * this.f14782p, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                Path path3 = this.f14781o;
                float f13 = this.f14784r;
                float f14 = this.f14782p;
                path3.lineTo((f13 * f14) / 2.0f, this.f14785s * f14);
                this.f14781o.offset((min + rectF.centerX()) - f12, rectF.centerY() + (this.f14774h / 2.0f));
                this.f14781o.close();
                this.f14769c.setColor(this.f14787u);
                this.f14769c.setAlpha(this.f14786t);
                canvas.save();
                canvas.rotate(f10 + f11, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f14781o, this.f14769c);
                canvas.restore();
            }
        }

        public int c() {
            return this.f14786t;
        }

        public float d() {
            return this.f14772f;
        }

        public int e() {
            return this.f14775i[f()];
        }

        public int f() {
            return (this.f14776j + 1) % this.f14775i.length;
        }

        public float g() {
            return this.f14771e;
        }

        public int h() {
            return this.f14775i[this.f14776j];
        }

        public float i() {
            return this.f14778l;
        }

        public float j() {
            return this.f14779m;
        }

        public float k() {
            return this.f14777k;
        }

        public void l() {
            t(f());
        }

        public void m() {
            this.f14777k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f14778l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f14779m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            y(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            v(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            w(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }

        public void n(int i10) {
            this.f14786t = i10;
        }

        public void o(float f10, float f11) {
            this.f14784r = (int) f10;
            this.f14785s = (int) f11;
        }

        public void p(float f10) {
            if (f10 != this.f14782p) {
                this.f14782p = f10;
            }
        }

        public void q(float f10) {
            this.f14783q = f10;
        }

        public void r(int i10) {
            this.f14787u = i10;
        }

        public void s(ColorFilter colorFilter) {
            this.f14768b.setColorFilter(colorFilter);
        }

        public void t(int i10) {
            this.f14776j = i10;
            this.f14787u = this.f14775i[i10];
        }

        public void u(int[] iArr) {
            this.f14775i = iArr;
            t(0);
        }

        public void v(float f10) {
            this.f14772f = f10;
        }

        public void w(float f10) {
            this.f14773g = f10;
        }

        public void x(boolean z10) {
            if (this.f14780n != z10) {
                this.f14780n = z10;
            }
        }

        public void y(float f10) {
            this.f14771e = f10;
        }

        public void z(float f10) {
            this.f14774h = f10;
            this.f14768b.setStrokeWidth(f10);
        }
    }

    public b(Context context) {
        this.f14759h = ((Context) i.g(context)).getResources();
        c cVar = new c();
        this.f14757f = cVar;
        cVar.u(f14756n);
        k(2.5f);
        m();
    }

    public final void a(float f10, c cVar) {
        n(f10, cVar);
        float floor = (float) (Math.floor(cVar.j() / 0.8f) + 1.0d);
        cVar.y(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f10));
        cVar.v(cVar.i());
        cVar.w(cVar.j() + ((floor - cVar.j()) * f10));
    }

    public void b(float f10, c cVar, boolean z10) {
        float interpolation;
        float f11;
        if (this.f14762k) {
            a(f10, cVar);
            return;
        }
        if (f10 != 1.0f || z10) {
            float j10 = cVar.j();
            if (f10 < 0.5f) {
                interpolation = cVar.k();
                f11 = (f14755m.getInterpolation(f10 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float k10 = cVar.k() + 0.79f;
                interpolation = k10 - (((1.0f - f14755m.getInterpolation((f10 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f11 = k10;
            }
            float f12 = j10 + (0.20999998f * f10);
            float f13 = (f10 + this.f14761j) * 216.0f;
            cVar.y(interpolation);
            cVar.v(f11);
            cVar.w(f12);
            h(f13);
        }
    }

    public final int c(float f10, int i10, int i11) {
        return ((((i10 >> 24) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 24) & BaseProgressIndicator.MAX_ALPHA) - r0) * f10))) << 24) | ((((i10 >> 16) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 16) & BaseProgressIndicator.MAX_ALPHA) - r1) * f10))) << 16) | ((((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 8) & BaseProgressIndicator.MAX_ALPHA) - r2) * f10))) << 8) | ((i10 & BaseProgressIndicator.MAX_ALPHA) + ((int) (f10 * ((i11 & BaseProgressIndicator.MAX_ALPHA) - r8))));
    }

    public void d(boolean z10) {
        this.f14757f.x(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f14758g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f14757f.a(canvas, bounds);
        canvas.restore();
    }

    public void e(float f10) {
        this.f14757f.p(f10);
        invalidateSelf();
    }

    public void f(int... iArr) {
        this.f14757f.u(iArr);
        this.f14757f.t(0);
        invalidateSelf();
    }

    public void g(float f10) {
        this.f14757f.w(f10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f14757f.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final void h(float f10) {
        this.f14758g = f10;
    }

    public final void i(float f10, float f11, float f12, float f13) {
        c cVar = this.f14757f;
        float f14 = this.f14759h.getDisplayMetrics().density;
        cVar.z(f11 * f14);
        cVar.q(f10 * f14);
        cVar.t(0);
        cVar.o(f12 * f14, f13 * f14);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f14760i.isRunning();
    }

    public void j(float f10, float f11) {
        this.f14757f.y(f10);
        this.f14757f.v(f11);
        invalidateSelf();
    }

    public void k(float f10) {
        this.f14757f.z(f10);
        invalidateSelf();
    }

    public void l(int i10) {
        if (i10 == 0) {
            i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public final void m() {
        c cVar = this.f14757f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f);
        ofFloat.addUpdateListener(new a(cVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f14754l);
        ofFloat.addListener(new C0383b(cVar));
        this.f14760i = ofFloat;
    }

    public void n(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.r(c((f10 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.r(cVar.h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f14757f.n(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14757f.s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f14760i.cancel();
        this.f14757f.A();
        if (this.f14757f.d() != this.f14757f.g()) {
            this.f14762k = true;
            this.f14760i.setDuration(666L);
            this.f14760i.start();
        } else {
            this.f14757f.t(0);
            this.f14757f.m();
            this.f14760i.setDuration(1332L);
            this.f14760i.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f14760i.cancel();
        h(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f14757f.x(false);
        this.f14757f.t(0);
        this.f14757f.m();
        invalidateSelf();
    }
}
