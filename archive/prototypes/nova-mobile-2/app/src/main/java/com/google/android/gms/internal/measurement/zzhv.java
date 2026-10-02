package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import s.a;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhv implements zzhe {
    private static final Map<String, zzhv> zza = new a();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    public static zzhv zza(Context context, String str) {
        zzhv zzhvVar;
        if (!zzgw.zza()) {
            synchronized (zzhv.class) {
                zzhvVar = zza.get(null);
                if (zzhvVar == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        throw null;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                }
            }
            return zzhvVar;
        }
        throw null;
    }

    public static synchronized void zzc() {
        synchronized (zzhv.class) {
            Map<String, zzhv> map = zza;
            Iterator<zzhv> it2 = map.values().iterator();
            if (!it2.hasNext()) {
                map.clear();
            } else {
                SharedPreferences sharedPreferences = it2.next().zzb;
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final Object zzb(String str) {
        throw null;
    }
}
