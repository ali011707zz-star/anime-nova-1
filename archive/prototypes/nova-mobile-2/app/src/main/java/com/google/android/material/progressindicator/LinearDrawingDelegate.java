package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
final class LinearDrawingDelegate extends DrawingDelegate<LinearProgressIndicatorSpec> {
    private float displayedCornerRadius;
    private float displayedTrackThickness;
    private float trackLength;

    public LinearDrawingDelegate(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.trackLength = 300.0f;
    }

    private static void drawRoundedEnd(Canvas canvas, Paint paint, float f10, float f11, float f12, boolean z10, RectF rectF) {
        canvas.save();
        canvas.translate(f12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if (!z10) {
            canvas.rotate(180.0f);
        }
        float f13 = ((-f10) / 2.0f) + f11;
        float f14 = (f10 / 2.0f) - f11;
        canvas.drawRect(-f11, f13, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f14, paint);
        canvas.save();
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f14);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void adjustCanvas(Canvas canvas, float f10) {
        Rect clipBounds = canvas.getClipBounds();
        this.trackLength = clipBounds.width();
        float f11 = ((LinearProgressIndicatorSpec) this.spec).trackThickness;
        canvas.translate(clipBounds.left + (clipBounds.width() / 2.0f), clipBounds.top + (clipBounds.height() / 2.0f) + Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.spec).trackThickness) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.spec).drawHorizontallyInverse) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.drawable.isShowing() && ((LinearProgressIndicatorSpec) this.spec).showAnimationBehavior == 1) || (this.drawable.isHiding() && ((LinearProgressIndicatorSpec) this.spec).hideAnimationBehavior == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.drawable.isShowing() || this.drawable.isHiding()) {
            canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (((LinearProgressIndicatorSpec) this.spec).trackThickness * (f10 - 1.0f)) / 2.0f);
        }
        float f12 = this.trackLength;
        canvas.clipRect((-f12) / 2.0f, (-f11) / 2.0f, f12 / 2.0f, f11 / 2.0f);
        S s10 = this.spec;
        this.displayedTrackThickness = ((LinearProgressIndicatorSpec) s10).trackThickness * f10;
        this.displayedCornerRadius = ((LinearProgressIndicatorSpec) s10).trackCornerRadius * f10;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillIndicator(Canvas canvas, Paint paint, float f10, float f11, int i10) {
        if (f10 == f11) {
            return;
        }
        float f12 = this.trackLength;
        float f13 = this.displayedCornerRadius;
        float f14 = ((-f12) / 2.0f) + f13 + ((f12 - (f13 * 2.0f)) * f10);
        float f15 = ((-f12) / 2.0f) + f13 + ((f12 - (f13 * 2.0f)) * f11);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i10);
        float f16 = this.displayedTrackThickness;
        canvas.drawRect(f14, (-f16) / 2.0f, f15, f16 / 2.0f, paint);
        float f17 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f17, -f17, f17, f17);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f14, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f15, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillTrack(Canvas canvas, Paint paint) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((LinearProgressIndicatorSpec) this.spec).trackColor, this.drawable.getAlpha());
        float f10 = ((-this.trackLength) / 2.0f) + this.displayedCornerRadius;
        float f11 = -f10;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(compositeARGBWithAlpha);
        float f12 = this.displayedTrackThickness;
        canvas.drawRect(f10, (-f12) / 2.0f, f11, f12 / 2.0f, paint);
        float f13 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f13, -f13, f13, f13);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f10, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f11, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredHeight() {
        return ((LinearProgressIndicatorSpec) this.spec).trackThickness;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredWidth() {
        return -1;
    }
}
