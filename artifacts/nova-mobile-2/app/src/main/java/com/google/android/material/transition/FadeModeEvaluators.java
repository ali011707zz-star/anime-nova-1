package com.google.android.material.transition;

import com.google.android.material.progressindicator.BaseProgressIndicator;

/* loaded from: classes.dex */
class FadeModeEvaluators {
    private static final FadeModeEvaluator IN = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.endOnTop(BaseProgressIndicator.MAX_ALPHA, TransitionUtils.lerp(0, BaseProgressIndicator.MAX_ALPHA, f11, f12, f10));
        }
    };
    private static final FadeModeEvaluator OUT = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(BaseProgressIndicator.MAX_ALPHA, 0, f11, f12, f10), BaseProgressIndicator.MAX_ALPHA);
        }
    };
    private static final FadeModeEvaluator CROSS = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(BaseProgressIndicator.MAX_ALPHA, 0, f11, f12, f10), TransitionUtils.lerp(0, BaseProgressIndicator.MAX_ALPHA, f11, f12, f10));
        }
    };
    private static final FadeModeEvaluator THROUGH = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            float f14 = ((f12 - f11) * f13) + f11;
            return FadeModeResult.startOnTop(TransitionUtils.lerp(BaseProgressIndicator.MAX_ALPHA, 0, f11, f14, f10), TransitionUtils.lerp(0, BaseProgressIndicator.MAX_ALPHA, f14, f12, f10));
        }
    };

    private FadeModeEvaluators() {
    }

    public static FadeModeEvaluator get(int i10, boolean z10) {
        if (i10 == 0) {
            return z10 ? IN : OUT;
        }
        if (i10 == 1) {
            return z10 ? OUT : IN;
        }
        if (i10 == 2) {
            return CROSS;
        }
        if (i10 == 3) {
            return THROUGH;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i10);
    }
}
