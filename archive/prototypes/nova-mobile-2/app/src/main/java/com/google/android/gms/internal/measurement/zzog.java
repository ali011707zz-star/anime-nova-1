package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzog implements zzof {
    public static final zzhu<Boolean> zza;
    public static final zzhu<Boolean> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.client.consent.suppress_1p_in_ga4f_install", true);
        zzb = zzhrVar.zze("measurement.client.consent.gmpappid_worker_thread_fix", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzof
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzof
    public final boolean zzb() {
        return zza.zzb().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzof
    public final boolean zzc() {
        return zzb.zzb().booleanValue();
    }
}
