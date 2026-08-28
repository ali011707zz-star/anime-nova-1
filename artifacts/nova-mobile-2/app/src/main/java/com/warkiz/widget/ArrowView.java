package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import cb.k;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public class ArrowView extends View {

    /* renamed from: f, reason: collision with root package name */
    public final int f4987f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4988g;

    /* renamed from: h, reason: collision with root package name */
    public final Path f4989h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f4990i;

    public ArrowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawPath(this.f4989h, this.f4990i);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(this.f4987f, this.f4988g);
    }

    public void setColor(int i10) {
        this.f4990i.setColor(i10);
        invalidate();
    }

    public ArrowView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int a10 = k.a(context, 12.0f);
        this.f4987f = a10;
        int a11 = k.a(context, 7.0f);
        this.f4988g = a11;
        Path path = new Path();
        this.f4989h = path;
        path.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        path.lineTo(a10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        path.lineTo(a10 / 2.0f, a11);
        path.close();
        Paint paint = new Paint();
        this.f4990i = paint;
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.0f);
    }
}
