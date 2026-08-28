package d9;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import w8.b;

/* compiled from: ChartTouchListener.java */
/* loaded from: classes.dex */
public abstract class b<T extends w8.b<?>> extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {

    /* renamed from: f, reason: collision with root package name */
    public a f5742f = a.NONE;

    /* renamed from: g, reason: collision with root package name */
    public int f5743g = 0;

    /* renamed from: h, reason: collision with root package name */
    public a9.c f5744h;

    /* renamed from: i, reason: collision with root package name */
    public GestureDetector f5745i;

    /* renamed from: j, reason: collision with root package name */
    public T f5746j;

    /* compiled from: ChartTouchListener.java */
    /* loaded from: classes.dex */
    public enum a {
        NONE,
        DRAG,
        X_ZOOM,
        Y_ZOOM,
        PINCH_ZOOM,
        ROTATE,
        SINGLE_TAP,
        DOUBLE_TAP,
        LONG_PRESS,
        FLING
    }

    public b(T t10) {
        this.f5746j = t10;
        this.f5745i = new GestureDetector(t10.getContext(), this);
    }

    public static float a(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f11;
        float f15 = f12 - f13;
        return (float) Math.sqrt((f14 * f14) + (f15 * f15));
    }

    public void b(MotionEvent motionEvent) {
        c onChartGestureListener = this.f5746j.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.f(motionEvent, this.f5742f);
        }
    }

    public void c(a9.c cVar, MotionEvent motionEvent) {
        if (cVar != null && !cVar.a(this.f5744h)) {
            this.f5746j.m(cVar, true);
            this.f5744h = cVar;
        } else {
            this.f5746j.m(null, true);
            this.f5744h = null;
        }
    }

    public void d(a9.c cVar) {
        this.f5744h = cVar;
    }

    public void e(MotionEvent motionEvent) {
        c onChartGestureListener = this.f5746j.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.e(motionEvent, this.f5742f);
        }
    }
}
