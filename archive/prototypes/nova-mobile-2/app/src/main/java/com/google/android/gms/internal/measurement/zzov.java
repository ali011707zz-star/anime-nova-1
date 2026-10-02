package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzov implements zzou {
    public static final zzhu<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zze("measurement.ga.ga_app_id", false);

    @Override // com.google.android.gms.internal.measurement.zzou
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzou
    public final boolean zzb() {
        return zza.zzb().booleanValue();
    }
}
