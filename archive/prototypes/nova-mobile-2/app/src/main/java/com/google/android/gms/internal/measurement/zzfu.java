package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfu extends zzjz<zzfu, zzft> implements zzlh {
    private static final zzfu zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private zzfi zzh;

    static {
        zzfu zzfuVar = new zzfu();
        zza = zzfuVar;
        zzjz.zzbG(zzfu.class, zzfuVar);
    }

    private zzfu() {
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzfu();
        }
        if (i11 == 4) {
            return new zzft(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
