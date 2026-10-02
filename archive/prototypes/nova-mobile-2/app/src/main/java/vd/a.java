package vd;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* compiled from: CupcakeGestureDetector.java */
/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public e f15104a;

    /* renamed from: b, reason: collision with root package name */
    public float f15105b;

    /* renamed from: c, reason: collision with root package name */
    public float f15106c;

    /* renamed from: d, reason: collision with root package name */
    public final float f15107d;

    /* renamed from: e, reason: collision with root package name */
    public final float f15108e;

    /* renamed from: f, reason: collision with root package name */
    public VelocityTracker f15109f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15110g;

    public a(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f15108e = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f15107d = viewConfiguration.getScaledTouchSlop();
    }

    @Override // vd.d
    public boolean a(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int action = motionEvent.getAction();
        if (action == 0) {
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f15109f = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            } else {
                wd.a.a().i("CupcakeGestureDetector", "Velocity tracker is null");
            }
            this.f15105b = e(motionEvent);
            this.f15106c = f(motionEvent);
            this.f15110g = false;
        } else if (action == 1) {
            if (this.f15110g && this.f15109f != null) {
                this.f15105b = e(motionEvent);
                this.f15106c = f(motionEvent);
                this.f15109f.addMovement(motionEvent);
                this.f15109f.computeCurrentVelocity(1000);
                float xVelocity = this.f15109f.getXVelocity();
                float yVelocity = this.f15109f.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f15108e) {
                    this.f15104a.c(this.f15105b, this.f15106c, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker2 = this.f15109f;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f15109f = null;
            }
        } else if (action == 2) {
            float e10 = e(motionEvent);
            float f10 = f(motionEvent);
            float f11 = e10 - this.f15105b;
            float f12 = f10 - this.f15106c;
            if (!this.f15110g) {
                this.f15110g = Math.sqrt((double) ((f11 * f11) + (f12 * f12))) >= ((double) this.f15107d);
            }
            if (this.f15110g) {
                this.f15104a.b(f11, f12);
                this.f15105b = e10;
                this.f15106c = f10;
                VelocityTracker velocityTracker3 = this.f15109f;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
            }
        } else if (action == 3 && (velocityTracker = this.f15109f) != null) {
            velocityTracker.recycle();
            this.f15109f = null;
        }
        return true;
    }

    @Override // vd.d
    public void b(e eVar) {
        this.f15104a = eVar;
    }

    @Override // vd.d
    public boolean c() {
        return false;
    }

    @Override // vd.d
    public boolean d() {
        return this.f15110g;
    }

    public float e(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    public float f(MotionEvent motionEvent) {
        return motionEvent.getY();
    }
}
