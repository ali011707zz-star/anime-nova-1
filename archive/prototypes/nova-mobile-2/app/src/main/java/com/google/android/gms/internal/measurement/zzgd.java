package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgd extends zzjz<zzgd, zzgc> implements zzlh {
    private static final zzgd zza;
    private zzkf zze = zzjz.zzby();
    private zzkf zzf = zzjz.zzby();
    private zzkg<zzfm> zzg = zzjz.zzbA();
    private zzkg<zzgf> zzh = zzjz.zzbA();

    static {
        zzgd zzgdVar = new zzgd();
        zza = zzgdVar;
        zzjz.zzbG(zzgd.class, zzgdVar);
    }

    private zzgd() {
    }

    public static zzgc zzf() {
        return zza.zzbu();
    }

    public static zzgd zzh() {
        return zza;
    }

    public static /* synthetic */ void zzo(zzgd zzgdVar, Iterable iterable) {
        zzkf zzkfVar = zzgdVar.zze;
        if (!zzkfVar.zzc()) {
            zzgdVar.zze = zzjz.zzbz(zzkfVar);
        }
        zzih.zzbq(iterable, zzgdVar.zze);
    }

    public static /* synthetic */ void zzq(zzgd zzgdVar, Iterable iterable) {
        zzkf zzkfVar = zzgdVar.zzf;
        if (!zzkfVar.zzc()) {
            zzgdVar.zzf = zzjz.zzbz(zzkfVar);
        }
        zzih.zzbq(iterable, zzgdVar.zzf);
    }

    public static /* synthetic */ void zzs(zzgd zzgdVar, Iterable iterable) {
        zzgdVar.zzw();
        zzih.zzbq(iterable, zzgdVar.zzg);
    }

    public static /* synthetic */ void zzt(zzgd zzgdVar, int i10) {
        zzgdVar.zzw();
        zzgdVar.zzg.remove(i10);
    }

    public static /* synthetic */ void zzu(zzgd zzgdVar, Iterable iterable) {
        zzgdVar.zzx();
        zzih.zzbq(iterable, zzgdVar.zzh);
    }

    public static /* synthetic */ void zzv(zzgd zzgdVar, int i10) {
        zzgdVar.zzx();
        zzgdVar.zzh.remove(i10);
    }

    private final void zzw() {
        zzkg<zzfm> zzkgVar = this.zzg;
        if (zzkgVar.zzc()) {
            return;
        }
        this.zzg = zzjz.zzbB(zzkgVar);
    }

    private final void zzx() {
        zzkg<zzgf> zzkgVar = this.zzh;
        if (zzkgVar.zzc()) {
            return;
        }
        this.zzh = zzjz.zzbB(zzkgVar);
    }

    public final int zza() {
        return this.zzg.size();
    }

    public final int zzb() {
        return this.zzf.size();
    }

    public final int zzc() {
        return this.zzh.size();
    }

    public final int zzd() {
        return this.zze.size();
    }

    public final zzfm zze(int i10) {
        return this.zzg.get(i10);
    }

    public final zzgf zzi(int i10) {
        return this.zzh.get(i10);
    }

    public final List<zzfm> zzj() {
        return this.zzg;
    }

    public final List<Long> zzk() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", zzfm.class, "zzh", zzgf.class});
        }
        if (i11 == 3) {
            return new zzgd();
        }
        if (i11 == 4) {
            return new zzgc(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final List<zzgf> zzm() {
        return this.zzh;
    }

    public final List<Long> zzn() {
        return this.zze;
    }
}
