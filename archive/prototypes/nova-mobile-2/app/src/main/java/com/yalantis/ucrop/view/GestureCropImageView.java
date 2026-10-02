package com.yalantis.ucrop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import jb.h;

/* loaded from: classes.dex */
public class GestureCropImageView extends kb.a {
    public ScaleGestureDetector G;
    public h H;
    public GestureDetector I;
    public float J;
    public float K;
    public boolean L;
    public boolean M;
    public int N;

    /* loaded from: classes.dex */
    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.B(gestureCropImageView.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200L);
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            GestureCropImageView.this.m(-f10, -f11);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class c extends h.b {
        public c() {
        }

        @Override // jb.h.a
        public boolean a(h hVar) {
            GestureCropImageView.this.k(hVar.c(), GestureCropImageView.this.J, GestureCropImageView.this.K);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class d extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public d() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.l(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.J, GestureCropImageView.this.K);
            return true;
        }
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void I() {
        this.I = new GestureDetector(getContext(), new b(), null, true);
        this.G = new ScaleGestureDetector(getContext(), new d());
        this.H = new h(new c());
    }

    public int getDoubleTapScaleSteps() {
        return this.N;
    }

    public float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.N));
    }

    @Override // kb.b
    public void i() {
        super.i();
        I();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA) == 0) {
            t();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.J = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.K = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        this.I.onTouchEvent(motionEvent);
        if (this.M) {
            this.G.onTouchEvent(motionEvent);
        }
        if (this.L) {
            this.H.d(motionEvent);
        }
        if ((motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA) == 1) {
            z();
        }
        return true;
    }

    public void setDoubleTapScaleSteps(int i10) {
        this.N = i10;
    }

    public void setRotateEnabled(boolean z10) {
        this.L = z10;
    }

    public void setScaleEnabled(boolean z10) {
        this.M = z10;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.L = true;
        this.M = true;
        this.N = 5;
    }
}
