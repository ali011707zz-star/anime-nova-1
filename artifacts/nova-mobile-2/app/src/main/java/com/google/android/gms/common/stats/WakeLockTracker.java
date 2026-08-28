package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public class WakeLockTracker {
    private static WakeLockTracker zza = new WakeLockTracker();

    @RecentlyNonNull
    @KeepForSdk
    public static WakeLockTracker getInstance() {
        return zza;
    }

    @KeepForSdk
    public void registerAcquireEvent(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull String str3, int i10, @RecentlyNonNull String str4) {
    }

    @KeepForSdk
    public void registerDeadlineEvent(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull String str3, int i10, @RecentlyNonNull List<String> list, boolean z10, long j10) {
    }

    @KeepForSdk
    public void registerEvent(@RecentlyNonNull Context context, @RecentlyNonNull String str, int i10, @RecentlyNonNull String str2, @RecentlyNonNull String str3, @RecentlyNonNull String str4, int i11, @RecentlyNonNull List<String> list) {
    }

    @KeepForSdk
    public void registerEvent(@RecentlyNonNull Context context, @RecentlyNonNull String str, int i10, @RecentlyNonNull String str2, @RecentlyNonNull String str3, @RecentlyNonNull String str4, int i11, @RecentlyNonNull List<String> list, long j10) {
    }

    @KeepForSdk
    public void registerReleaseEvent(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
    }
}
