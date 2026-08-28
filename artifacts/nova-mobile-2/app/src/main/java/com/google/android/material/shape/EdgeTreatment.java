package com.google.android.material.shape;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public class EdgeTreatment {
    public boolean forceIntersection() {
        return false;
    }

    @Deprecated
    public void getEdgePath(float f10, float f11, ShapePath shapePath) {
        getEdgePath(f10, f10 / 2.0f, f11, shapePath);
    }

    public void getEdgePath(float f10, float f11, float f12, ShapePath shapePath) {
        shapePath.lineTo(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }
}
