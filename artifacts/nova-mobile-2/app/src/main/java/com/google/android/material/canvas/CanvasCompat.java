package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;

/* loaded from: classes.dex */
public class CanvasCompat {
    private CanvasCompat() {
    }

    public static int saveLayerAlpha(Canvas canvas, RectF rectF, int i10) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(rectF, i10);
        }
        return canvas.saveLayerAlpha(rectF, i10, 31);
    }

    public static int saveLayerAlpha(Canvas canvas, float f10, float f11, float f12, float f13, int i10) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(f10, f11, f12, f13, i10);
        }
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i10, 31);
    }
}
