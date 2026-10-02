package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import fb.e;
import fb.h;
import gb.c;
import gb.d;

/* loaded from: classes.dex */
public class UCropView extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public GestureCropImageView f5152f;

    /* renamed from: g, reason: collision with root package name */
    public final OverlayView f5153g;

    /* loaded from: classes.dex */
    public class a implements c {
        public a() {
        }

        @Override // gb.c
        public void a(float f10) {
            UCropView.this.f5153g.setTargetAspectRatio(f10);
        }
    }

    /* loaded from: classes.dex */
    public class b implements d {
        public b() {
        }

        @Override // gb.d
        public void a(RectF rectF) {
            UCropView.this.f5152f.setCropRect(rectF);
        }
    }

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void c() {
        this.f5152f.setCropBoundsChangeListener(new a());
        this.f5153g.setOverlayViewChangeListener(new b());
    }

    public GestureCropImageView getCropImageView() {
        return this.f5152f;
    }

    public OverlayView getOverlayView() {
        return this.f5153g;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public UCropView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(e.f6596d, (ViewGroup) this, true);
        this.f5152f = (GestureCropImageView) findViewById(fb.d.f6568b);
        OverlayView overlayView = (OverlayView) findViewById(fb.d.f6591y);
        this.f5153g = overlayView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.U);
        overlayView.g(obtainStyledAttributes);
        this.f5152f.y(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        c();
    }
}
