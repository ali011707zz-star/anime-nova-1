package d9;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import d9.b;
import g9.i;
import y8.j;

/* compiled from: BarLineChartTouchListener.java */
/* loaded from: classes.dex */
public class a extends b<w8.a<? extends y8.d<? extends c9.b<? extends j>>>> {

    /* renamed from: k, reason: collision with root package name */
    public Matrix f5728k;

    /* renamed from: l, reason: collision with root package name */
    public Matrix f5729l;

    /* renamed from: m, reason: collision with root package name */
    public g9.e f5730m;

    /* renamed from: n, reason: collision with root package name */
    public g9.e f5731n;

    /* renamed from: o, reason: collision with root package name */
    public float f5732o;

    /* renamed from: p, reason: collision with root package name */
    public float f5733p;

    /* renamed from: q, reason: collision with root package name */
    public float f5734q;

    /* renamed from: r, reason: collision with root package name */
    public c9.d f5735r;

    /* renamed from: s, reason: collision with root package name */
    public VelocityTracker f5736s;

    /* renamed from: t, reason: collision with root package name */
    public long f5737t;

    /* renamed from: u, reason: collision with root package name */
    public g9.e f5738u;

    /* renamed from: v, reason: collision with root package name */
    public g9.e f5739v;

    /* renamed from: w, reason: collision with root package name */
    public float f5740w;

    /* renamed from: x, reason: collision with root package name */
    public float f5741x;

    public a(w8.a<? extends y8.d<? extends c9.b<? extends j>>> aVar, Matrix matrix, float f10) {
        super(aVar);
        this.f5728k = new Matrix();
        this.f5729l = new Matrix();
        this.f5730m = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5731n = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5732o = 1.0f;
        this.f5733p = 1.0f;
        this.f5734q = 1.0f;
        this.f5737t = 0L;
        this.f5738u = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5739v = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5728k = matrix;
        this.f5740w = i.e(f10);
        this.f5741x = i.e(3.5f);
    }

