package com.google.android.gms.internal.measurement;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgo extends zzjz<zzgo, zzgn> implements zzlh {
    private static final zzgo zza;
    private int zze;
    private zzkg<zzgt> zzf = zzjz.zzbA();
    private zzgk zzg;

    static {
        zzgo zzgoVar = new zzgo();
        zza = zzgoVar;
        zzjz.zzbG(zzgo.class, zzgoVar);
    }

    private zzgo() {
    }

    public final zzgk zza() {
        zzgk zzgkVar = this.zzg;
        return zzgkVar == null ? zzgk.zzc() : zzgkVar;
    }

    public final List<zzgt> zzc() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", zzgt.class, "zzg"});
        }
        if (i11 == 3) {
            return new zzgo();
        }
        if (i11 == 4) {
            return new zzgn(null);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
