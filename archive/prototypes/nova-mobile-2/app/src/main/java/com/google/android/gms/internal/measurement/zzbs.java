package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzbs {
    public static final int zza;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if (r0.charAt(0) <= 'Z') goto L15;
     */
    static {
        int i10 = Build.VERSION.SDK_INT;
        int i11 = 33554432;
        if (i10 < 31) {
            if (i10 >= 30) {
                String str = Build.VERSION.CODENAME;
                if (str.length() == 1) {
                    if (str.charAt(0) >= 'S') {
                    }
                }
            }
            i11 = 0;
        }
        zza = i11;
    }

    public static PendingIntent zza(Context context, int i10, Intent intent, int i11) {
        return PendingIntent.getBroadcast(context, 0, intent, i11);
    }
}
