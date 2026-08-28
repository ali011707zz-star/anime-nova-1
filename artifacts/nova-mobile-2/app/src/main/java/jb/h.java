package jb;

import android.view.MotionEvent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: RotationGestureDetector.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public float f9158a;

    /* renamed from: b, reason: collision with root package name */
    public float f9159b;

    /* renamed from: c, reason: collision with root package name */
    public float f9160c;

    /* renamed from: d, reason: collision with root package name */
    public float f9161d;

    /* renamed from: e, reason: collision with root package name */
    public int f9162e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f9163f = -1;

    /* renamed from: g, reason: collision with root package name */
    public float f9164g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f9165h;

    /* renamed from: i, reason: collision with root package name */
    public a f9166i;

    /* compiled from: RotationGestureDetector.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a(h hVar);
    }

    /* compiled from: RotationGestureDetector.java */
    /* loaded from: classes.dex */
    public static class b implements a {
    }

    public h(a aVar) {
        this.f9166i = aVar;
    }

    public final float a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return b((float) Math.toDegrees((float) Math.atan2(f11 - f13, f10 - f12)), (float) Math.toDegrees((float) Math.atan2(f15 - f17, f14 - f16)));
    }

    public final float b(float f10, float f11) {
        float f12 = (f11 % 360.0f) - (f10 % 360.0f);
        this.f9164g = f12;
        if (f12 < -180.0f) {
            this.f9164g = f12 + 360.0f;
        } else if (f12 > 180.0f) {
            this.f9164g = f12 - 360.0f;
        }
        return this.f9164g;
    }

    public float c() {
        return this.f9164g;
    }

    public boolean d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f9160c = motionEvent.getX();
            this.f9161d = motionEvent.getY();
            this.f9162e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            this.f9164g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f9165h = true;
        } else if (actionMasked == 1) {
            this.f9162e = -1;
        } else if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.f9158a = motionEvent.getX();
                this.f9159b = motionEvent.getY();
                this.f9163f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.f9164g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                this.f9165h = true;
            } else if (actionMasked == 6) {
                this.f9163f = -1;
            }
        } else if (this.f9162e != -1 && this.f9163f != -1 && motionEvent.getPointerCount() > this.f9163f) {
            float x10 = motionEvent.getX(this.f9162e);
            float y10 = motionEvent.getY(this.f9162e);
            float x11 = motionEvent.getX(this.f9163f);
            float y11 = motionEvent.getY(this.f9163f);
            if (this.f9165h) {
                this.f9164g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                this.f9165h = false;
            } else {
                a(this.f9158a, this.f9159b, this.f9160c, this.f9161d, x11, y11, x10, y10);
            }
            a aVar = this.f9166i;
            if (aVar != null) {
                aVar.a(this);
            }
            this.f9158a = x11;
            this.f9159b = y11;
            this.f9160c = x10;
            this.f9161d = y10;
        }
        return true;
    }
}
