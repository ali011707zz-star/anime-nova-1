package com.google.android.material.theme.overlay;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import j.d;

/* loaded from: classes.dex */
public class MaterialThemeOverlay {
    private static final int[] ANDROID_THEME_OVERLAY_ATTRS = {R.attr.theme, com.google.android.material.R.attr.theme};
    private static final int[] MATERIAL_THEME_OVERLAY_ATTR = {com.google.android.material.R.attr.materialThemeOverlay};

    private MaterialThemeOverlay() {
    }

    private static int obtainAndroidThemeOverlayId(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ANDROID_THEME_OVERLAY_ATTRS);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    private static int obtainMaterialThemeOverlayId(Context context, AttributeSet attributeSet, int i10, int i11) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, MATERIAL_THEME_OVERLAY_ATTR, i10, i11);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static Context wrap(Context context, AttributeSet attributeSet, int i10, int i11) {
        int obtainMaterialThemeOverlayId = obtainMaterialThemeOverlayId(context, attributeSet, i10, i11);
        boolean z10 = (context instanceof d) && ((d) context).c() == obtainMaterialThemeOverlayId;
        if (obtainMaterialThemeOverlayId == 0 || z10) {
            return context;
        }
        d dVar = new d(context, obtainMaterialThemeOverlayId);
        int obtainAndroidThemeOverlayId = obtainAndroidThemeOverlayId(context, attributeSet);
        if (obtainAndroidThemeOverlayId != 0) {
            dVar.getTheme().applyStyle(obtainAndroidThemeOverlayId, true);
        }
        return dVar;
    }
}
