package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgf extends zzjz<zzgf, zzge> implements zzlh {
    private static final zzgf zza;
    private int zze;
    private int zzf;
    private zzkf zzg = zzjz.zzby();

    static {
        zzgf zzgfVar = new zzgf();
        zza = zzgfVar;
        zzjz.zzbG(zzgf.class, zzgfVar);
    }

    private zzgf() {
    }

    public static zzge zzd() {
        return zza.zzbu();
    }

    public static /* synthetic */ void zzg(zzgf zzgfVar, int i10) {
        zzgfVar.zze |= 1;
        zzgfVar.zzf = i10;
    }

    public static /* synthetic */ void zzh(zzgf zzgfVar, Iterable iterable) {
        zzkf zzkfVar = zzgfVar.zzg;
        if (!zzkfVar.zzc()) {
            zzgfVar.zzg = zzjz.zzbz(zzkfVar);
        }
        zzih.zzbq(iterable, zzgfVar.zzg);
    }

    public final int zza() {
        return this.zzg.size();
    }

    public final int zzb() {
        return this.zzf;
    }

    public final long zzc(int i10) {
        return this.zzg.zza(i10);
    }

    public final List<Long> zzf() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzgf();
        }
        if (i11 == 4) {
            return new zzge(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