    public static float h(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX(0) - motionEvent.getX(1));
    }

    public static float i(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getY(0) - motionEvent.getY(1));
    }

    public static void k(g9.e eVar, MotionEvent motionEvent) {
        float x10 = motionEvent.getX(0) + motionEvent.getX(1);
        float y10 = motionEvent.getY(0) + motionEvent.getY(1);
        eVar.f7055c = x10 / 2.0f;
        eVar.f7056d = y10 / 2.0f;
    }

    public static float p(MotionEvent motionEvent) {
        float x10 = motionEvent.getX(0) - motionEvent.getX(1);
        float y10 = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x10 * x10) + (y10 * y10));
    }

    public void f() {
        g9.e eVar = this.f5739v;
        float f10 = eVar.f7055c;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && eVar.f7056d == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f5739v.f7055c *= ((w8.a) this.f5746j).getDragDecelerationFrictionCoef();
        this.f5739v.f7056d *= ((w8.a) this.f5746j).getDragDecelerationFrictionCoef();
        float f12 = ((float) (currentAnimationTimeMillis - this.f5737t)) / 1000.0f;
        g9.e eVar2 = this.f5739v;
        float f13 = eVar2.f7055c * f12;
        float f14 = eVar2.f7056d * f12;
        g9.e eVar3 = this.f5738u;
        float f15 = eVar3.f7055c + f13;
        eVar3.f7055c = f15;
        float f16 = eVar3.f7056d + f14;
        eVar3.f7056d = f16;
        MotionEvent obtain = MotionEvent.obtain(currentAnimationTimeMillis, currentAnimationTimeMillis, 2, f15, f16, 0);
        float f17 = ((w8.a) this.f5746j).I() ? this.f5738u.f7055c - this.f5730m.f7055c : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (((w8.a) this.f5746j).J()) {
            f11 = this.f5738u.f7056d - this.f5730m.f7056d;
        }
        l(obtain, f17, f11);
        obtain.recycle();
        this.f5728k = ((w8.a) this.f5746j).getViewPortHandler().J(this.f5728k, this.f5746j, false);
        this.f5737t = currentAnimationTimeMillis;
        if (Math.abs(this.f5739v.f7055c) < 0.01d && Math.abs(this.f5739v.f7056d) < 0.01d) {
            ((w8.a) this.f5746j).f();
            ((w8.a) this.f5746j).postInvalidate();
            q();
            return;
        }
        i.x(this.f5746j);
    }

    public g9.e g(float f10, float f11) {
        float f12;
        g9.j viewPortHandler = ((w8.a) this.f5746j).getViewPortHandler();
        float G = f10 - viewPortHandler.G();
        if (j()) {
            f12 = -(f11 - viewPortHandler.I());
        } else {
            f12 = -((((w8.a) this.f5746j).getMeasuredHeight() - f11) - viewPortHandler.F());
        }
        return g9.e.c(G, f12);
    }

    public final boolean j() {
        c9.d dVar;
        return (this.f5735r == null && ((w8.a) this.f5746j).E()) || ((dVar = this.f5735r) != null && ((w8.a) this.f5746j).a(dVar.a0()));
    }

    public final void l(MotionEvent motionEvent, float f10, float f11) {
        this.f5742f = b.a.DRAG;
        this.f5728k.set(this.f5729l);
        c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
        if (j()) {
            if (this.f5746j instanceof w8.c) {
                f10 = -f10;
            } else {
                f11 = -f11;
            }
        }
        this.f5728k.postTranslate(f10, f11);
        if (onChartGestureListener != null) {
            onChartGestureListener.c(motionEvent, f10, f11);
        }
    }

    public final void m(MotionEvent motionEvent) {
        a9.c k10 = ((w8.a) this.f5746j).k(motionEvent.getX(), motionEvent.getY());
        if (k10 == null || k10.a(this.f5744h)) {
            return;
        }
        this.f5744h = k10;
        ((w8.a) this.f5746j).m(k10, true);
    }

    public final void n(MotionEvent motionEvent) {
        boolean b10;
        boolean a10;
        boolean a11;
        boolean b11;
        if (motionEvent.getPointerCount() >= 2) {
            c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
            float p10 = p(motionEvent);
            if (p10 > this.f5741x) {
                g9.e eVar = this.f5731n;
                g9.e g10 = g(eVar.f7055c, eVar.f7056d);
                g9.j viewPortHandler = ((w8.a) this.f5746j).getViewPortHandler();
                int i10 = this.f5743g;
                if (i10 == 4) {
                    this.f5742f = b.a.PINCH_ZOOM;
                    float f10 = p10 / this.f5734q;
                    boolean z10 = f10 < 1.0f;
                    if (z10) {
                        a11 = viewPortHandler.c();
                    } else {
                        a11 = viewPortHandler.a();
                    }
                    if (z10) {
                        b11 = viewPortHandler.d();
                    } else {
                        b11 = viewPortHandler.b();
                    }
                    float f11 = ((w8.a) this.f5746j).N() ? f10 : 1.0f;
                    float f12 = ((w8.a) this.f5746j).O() ? f10 : 1.0f;
                    if (b11 || a11) {
                        this.f5728k.set(this.f5729l);
                        this.f5728k.postScale(f11, f12, g10.f7055c, g10.f7056d);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.b(motionEvent, f11, f12);
                        }
                    }
                } else if (i10 == 2 && ((w8.a) this.f5746j).N()) {
                    this.f5742f = b.a.X_ZOOM;
                    float h10 = h(motionEvent) / this.f5732o;
                    if (h10 < 1.0f) {
                        a10 = viewPortHandler.c();
                    } else {
                        a10 = viewPortHandler.a();
                    }
                    if (a10) {
                        this.f5728k.set(this.f5729l);
                        this.f5728k.postScale(h10, 1.0f, g10.f7055c, g10.f7056d);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.b(motionEvent, h10, 1.0f);
                        }
                    }
                } else if (this.f5743g == 3 && ((w8.a) this.f5746j).O()) {
                    this.f5742f = b.a.Y_ZOOM;
                    float i11 = i(motionEvent) / this.f5733p;
                    if (i11 < 1.0f) {
                        b10 = viewPortHandler.d();
                    } else {
                        b10 = viewPortHandler.b();
                    }
                    if (b10) {
                        this.f5728k.set(this.f5729l);
                        this.f5728k.postScale(1.0f, i11, g10.f7055c, g10.f7056d);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.b(motionEvent, 1.0f, i11);
                        }
                    }
                }
                g9.e.f(g10);
            }
        }
    }

    public final void o(MotionEvent motionEvent) {
        this.f5729l.set(this.f5728k);
        this.f5730m.f7055c = motionEvent.getX();
        this.f5730m.f7056d = motionEvent.getY();
        this.f5735r = ((w8.a) this.f5746j).C(motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.f5742f = b.a.DOUBLE_TAP;
        c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.a(motionEvent);
        }
        if (((w8.a) this.f5746j).G() && ((y8.d) ((w8.a) this.f5746j).getData()).h() > 0) {
            g9.e g10 = g(motionEvent.getX(), motionEvent.getY());
            T t10 = this.f5746j;
            ((w8.a) t10).R(((w8.a) t10).N() ? 1.4f : 1.0f, ((w8.a) this.f5746j).O() ? 1.4f : 1.0f, g10.f7055c, g10.f7056d);
            if (((w8.a) this.f5746j).r()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Double-Tap, Zooming In, x: ");
                sb2.append(g10.f7055c);
                sb2.append(", y: ");
                sb2.append(g10.f7056d);
            }
            g9.e.f(g10);
        }
        return super.onDoubleTap(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f5742f = b.a.FLING;
        c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.d(motionEvent, motionEvent2, f10, f11);
        }
        return super.onFling(motionEvent, motionEvent2, f10, f11);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.f5742f = b.a.LONG_PRESS;
        c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.h(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f5742f = b.a.SINGLE_TAP;
        c onChartGestureListener = ((w8.a) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.g(motionEvent);
        }
        if (!((w8.a) this.f5746j).q()) {
            return false;
        }
        c(((w8.a) this.f5746j).k(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return super.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (this.f5736s == null) {
            this.f5736s = VelocityTracker.obtain();
        }
        this.f5736s.addMovement(motionEvent);
        if (motionEvent.getActionMasked() == 3 && (velocityTracker = this.f5736s) != null) {
            velocityTracker.recycle();
            this.f5736s = null;
        }
        if (this.f5743g == 0) {
            this.f5745i.onTouchEvent(motionEvent);
        }
        if (!((w8.a) this.f5746j).H() && !((w8.a) this.f5746j).N() && !((w8.a) this.f5746j).O()) {
            return true;
        }
        int action = motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA;
        if (action != 0) {
            if (action == 1) {
                VelocityTracker velocityTracker2 = this.f5736s;
                int pointerId = motionEvent.getPointerId(0);
                velocityTracker2.computeCurrentVelocity(1000, i.o());
                float yVelocity = velocityTracker2.getYVelocity(pointerId);
                float xVelocity = velocityTracker2.getXVelocity(pointerId);
                if ((Math.abs(xVelocity) > i.p() || Math.abs(yVelocity) > i.p()) && this.f5743g == 1 && ((w8.a) this.f5746j).o()) {
                    q();
                    this.f5737t = AnimationUtils.currentAnimationTimeMillis();
                    this.f5738u.f7055c = motionEvent.getX();
                    this.f5738u.f7056d = motionEvent.getY();
                    g9.e eVar = this.f5739v;
                    eVar.f7055c = xVelocity;
                    eVar.f7056d = yVelocity;
                    i.x(this.f5746j);
                }
                int i10 = this.f5743g;
                if (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) {
                    ((w8.a) this.f5746j).f();
                    ((w8.a) this.f5746j).postInvalidate();
                }
                this.f5743g = 0;
                ((w8.a) this.f5746j).j();
                VelocityTracker velocityTracker3 = this.f5736s;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f5736s = null;
                }
                b(motionEvent);
            } else if (action == 2) {
                int i11 = this.f5743g;
                if (i11 == 1) {
                    ((w8.a) this.f5746j).g();
                    boolean I = ((w8.a) this.f5746j).I();
                    float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    float x10 = I ? motionEvent.getX() - this.f5730m.f7055c : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    if (((w8.a) this.f5746j).J()) {
                        f10 = motionEvent.getY() - this.f5730m.f7056d;
                    }
                    l(motionEvent, x10, f10);
                } else if (i11 != 2 && i11 != 3 && i11 != 4) {
                    if (i11 == 0 && Math.abs(b.a(motionEvent.getX(), this.f5730m.f7055c, motionEvent.getY(), this.f5730m.f7056d)) > this.f5740w && ((w8.a) this.f5746j).H()) {
                        if ((((w8.a) this.f5746j).K() && ((w8.a) this.f5746j).D()) ? false : true) {
                            float abs = Math.abs(motionEvent.getX() - this.f5730m.f7055c);
                            float abs2 = Math.abs(motionEvent.getY() - this.f5730m.f7056d);
                            if ((((w8.a) this.f5746j).I() || abs2 >= abs) && (((w8.a) this.f5746j).J() || abs2 <= abs)) {
                                this.f5742f = b.a.DRAG;
                                this.f5743g = 1;
                            }
                        } else if (((w8.a) this.f5746j).L()) {
                            this.f5742f = b.a.DRAG;
                            if (((w8.a) this.f5746j).L()) {
                                m(motionEvent);
                            }
                        }
                    }
                } else {
                    ((w8.a) this.f5746j).g();
                    if (((w8.a) this.f5746j).N() || ((w8.a) this.f5746j).O()) {
                        n(motionEvent);
                    }
                }
            } else if (action == 3) {
                this.f5743g = 0;
                b(motionEvent);
            } else if (action != 5) {
                if (action == 6) {
                    i.z(motionEvent, this.f5736s);
                    this.f5743g = 5;
                }
            } else if (motionEvent.getPointerCount() >= 2) {
                ((w8.a) this.f5746j).g();
                o(motionEvent);
                this.f5732o = h(motionEvent);
                this.f5733p = i(motionEvent);
                float p10 = p(motionEvent);
                this.f5734q = p10;
                if (p10 > 10.0f) {
                    if (((w8.a) this.f5746j).M()) {
                        this.f5743g = 4;
                    } else if (((w8.a) this.f5746j).N() != ((w8.a) this.f5746j).O()) {
                        this.f5743g = ((w8.a) this.f5746j).N() ? 2 : 3;
                    } else {
                        this.f5743g = this.f5732o > this.f5733p ? 2 : 3;
                    }
                }
                k(this.f5731n, motionEvent);
            }
        } else {
            e(motionEvent);
            q();
            o(motionEvent);
        }
        this.f5728k = ((w8.a) this.f5746j).getViewPortHandler().J(this.f5728k, this.f5746j, true);
        return true;
    }

    public void q() {
        g9.e eVar = this.f5739v;
        eVar.f7055c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        eVar.f7056d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }
}
