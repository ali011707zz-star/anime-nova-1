package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgb extends zzjz<zzgb, zzfz> implements zzlh {
    private static final zzgb zza;
    private int zze;
    private int zzf = 1;
    private zzkg<zzfq> zzg = zzjz.zzbA();

    static {
        zzgb zzgbVar = new zzgb();
        zza = zzgbVar;
        zzjz.zzbG(zzgb.class, zzgbVar);
    }

    private zzgb() {
    }

    public static zzfz zza() {
        return zza.zzbu();
    }

    public static /* synthetic */ void zzc(zzgb zzgbVar, zzfq zzfqVar) {
        zzfqVar.getClass();
        zzkg<zzfq> zzkgVar = zzgbVar.zzg;
        if (!zzkgVar.zzc()) {
            zzgbVar.zzg = zzjz.zzbB(zzkgVar);
        }
        zzgbVar.zzg.add(zzfqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", zzga.zza, "zzg", zzfq.class});
        }
        if (i11 == 3) {
            return new zzgb();
        }
        zzff zzffVar = null;
        if (i11 == 4) {
            return new zzfz(zzffVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
