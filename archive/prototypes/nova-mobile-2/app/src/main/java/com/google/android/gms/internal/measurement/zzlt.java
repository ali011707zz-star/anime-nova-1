package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlt {
    private static final Class<?> zza;
    private static final zzmi<?, ?> zzb;
    private static final zzmi<?, ?> zzc;
    private static final zzmi<?, ?> zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzmk();
    }

    public static zzmi<?, ?> zzA() {
        return zzc;
    }

    public static zzmi<?, ?> zzB() {
        return zzd;
    }

    public static <UT, UB> UB zzC(int i10, List<Integer> list, zzkd zzkdVar, UB ub2, zzmi<UT, UB> zzmiVar) {
        if (zzkdVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int intValue = list.get(i12).intValue();
                if (zzkdVar.zza(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(intValue));
                    }
                    i11++;
                } else {
                    ub2 = (UB) zzD(i10, intValue, ub2, zzmiVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return ub2;
            }
        } else {
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().intValue();
                if (!zzkdVar.zza(intValue2)) {
                    ub2 = (UB) zzD(i10, intValue2, ub2, zzmiVar);
                    it2.remove();
                }
            }
        }
        return ub2;
    }

    public static <UT, UB> UB zzD(int i10, int i11, UB ub2, zzmi<UT, UB> zzmiVar) {
        if (ub2 == null) {
            ub2 = zzmiVar.zze();
        }
        zzmiVar.zzf(ub2, i10, i11);
        return ub2;
    }

    public static <T, FT extends zzjp<FT>> void zzE(zzjm<FT> zzjmVar, T t10, T t11) {
        zzjmVar.zza(t11);
        throw null;
    }

    public static <T, UT, UB> void zzF(zzmi<UT, UB> zzmiVar, T t10, T t11) {
        zzmiVar.zzh(t10, zzmiVar.zzd(zzmiVar.zzc(t10), zzmiVar.zzc(t11)));
    }

    public static void zzG(Class<?> cls) {
        Class<?> cls2;
        if (!zzjz.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean zzH(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> void zzI(zzlb zzlbVar, T t10, T t11, long j10) {
        zzms.zzs(t10, j10, zzlb.zzb(zzms.zzf(t10, j10), zzms.zzf(t11, j10)));
    }

    public static void zzJ(int i10, List<Boolean> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzc(i10, list, z10);
    }

    public static void zzK(int i10, List<zziy> list, zzjh zzjhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zze(i10, list);
    }

    public static void zzL(int i10, List<Double> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzg(i10, list, z10);
    }

    public static void zzM(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzj(i10, list, z10);
    }

    public static void zzN(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzl(i10, list, z10);
    }

    public static void zzO(int i10, List<Long> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzn(i10, list, z10);
    }

    public static void zzP(int i10, List<Float> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzp(i10, list, z10);
    }

    public static void zzQ(int i10, List<?> list, zzjh zzjhVar, zzlr zzlrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzjhVar.zzq(i10, list.get(i11), zzlrVar);
        }
    }

    public static void zzR(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzs(i10, list, z10);
    }

    public static void zzS(int i10, List<Long> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzu(i10, list, z10);
    }

    public static void zzT(int i10, List<?> list, zzjh zzjhVar, zzlr zzlrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzjhVar.zzv(i10, list.get(i11), zzlrVar);
        }
    }

    public static void zzU(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzx(i10, list, z10);
    }

    public static void zzV(int i10, List<Long> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzz(i10, list, z10);
    }

    public static void zzW(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzB(i10, list, z10);
    }

    public static void zzX(int i10, List<Long> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzD(i10, list, z10);
    }

    public static void zzY(int i10, List<String> list, zzjh zzjhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzG(i10, list);
    }

    public static void zzZ(int i10, List<Integer> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzI(i10, list, z10);
    }

    public static int zza(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i10 << 3) + 1);
    }

    public static void zzaa(int i10, List<Long> list, zzjh zzjhVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzK(i10, list, z10);
    }

    private static zzmi<?, ?> zzab(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzmi) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int zzb(List<?> list) {
        return list.size();
    }

    public static int zzc(int i10, List<zziy> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = size * zzjg.zzz(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzz += zzjg.zzt(list.get(i11));
        }
        return zzz;
    }

    public static int zzd(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzjg.zzz(i10));
    }

    public static int zze(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzv(zzkaVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzv(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int zzf(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i10 << 3) + 4);
    }

    public static int zzg(List<?> list) {
        return list.size() * 4;
    }

    public static int zzh(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i10 << 3) + 8);
    }

    public static int zzi(List<?> list) {
        return list.size() * 8;
    }

    public static int zzj(int i10, List<zzlg> list, zzlr zzlrVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += zzjg.zzu(i10, list.get(i12), zzlrVar);
        }
        return i11;
    }

    public static int zzk(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzjg.zzz(i10));
    }

    public static int zzl(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzv(zzkaVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzv(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int zzm(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzjg.zzz(i10));
    }

    public static int zzn(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzB(zzkvVar.zza(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzB(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static int zzo(int i10, Object obj, zzlr zzlrVar) {
        if (obj instanceof zzkm) {
            int zzA = zzjg.zzA(i10 << 3);
            int zza2 = ((zzkm) obj).zza();
            return zzA + zzjg.zzA(zza2) + zza2;
        }
        return zzjg.zzA(i10 << 3) + zzjg.zzx((zzlg) obj, zzlrVar);
    }

    public static int zzp(int i10, List<?> list, zzlr zzlrVar) {
        int zzx;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzjg.zzz(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof zzkm) {
                zzx = zzjg.zzw((zzkm) obj);
            } else {
                zzx = zzjg.zzx((zzlg) obj, zzlrVar);
            }
            zzz += zzx;
        }
        return zzz;
    }

    public static int zzq(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzjg.zzz(i10));
    }

    public static int zzr(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i10 = 0;
            while (i11 < size) {
                int zze = zzkaVar.zze(i11);
                i10 += zzjg.zzA((zze >> 31) ^ (zze + zze));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = list.get(i11).intValue();
                i10 += zzjg.zzA((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }

    public static int zzs(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzjg.zzz(i10));
    }

    public static int zzt(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i10 = 0;
            while (i11 < size) {
                long zza2 = zzkvVar.zza(i11);
                i10 += zzjg.zzB((zza2 >> 63) ^ (zza2 + zza2));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = list.get(i11).longValue();
                i10 += zzjg.zzB((longValue >> 63) ^ (longValue + longValue));
                i11++;
            }
        }
        return i10;
    }

    public static int zzu(int i10, List<?> list) {
        int zzy;
        int zzy2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzjg.zzz(i10) * size;
        if (list instanceof zzko) {
            zzko zzkoVar = (zzko) list;
            while (i11 < size) {
                Object zzf = zzkoVar.zzf(i11);
                if (zzf instanceof zziy) {
                    zzy2 = zzjg.zzt((zziy) zzf);
                } else {
                    zzy2 = zzjg.zzy((String) zzf);
                }
                zzz += zzy2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof zziy) {
                    zzy = zzjg.zzt((zziy) obj);
                } else {
                    zzy = zzjg.zzy((String) obj);
                }
                zzz += zzy;
                i11++;
            }
        }
        return zzz;
    }

    public static int zzv(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzjg.zzz(i10));
    }

    public static int zzw(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzA(zzkaVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzA(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int zzx(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzjg.zzz(i10));
    }

    public static int zzy(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzB(zzkvVar.zza(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzjg.zzB(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static zzmi<?, ?> zzz() {
        return zzb;
    }
}
