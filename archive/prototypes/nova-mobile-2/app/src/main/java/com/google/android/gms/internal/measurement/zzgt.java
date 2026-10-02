package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgt extends zzjz<zzgt, zzgp> implements zzlh {
    private static final zzgt zza;
    private int zze;
    private int zzf;
    private zzkg<zzgt> zzg = zzjz.zzbA();
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        zzgt zzgtVar = new zzgt();
        zza = zzgtVar;
        zzjz.zzbG(zzgt.class, zzgtVar);
    }

    private zzgt() {
    }

    public final double zza() {
        return this.zzk;
    }

    public final String zzc() {
        return this.zzh;
    }

    public final String zzd() {
        return this.zzi;
    }

    public final List<zzgt> zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzj;
    }

    public final boolean zzg() {
        return (this.zze & 8) != 0;
    }

    public final boolean zzh() {
        return (this.zze & 16) != 0;
    }

    public final boolean zzi() {
        return (this.zze & 4) != 0;
    }

    public final int zzj() {
        int zza2 = zzgs.zza(this.zzf);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", zzgr.zza, "zzg", zzgt.class, "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzgt();
        }
        zzgi zzgiVar = null;
        if (i11 == 4) {
            return new zzgp(zzgiVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
