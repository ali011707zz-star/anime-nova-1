package io.wax911.support.common.utils;

import android.content.Context;
import android.preference.PreferenceManager;
import jc.l;

/* compiled from: PreferenceUtils.kt */
/* loaded from: classes.dex */
public final class PreferenceUtils {
    public static final PreferenceUtils INSTANCE = new PreferenceUtils();

    private PreferenceUtils() {
    }

    public final void clear(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context == null ? null : context.getApplicationContext()).edit().clear().apply();
    }

    public final void contains(Context context, String str) {
        l.f(str, "key");
        PreferenceManager.getDefaultSharedPreferences(context == null ? null : context.getApplicationContext()).contains(str);
    }

    public final boolean getBoolean(Context context, String str) {
        l.f(str, "key");
        return PreferenceManager.getDefaultSharedPreferences(context == null ? null : context.getApplicationContext()).getBoolean(str, false);
    }

    public final String getString(Context context, String str) {
        l.f(str, "key");
        return PreferenceManager.getDefaultSharedPreferences(context == null ? null : context.getApplicationContext()).getString(str, "");
    }

    public final void saveBoolean(Context context, String str, boolean z10) {
        l.f(str, "key");
        PreferenceManager.getDefaultSharedPreferences(context == null ? null : context.getApplicationContext()).edit().putBoolean(str, z10).apply();
    }
}
