package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgk extends zzjz<zzgk, zzgj> implements zzlh {
    private static final zzgk zza;
    private zzkg<zzgm> zze = zzjz.zzbA();

    static {
        zzgk zzgkVar = new zzgk();
        zza = zzgkVar;
        zzjz.zzbG(zzgk.class, zzgkVar);
    }

    private zzgk() {
    }

    public static zzgk zzc() {
        return zza;
    }

    public final int zza() {
        return this.zze.size();
    }

    public final List<zzgm> zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzgm.class});
        }
        if (i11 == 3) {
            return new zzgk();
        }
        if (i11 == 4) {
            return new zzgj(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
