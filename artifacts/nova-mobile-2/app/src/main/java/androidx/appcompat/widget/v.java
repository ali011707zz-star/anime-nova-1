package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: AppCompatSeekBarHelper.java */
/* loaded from: classes.dex */
public class v extends r {

    /* renamed from: d, reason: collision with root package name */
    public final SeekBar f1492d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f1493e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f1494f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f1495g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1496h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1497i;

    public v(SeekBar seekBar) {
        super(seekBar);
        this.f1494f = null;
        this.f1495g = null;
        this.f1496h = false;
        this.f1497i = false;
        this.f1492d = seekBar;
    }

    @Override // androidx.appcompat.widget.r
    public void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        Context context = this.f1492d.getContext();
        int[] iArr = d.j.T;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        SeekBar seekBar = this.f1492d;
        q0.b0.r0(seekBar, seekBar.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        Drawable h10 = v10.h(d.j.U);
        if (h10 != null) {
            this.f1492d.setThumb(h10);
        }
        j(v10.g(d.j.V));
        int i11 = d.j.X;
        if (v10.s(i11)) {
            this.f1495g = d0.e(v10.k(i11, -1), this.f1495g);
            this.f1497i = true;
        }
        int i12 = d.j.W;
        if (v10.s(i12)) {
            this.f1494f = v10.c(i12);
            this.f1496h = true;
        }
        v10.w();
        f();
    }

    public final void f() {
        Drawable drawable = this.f1493e;
        if (drawable != null) {
            if (this.f1496h || this.f1497i) {
                Drawable r10 = i0.a.r(drawable.mutate());
                this.f1493e = r10;
                if (this.f1496h) {
                    i0.a.o(r10, this.f1494f);
                }
                if (this.f1497i) {
                    i0.a.p(this.f1493e, this.f1495g);
                }
                if (this.f1493e.isStateful()) {
                    this.f1493e.setState(this.f1492d.getDrawableState());
                }
            }
        }
    }

    public void g(Canvas canvas) {
        if (this.f1493e != null) {
            int max = this.f1492d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1493e.getIntrinsicWidth();
                int intrinsicHeight = this.f1493e.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1493e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f1492d.getWidth() - this.f1492d.getPaddingLeft()) - this.f1492d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f1492d.getPaddingLeft(), this.f1492d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f1493e.draw(canvas);
                    canvas.translate(width, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    public void h() {
        Drawable drawable = this.f1493e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1492d.getDrawableState())) {
            this.f1492d.invalidateDrawable(drawable);
        }
    }

    public void i() {
        Drawable drawable = this.f1493e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void j(Drawable drawable) {
        Drawable drawable2 = this.f1493e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1493e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1492d);
            i0.a.m(drawable, q0.b0.E(this.f1492d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1492d.getDrawableState());
            }
            f();
        }
        this.f1492d.invalidate();
    }
}
