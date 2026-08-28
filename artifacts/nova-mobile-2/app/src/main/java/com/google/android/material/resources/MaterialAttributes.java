package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class MaterialAttributes {
    public static TypedValue resolve(Context context, int i10) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Context context, int i10, boolean z10) {
        TypedValue resolve = resolve(context, i10);
        return (resolve == null || resolve.type != 18) ? z10 : resolve.data != 0;
    }

    public static boolean resolveBooleanOrThrow(Context context, int i10, String str) {
        return resolveOrThrow(context, i10, str) != 0;
    }

    public static int resolveDimension(Context context, int i10, int i11) {
        float dimension;
        TypedValue resolve = resolve(context, i10);
        if (resolve != null && resolve.type == 5) {
            dimension = resolve.getDimension(context.getResources().getDisplayMetrics());
        } else {
            dimension = context.getResources().getDimension(i11);
        }
        return (int) dimension;
    }

    public static int resolveInteger(Context context, int i10, int i11) {
        TypedValue resolve = resolve(context, i10);
        return (resolve == null || resolve.type != 16) ? i11 : resolve.data;
    }

    public static int resolveMinimumAccessibleTouchTarget(Context context) {
        return resolveDimension(context, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveOrThrow(Context context, int i10, String str) {
        TypedValue resolve = resolve(context, i10);
        if (resolve != null) {
            return resolve.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i10)));
    }

    public static int resolveOrThrow(View view, int i10) {
        return resolveOrThrow(view.getContext(), i10, view.getClass().getCanonicalName());
    }
}
