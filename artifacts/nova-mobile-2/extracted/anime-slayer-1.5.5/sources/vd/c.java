package vd;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* compiled from: FroyoGestureDetector.java */
@TargetApi(8)
/* loaded from: classes2.dex */
public class c extends b {

    /* renamed from: j, reason: collision with root package name */
    public final ScaleGestureDetector f15113j;

    /* compiled from: FroyoGestureDetector.java */
    /* loaded from: classes2.dex */
    public class a implements ScaleGestureDetector.OnScaleGestureListener {
        public a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            c.this.f15104a.a(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public c(Context context) {
        super(context);
        this.f15113j = new ScaleGestureDetector(context, new a());
    }

    @Override // vd.b, vd.a, vd.d
    public boolean a(MotionEvent motionEvent) {
        this.f15113j.onTouchEvent(motionEvent);
        return super.a(motionEvent);
    }

    @Override // vd.a, vd.d
    public boolean c() {
        return this.f15113j.isInProgress();
    }
}
