package com.yalantis.ucrop.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import fb.b;

/* loaded from: classes.dex */
public class HorizontalProgressWheelView extends View {

    /* renamed from: f, reason: collision with root package name */
    public final Rect f5164f;

    /* renamed from: g, reason: collision with root package name */
    public a f5165g;

    /* renamed from: h, reason: collision with root package name */
    public float f5166h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f5167i;

    /* renamed from: j, reason: collision with root package name */
    public Paint f5168j;

    /* renamed from: k, reason: collision with root package name */
    public int f5169k;

    /* renamed from: l, reason: collision with root package name */
    public int f5170l;

    /* renamed from: m, reason: collision with root package name */
    public int f5171m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5172n;

    /* renamed from: o, reason: collision with root package name */
    public float f5173o;

    /* renamed from: p, reason: collision with root package name */
    public int f5174p;

    /* loaded from: classes.dex */
    public interface a {
        void a(float f10, float f11);

        void b();

        void c();
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        this.f5174p = f0.a.d(getContext(), fb.a.f6554m);
        this.f5169k = getContext().getResources().getDimensionPixelSize(b.f6563i);
        this.f5170l = getContext().getResources().getDimensionPixelSize(b.f6560f);
        this.f5171m = getContext().getResources().getDimensionPixelSize(b.f6561g);
        Paint paint = new Paint(1);
        this.f5167i = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f5167i.setStrokeWidth(this.f5169k);
        this.f5167i.setColor(getResources().getColor(fb.a.f6548g));
        Paint paint2 = new Paint(this.f5167i);
        this.f5168j = paint2;
        paint2.setColor(this.f5174p);
        this.f5168j.setStrokeCap(Paint.Cap.ROUND);
        this.f5168j.setStrokeWidth(getContext().getResources().getDimensionPixelSize(b.f6564j));
    }

    public final void b(MotionEvent motionEvent, float f10) {
        this.f5173o -= f10;
        postInvalidate();
        this.f5166h = motionEvent.getX();
        a aVar = this.f5165g;
        if (aVar != null) {
            aVar.a(-f10, this.f5173o);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.f5164f);
        int width = this.f5164f.width() / (this.f5169k + this.f5171m);
        float f10 = this.f5173o % (r2 + r1);
        for (int i10 = 0; i10 < width; i10++) {
            int i11 = width / 4;
            if (i10 < i11) {
                this.f5167i.setAlpha((int) ((i10 / i11) * 255.0f));
            } else if (i10 > (width * 3) / 4) {
                this.f5167i.setAlpha((int) (((width - i10) / i11) * 255.0f));
            } else {
                this.f5167i.setAlpha(BaseProgressIndicator.MAX_ALPHA);
            }
            float f11 = -f10;
            Rect rect = this.f5164f;
            float f12 = rect.left + f11 + ((this.f5169k + this.f5171m) * i10);
            float centerY = rect.centerY() - (this.f5170l / 4.0f);
            Rect rect2 = this.f5164f;
            canvas.drawLine(f12, centerY, f11 + rect2.left + ((this.f5169k + this.f5171m) * i10), rect2.centerY() + (this.f5170l / 4.0f), this.f5167i);
        }
        canvas.drawLine(this.f5164f.centerX(), this.f5164f.centerY() - (this.f5170l / 2.0f), this.f5164f.centerX(), (this.f5170l / 2.0f) + this.f5164f.centerY(), this.f5168j);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f5166h = motionEvent.getX();
        } else if (action == 1) {
            a aVar = this.f5165g;
            if (aVar != null) {
                this.f5172n = false;
                aVar.b();
            }
        } else if (action == 2) {
            float x10 = motionEvent.getX() - this.f5166h;
            if (x10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                if (!this.f5172n) {
                    this.f5172n = true;
                    a aVar2 = this.f5165g;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                }
                b(motionEvent, x10);
            }
        }
        return true;
    }

    public void setMiddleLineColor(int i10) {
        this.f5174p = i10;
        this.f5168j.setColor(i10);
        invalidate();
    }

    public void setScrollingListener(a aVar) {
        this.f5165g = aVar;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5164f = new Rect();
        a();
    }
}
