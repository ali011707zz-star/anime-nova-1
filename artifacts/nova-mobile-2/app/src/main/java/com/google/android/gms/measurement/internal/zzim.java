package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzim implements Runnable {
    public final /* synthetic */ zzih zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzio zzc;

    public zzim(zzio zzioVar, zzih zzihVar, long j10) {
        this.zzc = zzioVar;
        this.zza = zzihVar;
        this.zzb = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzC(this.zza, false, this.zzb);
        zzio zzioVar = this.zzc;
        zzioVar.zza = null;
        zzioVar.zzs.zzt().zzG(null);
    }
}
