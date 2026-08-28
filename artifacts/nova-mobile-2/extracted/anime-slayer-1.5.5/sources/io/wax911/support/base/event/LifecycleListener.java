package io.wax911.support.base.event;

import android.content.SharedPreferences;

/* compiled from: LifecycleListener.kt */
/* loaded from: classes.dex */
public interface LifecycleListener {
    void onDestroy();

    void onPause(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);

    void onResume(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);
}
