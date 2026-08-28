package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhk implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzia zzb;

    public zzhk(zzia zziaVar, Bundle bundle) {
        this.zzb = zziaVar;
        this.zza = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkv zzkvVar;
        zzia zziaVar = this.zzb;
        Bundle bundle = this.zza;
        zziaVar.zzg();
        zziaVar.zza();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (zziaVar.zzs.zzJ()) {
            zzaf zzf = zziaVar.zzs.zzf();
            zzdx<Boolean> zzdxVar = zzdy.zzap;
            if (zzf.zzs(null, zzdxVar)) {
                zzkvVar = new zzkv(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, "");
            } else {
                zzkvVar = new zzkv(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null);
            }
            try {
                zziaVar.zzs.zzt().zzE(new zzab(bundle.getString("app_id"), zziaVar.zzs.zzf().zzs(null, zzdxVar) ? "" : bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), zzkvVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zziaVar.zzs.zzv().zzz(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), zziaVar.zzs.zzf().zzs(null, zzdxVar) ? "" : bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, true)));
                return;
            } catch (IllegalArgumentException unused) {
                return;
            }
        }
        zziaVar.zzs.zzay().zzj().zza("Conditional property not cleared since app measurement is disabled");
    }
}
