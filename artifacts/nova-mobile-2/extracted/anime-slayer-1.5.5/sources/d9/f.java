package d9;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d9.b;
import g9.i;
import java.util.ArrayList;

/* compiled from: PieRadarChartTouchListener.java */
/* loaded from: classes.dex */
public class f extends b<w8.d<?>> {

    /* renamed from: k, reason: collision with root package name */
    public g9.e f5758k;

    /* renamed from: l, reason: collision with root package name */
    public float f5759l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList<a> f5760m;

    /* renamed from: n, reason: collision with root package name */
    public long f5761n;

    /* renamed from: o, reason: collision with root package name */
    public float f5762o;

    /* compiled from: PieRadarChartTouchListener.java */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        public long f5763a;

        /* renamed from: b, reason: collision with root package name */
        public float f5764b;

        public a(long j10, float f10) {
            this.f5763a = j10;
            this.f5764b = f10;
        }
    }

    public f(w8.d<?> dVar) {
        super(dVar);
        this.f5758k = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5759l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f5760m = new ArrayList<>();
        this.f5761n = 0L;
        this.f5762o = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public final float f() {
        if (this.f5760m.isEmpty()) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        a aVar = this.f5760m.get(0);
        ArrayList<a> arrayList = this.f5760m;
        a aVar2 = arrayList.get(arrayList.size() - 1);
        a aVar3 = aVar;
        for (int size = this.f5760m.size() - 1; size >= 0; size--) {
            aVar3 = this.f5760m.get(size);
            if (aVar3.f5764b != aVar2.f5764b) {
                break;
            }
        }
        float f10 = ((float) (aVar2.f5763a - aVar.f5763a)) / 1000.0f;
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = 0.1f;
        }
        boolean z10 = aVar2.f5764b >= aVar3.f5764b;
        if (Math.abs(r1 - r6) > 270.0d) {
            z10 = !z10;
        }
        float f11 = aVar2.f5764b;
        float f12 = aVar.f5764b;
        if (f11 - f12 > 180.0d) {
            double d10 = f12;
            Double.isNaN(d10);
            aVar.f5764b = (float) (d10 + 360.0d);
        } else if (f12 - f11 > 180.0d) {
            double d11 = f11;
            Double.isNaN(d11);
            aVar2.f5764b = (float) (d11 + 360.0d);
        }
        float abs = Math.abs((aVar2.f5764b - aVar.f5764b) / f10);
        return !z10 ? -abs : abs;
    }

    public void g() {
        if (this.f5762o == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f5762o *= ((w8.d) this.f5746j).getDragDecelerationFrictionCoef();
        float f10 = ((float) (currentAnimationTimeMillis - this.f5761n)) / 1000.0f;
        T t10 = this.f5746j;
        ((w8.d) t10).setRotationAngle(((w8.d) t10).getRotationAngle() + (this.f5762o * f10));
        this.f5761n = currentAnimationTimeMillis;
        if (Math.abs(this.f5762o) >= 0.001d) {
            i.x(this.f5746j);
        } else {
            k();
        }
    }

    public final void h() {
        this.f5760m.clear();
    }

    public final void i(float f10, float f11) {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f5760m.add(new a(currentAnimationTimeMillis, ((w8.d) this.f5746j).z(f10, f11)));
        for (int size = this.f5760m.size(); size - 2 > 0 && currentAnimationTimeMillis - this.f5760m.get(0).f5763a > 1000; size--) {
            this.f5760m.remove(0);
        }
    }

    public void j(float f10, float f11) {
        this.f5759l = ((w8.d) this.f5746j).z(f10, f11) - ((w8.d) this.f5746j).getRawRotationAngle();
    }

    public void k() {
        this.f5762o = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public void l(float f10, float f11) {
        T t10 = this.f5746j;
        ((w8.d) t10).setRotationAngle(((w8.d) t10).z(f10, f11) - this.f5759l);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.f5742f = b.a.LONG_PRESS;
        c onChartGestureListener = ((w8.d) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.h(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f5742f = b.a.SINGLE_TAP;
        c onChartGestureListener = ((w8.d) this.f5746j).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.g(motionEvent);
        }
        if (!((w8.d) this.f5746j).q()) {
            return false;
        }
        c(((w8.d) this.f5746j).k(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f5745i.onTouchEvent(motionEvent) && ((w8.d) this.f5746j).D()) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                e(motionEvent);
                k();
                h();
                if (((w8.d) this.f5746j).o()) {
                    i(x10, y10);
                }
                j(x10, y10);
                g9.e eVar = this.f5758k;
                eVar.f7055c = x10;
                eVar.f7056d = y10;
            } else if (action == 1) {
                if (((w8.d) this.f5746j).o()) {
                    k();
                    i(x10, y10);
                    float f10 = f();
                    this.f5762o = f10;
                    if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        this.f5761n = AnimationUtils.currentAnimationTimeMillis();
                        i.x(this.f5746j);
                    }
                }
                ((w8.d) this.f5746j).j();
                this.f5743g = 0;
                b(motionEvent);
            } else if (action == 2) {
                if (((w8.d) this.f5746j).o()) {
                    i(x10, y10);
                }
                if (this.f5743g == 0) {
                    g9.e eVar2 = this.f5758k;
                    if (b.a(x10, eVar2.f7055c, y10, eVar2.f7056d) > i.e(8.0f)) {
                        this.f5742f = b.a.ROTATE;
                        this.f5743g = 6;
                        ((w8.d) this.f5746j).g();
                        b(motionEvent);
                    }
                }
                if (this.f5743g == 6) {
                    l(x10, y10);
                    ((w8.d) this.f5746j).invalidate();
                }
                b(motionEvent);
            }
        }
        return true;
    }
}
