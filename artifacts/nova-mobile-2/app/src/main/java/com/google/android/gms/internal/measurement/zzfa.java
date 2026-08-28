package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfa extends zzjz<zzfa, zzez> implements zzlh {
    private static final zzfa zza;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        zzfa zzfaVar = new zzfa();
        zza = zzfaVar;
        zzjz.zzbG(zzfa.class, zzfaVar);
    }

    private zzfa() {
    }

    public static /* synthetic */ void zzd(zzfa zzfaVar, String str) {
        str.getClass();
        zzfaVar.zze |= 1;
        zzfaVar.zzf = str;
    }

    public final int zza() {
        return this.zzi;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final boolean zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return (this.zze & 8) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzfa();
        }
        zzey zzeyVar = null;
        if (i11 == 4) {
            return new zzez(zzeyVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
