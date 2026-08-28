package com.google.android.gms.internal.measurement;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzh {
    public static double zza(double d10) {
        if (Double.isNaN(d10)) {
            return ShadowDrawableWrapper.COS_45;
        }
        if (Double.isInfinite(d10) || d10 == ShadowDrawableWrapper.COS_45 || d10 == ShadowDrawableWrapper.COS_45) {
            return d10;
        }
        double d11 = d10 > ShadowDrawableWrapper.COS_45 ? 1 : -1;
        double floor = Math.floor(Math.abs(d10));
        Double.isNaN(d11);
        return d11 * floor;
    }

    public static int zzb(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == ShadowDrawableWrapper.COS_45) {
            return 0;
        }
        double d11 = d10 > ShadowDrawableWrapper.COS_45 ? 1 : -1;
        double floor = Math.floor(Math.abs(d10));
        Double.isNaN(d11);
        return (int) ((d11 * floor) % 4.294967296E9d);
    }

    public static int zzc(zzg zzgVar) {
        int zzb = zzb(zzgVar.zzd("runtime.counter").zzh().doubleValue() + 1.0d);
        if (zzb <= 1000000) {
            zzgVar.zzg("runtime.counter", new zzah(Double.valueOf(zzb)));
            return zzb;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }

    public static long zzd(double d10) {
        return zzb(d10) & 4294967295L;
    }

    public static zzbl zze(String str) {
        zzbl zzblVar = null;
        if (str != null && !str.isEmpty()) {
            zzblVar = zzbl.zza(Integer.parseInt(str));
        }
        if (zzblVar != null) {
            return zzblVar;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object zzf(zzap zzapVar) {
        if (zzap.zzg.equals(zzapVar)) {
            return null;
        }
        if (zzap.zzf.equals(zzapVar)) {
            return "";
        }
        if (zzapVar instanceof zzam) {
            return zzg((zzam) zzapVar);
        }
        if (zzapVar instanceof zzae) {
            ArrayList arrayList = new ArrayList();
            Iterator<zzap> it2 = ((zzae) zzapVar).iterator();
            while (it2.hasNext()) {
                Object zzf = zzf(it2.next());
                if (zzf != null) {
                    arrayList.add(zzf);
                }
            }
            return arrayList;
        }
        if (!zzapVar.zzh().isNaN()) {
            return zzapVar.zzh();
        }
        return zzapVar.zzi();
    }

    public static Map<String, Object> zzg(zzam zzamVar) {
        HashMap hashMap = new HashMap();
        for (String str : zzamVar.zzb()) {
            Object zzf = zzf(zzamVar.zzf(str));
            if (zzf != null) {
                hashMap.put(str, zzf);
            }
        }
        return hashMap;
    }

    public static void zzh(String str, int i10, List<zzap> list) {
        if (list.size() != i10) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void zzi(String str, int i10, List<zzap> list) {
        if (list.size() < i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void zzj(String str, int i10, List<zzap> list) {
        if (list.size() > i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static boolean zzk(zzap zzapVar) {
        if (zzapVar == null) {
            return false;
        }
        Double zzh = zzapVar.zzh();
        return !zzh.isNaN() && zzh.doubleValue() >= ShadowDrawableWrapper.COS_45 && zzh.equals(Double.valueOf(Math.floor(zzh.doubleValue())));
    }

    public static boolean zzl(zzap zzapVar, zzap zzapVar2) {
        if (!zzapVar.getClass().equals(zzapVar2.getClass())) {
            return false;
        }
        if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
            return true;
        }
        if (zzapVar instanceof zzah) {
            if (Double.isNaN(zzapVar.zzh().doubleValue()) || Double.isNaN(zzapVar2.zzh().doubleValue())) {
                return false;
            }
            return zzapVar.zzh().equals(zzapVar2.zzh());
        }
        if (zzapVar instanceof zzat) {
            return zzapVar.zzi().equals(zzapVar2.zzi());
        }
        if (zzapVar instanceof zzaf) {
            return zzapVar.zzg().equals(zzapVar2.zzg());
        }
        return zzapVar == zzapVar2;
    }
}
