package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgm extends zzjz<zzgm, zzgl> implements zzlh {
    private static final zzgm zza;
    private int zze;
    private String zzf = "";
    private zzkg<zzgt> zzg = zzjz.zzbA();

    static {
        zzgm zzgmVar = new zzgm();
        zza = zzgmVar;
        zzjz.zzbG(zzgm.class, zzgmVar);
    }

    private zzgm() {
    }

    public final String zzb() {
        return this.zzf;
    }

    public final List<zzgt> zzc() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", zzgt.class});
        }
        if (i11 == 3) {
            return new zzgm();
        }
        if (i11 == 4) {
            return new zzgl(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
