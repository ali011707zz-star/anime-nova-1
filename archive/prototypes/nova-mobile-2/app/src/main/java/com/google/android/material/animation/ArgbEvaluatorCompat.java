package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* loaded from: classes.dex */
public class ArgbEvaluatorCompat implements TypeEvaluator<Integer> {
    private static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();

    public static ArgbEvaluatorCompat getInstance() {
        return instance;
    }

    @Override // android.animation.TypeEvaluator
    public Integer evaluate(float f10, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f11 = ((intValue >> 24) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f12 = ((intValue >> 16) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f13 = ((intValue >> 8) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        int intValue2 = num2.intValue();
        float f14 = ((intValue2 >> 24) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f15 = ((intValue2 >> 16) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f16 = ((intValue2 >> 8) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float pow = (float) Math.pow(f12, 2.2d);
        float pow2 = (float) Math.pow(f13, 2.2d);
        float pow3 = (float) Math.pow((intValue & BaseProgressIndicator.MAX_ALPHA) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(f15, 2.2d);
        float f17 = f11 + ((f14 - f11) * f10);
        float pow5 = pow2 + ((((float) Math.pow(f16, 2.2d)) - pow2) * f10);
        float pow6 = pow3 + (f10 * (((float) Math.pow((intValue2 & BaseProgressIndicator.MAX_ALPHA) / 255.0f, 2.2d)) - pow3));
        return Integer.valueOf((Math.round(((float) Math.pow(pow + ((pow4 - pow) * f10), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(f17 * 255.0f) << 24) | (Math.round(((float) Math.pow(pow5, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(pow6, 0.45454545454545453d)) * 255.0f));
    }
}
