package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.WakeLockTracker;
import e1.a;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class GCoreWakefulBroadcastReceiver extends a {
    private static String TAG = "GCoreWakefulBroadcastReceiver";

    @KeepForSdk
    @SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
    public static boolean completeWakefulIntent(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context != null) {
            WakeLockTracker.getInstance().registerReleaseEvent(context, intent);
        } else {
            String valueOf = String.valueOf(intent.toUri(0));
            if (valueOf.length() != 0) {
                "context shouldn't be null. intent: ".concat(valueOf);
            }
        }
        return a.completeWakefulIntent(intent);
    }
}
