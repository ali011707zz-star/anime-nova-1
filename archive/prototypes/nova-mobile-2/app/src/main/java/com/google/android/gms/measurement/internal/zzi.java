package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement-sdk@@19.0.2 */
/* loaded from: classes.dex */
final class zzi implements Runnable {
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzcf zza;
    public final /* synthetic */ zzat zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar, zzat zzatVar, String str) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = zzatVar;
        this.zzc = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzt().zzB(this.zza, this.zzb, this.zzc);
    }
}
