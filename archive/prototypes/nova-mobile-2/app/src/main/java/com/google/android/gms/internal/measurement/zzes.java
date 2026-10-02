package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzes extends zzjz<zzes, zzer> implements zzlh {
    private static final zzes zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private zzel zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzes zzesVar = new zzes();
        zza = zzesVar;
        zzjz.zzbG(zzes.class, zzesVar);
    }

    private zzes() {
    }

    public static zzer zzc() {
        return zza.zzbu();
    }

    public static /* synthetic */ void zzf(zzes zzesVar, String str) {
        zzesVar.zze |= 2;
        zzesVar.zzg = str;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzel zzb() {
        zzel zzelVar = this.zzh;
        return zzelVar == null ? zzel.zzb() : zzelVar;
    }

    public final String zze() {
        return this.zzg;
    }

    public final boolean zzg() {
        return this.zzi;
    }

    public final boolean zzh() {
        return this.zzj;
    }

    public final boolean zzi() {
        return this.zzk;
    }

    public final boolean zzj() {
        return (this.zze & 1) != 0;
    }

    public final boolean zzk() {
        return (this.zze & 32) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzes();
        }
        if (i11 == 4) {
            return new zzer(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
