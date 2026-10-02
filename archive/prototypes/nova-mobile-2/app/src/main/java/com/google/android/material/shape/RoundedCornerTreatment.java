package com.google.android.material.shape;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    public float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f10, float f11, float f12) {
        shapePath.reset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f12 * f11, 180.0f, 180.0f - f10);
        float f13 = f12 * 2.0f * f11;
        shapePath.addArc(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13, f13, 180.0f, f10);
    }

    @Deprecated
    public RoundedCornerTreatment(float f10) {
        this.radius = -1.0f;
        this.radius = f10;
    }
}
