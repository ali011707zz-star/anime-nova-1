package uk.co.senab.photoview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ImageView;

/* compiled from: DefaultOnDoubleTapListener.java */
/* loaded from: classes2.dex */
public class a implements GestureDetector.OnDoubleTapListener {

    /* renamed from: f, reason: collision with root package name */
    public c f14680f;

    public a(c cVar) {
        a(cVar);
    }

    public void a(c cVar) {
        this.f14680f = cVar;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        c cVar = this.f14680f;
        if (cVar == null) {
            return false;
        }
        try {
            float z10 = cVar.z();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (z10 < this.f14680f.v()) {
                c cVar2 = this.f14680f;
                cVar2.V(cVar2.v(), x10, y10, true);
            } else if (z10 >= this.f14680f.v() && z10 < this.f14680f.u()) {
                c cVar3 = this.f14680f;
                cVar3.V(cVar3.u(), x10, y10, true);
            } else {
                c cVar4 = this.f14680f;
                cVar4.V(cVar4.w(), x10, y10, true);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        RectF o10;
        c cVar = this.f14680f;
        if (cVar == null) {
            return false;
        }
        ImageView r10 = cVar.r();
        if (this.f14680f.x() != null && (o10 = this.f14680f.o()) != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (o10.contains(x10, y10)) {
                this.f14680f.x().a(r10, (x10 - o10.left) / o10.width(), (y10 - o10.top) / o10.height());
                return true;
            }
        }
        if (this.f14680f.y() != null) {
            this.f14680f.y().a(r10, motionEvent.getX(), motionEvent.getY());
        }
        return false;
    }
}
