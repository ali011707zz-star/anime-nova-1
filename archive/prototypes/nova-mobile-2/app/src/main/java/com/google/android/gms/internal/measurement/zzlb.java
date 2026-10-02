package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzlb {
    public static final int zza(int i10, Object obj, Object obj2) {
        zzla zzlaVar = (zzla) obj;
        if (zzlaVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzlaVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzla zzlaVar = (zzla) obj;
        zzla zzlaVar2 = (zzla) obj2;
        if (!zzlaVar2.isEmpty()) {
            if (!zzlaVar.zze()) {
                zzlaVar = zzlaVar.zzb();
            }
            zzlaVar.zzd(zzlaVar2);
        }
        return zzlaVar;
    }
}
