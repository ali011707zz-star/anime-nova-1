package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzop implements zzoo {
    public static final zzhu<Boolean> zza;
    public static final zzhu<Boolean> zzb;
    public static final zzhu<Long> zzc;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        zzb = zzhrVar.zze("measurement.collection.redundant_engagement_removal_enabled", false);
        zzc = zzhrVar.zzc("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoo
    public final boolean zza() {
        return zzb.zzb().booleanValue();
    }
}
