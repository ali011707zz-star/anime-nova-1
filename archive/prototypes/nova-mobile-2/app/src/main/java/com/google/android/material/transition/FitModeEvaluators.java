package com.google.android.material.transition;

import android.graphics.RectF;

/* loaded from: classes.dex */
class FitModeEvaluators {
    private static final FitModeEvaluator WIDTH = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.1
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f10, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.currentEndHeight - fitModeResult.currentStartHeight) * f10;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public FitModeResult evaluate(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float lerp = TransitionUtils.lerp(f13, f15, f11, f12, f10, true);
            float f17 = lerp / f13;
            float f18 = lerp / f15;
            return new FitModeResult(f17, f18, lerp, f14 * f17, lerp, f16 * f18);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartHeight > fitModeResult.currentEndHeight;
        }
    };
    private static final FitModeEvaluator HEIGHT = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.2
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f10, FitModeResult fitModeResult) {
            float abs = (Math.abs(fitModeResult.currentEndWidth - fitModeResult.currentStartWidth) / 2.0f) * f10;
            rectF.left += abs;
            rectF.right -= abs;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public FitModeResult evaluate(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float lerp = TransitionUtils.lerp(f14, f16, f11, f12, f10, true);
            float f17 = lerp / f14;
            float f18 = lerp / f16;
            return new FitModeResult(f17, f18, f13 * f17, lerp, f15 * f18, lerp);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartWidth > fitModeResult.currentEndWidth;
        }
    };

    private FitModeEvaluators() {
    }

    public static FitModeEvaluator get(int i10, boolean z10, RectF rectF, RectF rectF2) {
        if (i10 == 0) {
            return shouldAutoFitToWidth(z10, rectF, rectF2) ? WIDTH : HEIGHT;
        }
        if (i10 == 1) {
            return WIDTH;
        }
        if (i10 == 2) {
            return HEIGHT;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i10);
    }

    private static boolean shouldAutoFitToWidth(boolean z10, RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f10 = (height2 * width) / width2;
        float f11 = (width2 * height) / width;
        if (z10) {
            if (f10 >= height) {
                return true;
            }
        } else if (f11 >= height2) {
            return true;
        }
        return false;
    }
}
