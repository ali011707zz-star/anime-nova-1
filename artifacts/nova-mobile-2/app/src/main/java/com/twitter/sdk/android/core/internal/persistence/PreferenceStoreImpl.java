package com.twitter.sdk.android.core.internal.persistence;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class PreferenceStoreImpl implements PreferenceStore {
    private final SharedPreferences sharedPreferences;

    public PreferenceStoreImpl(Context context, String str) {
        if (context != null) {
            this.sharedPreferences = context.getSharedPreferences(str, 0);
            return;
        }
        throw new IllegalArgumentException("Context must not be null");
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PreferenceStore
    public SharedPreferences.Editor edit() {
        return this.sharedPreferences.edit();
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PreferenceStore
    public SharedPreferences get() {
        return this.sharedPreferences;
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PreferenceStore
    public boolean save(SharedPreferences.Editor editor) {
        editor.apply();
        return true;
    }
}
