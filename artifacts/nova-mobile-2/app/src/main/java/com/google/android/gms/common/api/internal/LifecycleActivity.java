package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.e;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class LifecycleActivity {
    private final Object zza;

    public LifecycleActivity(@RecentlyNonNull Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.zza = activity;
    }

    @KeepForSdk
    public Activity asActivity() {
        return (Activity) this.zza;
    }

    @KeepForSdk
    public e asFragmentActivity() {
        return (e) this.zza;
    }

    @KeepForSdk
    public Object asObject() {
        return this.zza;
    }

    @KeepForSdk
    public boolean isChimera() {
        return false;
    }

    @KeepForSdk
    public boolean isSupport() {
        return this.zza instanceof e;
    }

    public final boolean zza() {
        return this.zza instanceof Activity;
    }

    @KeepForSdk
    public LifecycleActivity(@RecentlyNonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
