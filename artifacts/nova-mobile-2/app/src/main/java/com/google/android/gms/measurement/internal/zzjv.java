package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
final class zzjv implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzkd zzb;

    public zzjv(zzkd zzkdVar, long j10) {
        this.zzb = zzkdVar;
        this.zza = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd.zzl(this.zzb, this.zza);
    }
}
