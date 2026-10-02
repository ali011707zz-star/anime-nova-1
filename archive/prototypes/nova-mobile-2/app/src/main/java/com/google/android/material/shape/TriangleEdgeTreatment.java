package com.google.android.material.shape;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {
    private final boolean inside;
    private final float size;

    public TriangleEdgeTreatment(float f10, boolean z10) {
        this.size = f10;
        this.inside = z10;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f10, float f11, float f12, ShapePath shapePath) {
        shapePath.lineTo(f11 - (this.size * f12), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        shapePath.lineTo(f11, (this.inside ? this.size : -this.size) * f12);
        shapePath.lineTo(f11 + (this.size * f12), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        shapePath.lineTo(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }
}
