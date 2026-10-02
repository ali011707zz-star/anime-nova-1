package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzc implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzd zzb;

    public zzc(zzd zzdVar, long j10) {
        this.zzb = zzdVar;
        this.zza = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzj(this.zza);
    }
}
