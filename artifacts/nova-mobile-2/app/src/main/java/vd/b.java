package vd;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: EclairGestureDetector.java */
@TargetApi(5)
/* loaded from: classes2.dex */
public class b extends a {

    /* renamed from: h, reason: collision with root package name */
    public int f15111h;

    /* renamed from: i, reason: collision with root package name */
    public int f15112i;

    public b(Context context) {
        super(context);
        this.f15111h = -1;
        this.f15112i = 0;
    }

    @Override // vd.a, vd.d
    public boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA;
        if (action != 0) {
            if (action == 1 || action == 3) {
                this.f15111h = -1;
            } else if (action == 6) {
                int a10 = ud.a.a(motionEvent.getAction());
                if (motionEvent.getPointerId(a10) == this.f15111h) {
                    int i10 = a10 != 0 ? 0 : 1;
                    this.f15111h = motionEvent.getPointerId(i10);
                    this.f15105b = motionEvent.getX(i10);
                    this.f15106c = motionEvent.getY(i10);
                }
            }
        } else {
            this.f15111h = motionEvent.getPointerId(0);
        }
        int i11 = this.f15111h;
        this.f15112i = motionEvent.findPointerIndex(i11 != -1 ? i11 : 0);
        return super.a(motionEvent);
    }

    @Override // vd.a
    public float e(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f15112i);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    @Override // vd.a
    public float f(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f15112i);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }
}
