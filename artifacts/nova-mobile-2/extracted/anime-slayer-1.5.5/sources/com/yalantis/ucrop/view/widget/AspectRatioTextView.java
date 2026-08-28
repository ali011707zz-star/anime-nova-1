package com.yalantis.ucrop.view.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import f0.a;
import fb.b;
import fb.h;
import java.util.Locale;

/* loaded from: classes.dex */
public class AspectRatioTextView extends AppCompatTextView {

    /* renamed from: f, reason: collision with root package name */
    public final float f5156f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f5157g;

    /* renamed from: h, reason: collision with root package name */
    public Paint f5158h;

    /* renamed from: i, reason: collision with root package name */
    public int f5159i;

    /* renamed from: j, reason: collision with root package name */
    public float f5160j;

    /* renamed from: k, reason: collision with root package name */
    public String f5161k;

    /* renamed from: l, reason: collision with root package name */
    public float f5162l;

    /* renamed from: m, reason: collision with root package name */
    public float f5163m;

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void c(int i10) {
        Paint paint = this.f5158h;
        if (paint != null) {
            paint.setColor(i10);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[]{0}}, new int[]{i10, a.d(getContext(), fb.a.f6552k)}));
    }

    public float d(boolean z10) {
        if (z10) {
            g();
            f();
        }
        return this.f5160j;
    }

    public final void e(TypedArray typedArray) {
        setGravity(1);
        this.f5161k = typedArray.getString(h.R);
        this.f5162l = typedArray.getFloat(h.S, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float f10 = typedArray.getFloat(h.T, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f5163m = f10;
        float f11 = this.f5162l;
        if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f5160j = f11 / f10;
        } else {
            this.f5160j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f5159i = getContext().getResources().getDimensionPixelSize(b.f6562h);
        Paint paint = new Paint(1);
        this.f5158h = paint;
        paint.setStyle(Paint.Style.FILL);
        f();
        c(getResources().getColor(fb.a.f6553l));
        typedArray.recycle();
    }

    public final void f() {
        if (TextUtils.isEmpty(this.f5161k)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.f5162l), Integer.valueOf((int) this.f5163m)));
        } else {
            setText(this.f5161k);
        }
    }

    public final void g() {
        if (this.f5160j != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float f10 = this.f5162l;
            float f11 = this.f5163m;
            this.f5162l = f11;
            this.f5163m = f10;
            this.f5160j = f11 / f10;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.f5157g);
            Rect rect = this.f5157g;
            float f10 = (rect.right - rect.left) / 2.0f;
            float f11 = rect.bottom - (rect.top / 2.0f);
            int i10 = this.f5159i;
            canvas.drawCircle(f10, f11 - (i10 * 1.5f), i10 / 2.0f, this.f5158h);
        }
    }

    public void setActiveColor(int i10) {
        c(i10);
        invalidate();
    }

    public void setAspectRatio(hb.a aVar) {
        this.f5161k = aVar.a();
        this.f5162l = aVar.c();
        float e10 = aVar.e();
        this.f5163m = e10;
        float f10 = this.f5162l;
        if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && e10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f5160j = f10 / e10;
        } else {
            this.f5160j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        f();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5156f = 1.5f;
        this.f5157g = new Rect();
        e(context.obtainStyledAttributes(attributeSet, h.Q));
    }
}
