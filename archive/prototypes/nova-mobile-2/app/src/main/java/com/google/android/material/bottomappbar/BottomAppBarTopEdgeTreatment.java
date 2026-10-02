package com.google.android.material.bottomappbar;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

/* loaded from: classes.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private static final float ROUNDED_CORNER_FAB_OFFSET = 1.75f;
    private float cradleVerticalOffset;
    private float fabCornerSize = -1.0f;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f10, float f11, float f12) {
        this.fabMargin = f10;
        this.roundedCornerRadius = f11;
        setCradleVerticalOffset(f12);
        this.horizontalOffset = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f10, float f11, float f12, ShapePath shapePath) {
        float f13;
        float f14;
        float f15 = this.fabDiameter;
        if (f15 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            shapePath.lineTo(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            return;
        }
        float f16 = ((this.fabMargin * 2.0f) + f15) / 2.0f;
        float f17 = f12 * this.roundedCornerRadius;
        float f18 = f11 + this.horizontalOffset;
        float f19 = (this.cradleVerticalOffset * f12) + ((1.0f - f12) * f16);
        if (f19 / f16 >= 1.0f) {
            shapePath.lineTo(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            return;
        }
        float f20 = this.fabCornerSize;
        float f21 = f20 * f12;
        boolean z10 = f20 == -1.0f || Math.abs((f20 * 2.0f) - f15) < 0.1f;
        if (z10) {
            f13 = f19;
            f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            f14 = ROUNDED_CORNER_FAB_OFFSET;
            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float f22 = f16 + f17;
        float f23 = f13 + f17;
        float sqrt = (float) Math.sqrt((f22 * f22) - (f23 * f23));
        float f24 = f18 - sqrt;
        float f25 = f18 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f23));
        float f26 = (90.0f - degrees) + f14;
        shapePath.lineTo(f24, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float f27 = f17 * 2.0f;
        shapePath.addArc(f24 - f17, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f24 + f17, f27, 270.0f, degrees);
        if (z10) {
            shapePath.addArc(f18 - f16, (-f16) - f13, f18 + f16, f16 - f13, 180.0f - f26, (f26 * 2.0f) - 180.0f);
        } else {
            float f28 = this.fabMargin;
            float f29 = f21 * 2.0f;
            float f30 = f18 - f16;
            shapePath.addArc(f30, -(f21 + f28), f30 + f28 + f29, f28 + f21, 180.0f - f26, ((f26 * 2.0f) - 180.0f) / 2.0f);
            float f31 = f18 + f16;
            float f32 = this.fabMargin;
            shapePath.lineTo(f31 - ((f32 / 2.0f) + f21), f32 + f21);
            float f33 = this.fabMargin;
            shapePath.addArc(f31 - (f29 + f33), -(f21 + f33), f31, f33 + f21, 90.0f, f26 - 90.0f);
        }
        shapePath.addArc(f25 - f17, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f25 + f17, f27, 270.0f - degrees, degrees);
        shapePath.lineTo(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public float getFabCornerRadius() {
        return this.fabCornerSize;
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    public float getFabDiameter() {
        return this.fabDiameter;
    }

    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(float f10) {
        if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.cradleVerticalOffset = f10;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    public void setFabCornerSize(float f10) {
        this.fabCornerSize = f10;
    }

    public void setFabCradleMargin(float f10) {
        this.fabMargin = f10;
    }

    public void setFabCradleRoundedCornerRadius(float f10) {
        this.roundedCornerRadius = f10;
    }

    public void setFabDiameter(float f10) {
        this.fabDiameter = f10;
    }

    public void setHorizontalOffset(float f10) {
        this.horizontalOffset = f10;
    }
}
