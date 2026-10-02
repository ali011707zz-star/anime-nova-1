package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzi {
    public static zzap zza(zzgt zzgtVar) {
        if (zzgtVar == null) {
            return zzap.zzf;
        }
        int zzj = zzgtVar.zzj() - 1;
        if (zzj == 1) {
            if (zzgtVar.zzi()) {
                return new zzat(zzgtVar.zzd());
            }
            return zzap.zzm;
        }
        if (zzj == 2) {
            if (zzgtVar.zzh()) {
                return new zzah(Double.valueOf(zzgtVar.zza()));
            }
            return new zzah(null);
        }
        if (zzj == 3) {
            if (zzgtVar.zzg()) {
                return new zzaf(Boolean.valueOf(zzgtVar.zzf()));
            }
            return new zzaf(null);
        }
        if (zzj == 4) {
            List<zzgt> zze = zzgtVar.zze();
            ArrayList arrayList = new ArrayList();
            Iterator<zzgt> it2 = zze.iterator();
            while (it2.hasNext()) {
                arrayList.add(zza(it2.next()));
            }
            return new zzaq(zzgtVar.zzc(), arrayList);
        }
        throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
    }

    public static zzap zzb(Object obj) {
        if (obj == null) {
            return zzap.zzg;
        }
        if (obj instanceof String) {
            return new zzat((String) obj);
        }
        if (obj instanceof Double) {
            return new zzah((Double) obj);
        }
        if (obj instanceof Long) {
            return new zzah(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzah(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new zzaf((Boolean) obj);
        }
        if (obj instanceof Map) {
            zzam zzamVar = new zzam();
            Map map = (Map) obj;
            for (Object obj2 : map.keySet()) {
                zzap zzb = zzb(map.get(obj2));
                if (obj2 != null) {
                    if (!(obj2 instanceof String)) {
                        obj2 = obj2.toString();
                    }
                    zzamVar.zzr((String) obj2, zzb);
                }
            }
            return zzamVar;
        }
        if (obj instanceof List) {
            zzae zzaeVar = new zzae();
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                zzaeVar.zzq(zzaeVar.zzc(), zzb(it2.next()));
            }
            return zzaeVar;
        }
        throw new IllegalArgumentException("Invalid value type");
    }
}
