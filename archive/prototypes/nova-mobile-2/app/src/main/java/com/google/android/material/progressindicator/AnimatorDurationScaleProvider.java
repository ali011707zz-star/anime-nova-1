package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;

/* loaded from: classes.dex */
public class AnimatorDurationScaleProvider {
    private static float defaultSystemAnimatorDurationScale = 1.0f;

    public static void setDefaultSystemAnimatorDurationScale(float f10) {
        defaultSystemAnimatorDurationScale = f10;
    }

    public float getSystemAnimatorDurationScale(ContentResolver contentResolver) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 17) {
            return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        }
        if (i10 == 16) {
            return Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        }
        return defaultSystemAnimatorDurationScale;
    }
}
