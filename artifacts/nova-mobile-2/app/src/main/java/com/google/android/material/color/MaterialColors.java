package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.resources.MaterialAttributes;
import h0.d;

/* loaded from: classes.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;

    private MaterialColors() {
    }

    public static int compositeARGBWithAlpha(int i10, int i11) {
        return d.j(i10, (Color.alpha(i10) * i11) / BaseProgressIndicator.MAX_ALPHA);
    }

    public static int getColor(View view, int i10) {
        return MaterialAttributes.resolveOrThrow(view, i10);
    }

    public static boolean isColorLight(int i10) {
        return i10 != 0 && d.c(i10) > 0.5d;
    }

    public static int layer(View view, int i10, int i11) {
        return layer(view, i10, i11, 1.0f);
    }

    public static int getColor(Context context, int i10, String str) {
        return MaterialAttributes.resolveOrThrow(context, i10, str);
    }

    public static int layer(View view, int i10, int i11, float f10) {
        return layer(getColor(view, i10), getColor(view, i11), f10);
    }

    public static int getColor(View view, int i10, int i11) {
        return getColor(view.getContext(), i10, i11);
    }

    public static int getColor(Context context, int i10, int i11) {
        TypedValue resolve = MaterialAttributes.resolve(context, i10);
        return resolve != null ? resolve.data : i11;
    }

    public static int layer(int i10, int i11, float f10) {
        return layer(i10, d.j(i11, Math.round(Color.alpha(i11) * f10)));
    }

    public static int layer(int i10, int i11) {
        return d.f(i11, i10);
    }
}
