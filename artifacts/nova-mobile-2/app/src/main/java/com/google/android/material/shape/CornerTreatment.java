package com.google.android.material.shape;

import android.graphics.RectF;

/* loaded from: classes.dex */
public class CornerTreatment {
    @Deprecated
    public void getCornerPath(float f10, float f11, ShapePath shapePath) {
    }

    public void getCornerPath(ShapePath shapePath, float f10, float f11, float f12) {
        getCornerPath(f10, f11, shapePath);
    }

    public void getCornerPath(ShapePath shapePath, float f10, float f11, RectF rectF, CornerSize cornerSize) {
        getCornerPath(shapePath, f10, f11, cornerSize.getCornerSize(rectF));
    }
}
