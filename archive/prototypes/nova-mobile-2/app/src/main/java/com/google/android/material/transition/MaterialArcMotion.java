package com.google.android.material.transition;

import android.graphics.Path;
import android.graphics.PointF;
import x1.g;

/* loaded from: classes.dex */
public final class MaterialArcMotion extends g {
    private static PointF getControlPoint(float f10, float f11, float f12, float f13) {
        if (f11 > f13) {
            return new PointF(f12, f11);
        }
        return new PointF(f10, f13);
    }

    @Override // x1.g
    public Path getPath(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(f10, f11);
        PointF controlPoint = getControlPoint(f10, f11, f12, f13);
        path.quadTo(controlPoint.x, controlPoint.y, f12, f13);
        return path;
    }
}
