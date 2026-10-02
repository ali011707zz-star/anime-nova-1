package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzod implements zzoc {
    public static final zzhu<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zze("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zzb() {
        return zza.zzb().booleanValue();
    }
}
