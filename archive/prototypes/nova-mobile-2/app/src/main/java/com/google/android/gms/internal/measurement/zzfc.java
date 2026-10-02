package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfc extends zzjz<zzfc, zzfb> implements zzlh {
    private static final zzfc zza;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private String zzg = "";
    private zzkg<zzfe> zzi = zzjz.zzbA();
    private zzkg<zzfa> zzj = zzjz.zzbA();
    private zzkg<zzeh> zzk = zzjz.zzbA();
    private String zzl = "";
    private zzkg<zzgo> zzn = zzjz.zzbA();

    static {
        zzfc zzfcVar = new zzfc();
        zza = zzfcVar;
        zzjz.zzbG(zzfc.class, zzfcVar);
    }

    private zzfc() {
    }

    public static zzfb zze() {
        return zza.zzbu();
    }

    public static zzfc zzg() {
        return zza;
    }

    public static /* synthetic */ void zzm(zzfc zzfcVar, int i10, zzfa zzfaVar) {
        zzfaVar.getClass();
        zzkg<zzfa> zzkgVar = zzfcVar.zzj;
        if (!zzkgVar.zzc()) {
            zzfcVar.zzj = zzjz.zzbB(zzkgVar);
        }
        zzfcVar.zzj.set(i10, zzfaVar);
    }

    public final int zza() {
        return this.zzn.size();
    }

    public final int zzb() {
        return this.zzj.size();
    }

    public final long zzc() {
        return this.zzf;
    }

    public final zzfa zzd(int i10) {
        return this.zzj.get(i10);
    }

    public final String zzh() {
        return this.zzg;
    }

    public final List<zzeh> zzi() {
        return this.zzk;
    }

    public final List<zzgo> zzj() {
        return this.zzn;
    }

    public final List<zzfe> zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", zzfe.class, "zzj", zzfa.class, "zzk", zzeh.class, "zzl", "zzm", "zzn", zzgo.class});
        }
        if (i11 == 3) {
            return new zzfc();
        }
        if (i11 == 4) {
            return new zzfb(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean zzo() {
        return this.zzm;
    }

    public final boolean zzp() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzq() {
        return (this.zze & 1) != 0;
    }
}
