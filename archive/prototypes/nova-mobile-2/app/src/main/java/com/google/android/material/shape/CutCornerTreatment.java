package com.google.android.material.shape;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public class CutCornerTreatment extends CornerTreatment {
    public float size;

    public CutCornerTreatment() {
        this.size = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f10, float f11, float f12) {
        shapePath.reset(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f12 * f11, 180.0f, 180.0f - f10);
        double sin = Math.sin(Math.toRadians(f10));
        double d10 = f12;
        Double.isNaN(d10);
        double d11 = f11;
        Double.isNaN(d11);
        double sin2 = Math.sin(Math.toRadians(90.0f - f10));
        Double.isNaN(d10);
        Double.isNaN(d11);
        shapePath.lineTo((float) (sin * d10 * d11), (float) (sin2 * d10 * d11));
    }

    @Deprecated
    public CutCornerTreatment(float f10) {
        this.size = -1.0f;
        this.size = f10;
    }
}
