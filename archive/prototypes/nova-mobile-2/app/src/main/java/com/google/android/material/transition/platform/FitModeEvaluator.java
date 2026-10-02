package com.google.android.material.transition.platform;

import android.graphics.RectF;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface FitModeEvaluator {
    void applyMask(RectF rectF, float f10, FitModeResult fitModeResult);

    FitModeResult evaluate(float f10, float f11, float f12, float f13, float f14, float f15, float f16);

    boolean shouldMaskStartBounds(FitModeResult fitModeResult);
}
