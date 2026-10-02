package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzgj implements Runnable {
    public final /* synthetic */ zzkv zza;
    public final /* synthetic */ zzp zzb;
    public final /* synthetic */ zzgn zzc;

    public zzgj(zzgn zzgnVar, zzkv zzkvVar, zzp zzpVar) {
        this.zzc = zzgnVar;
        this.zza = zzkvVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzks zzksVar3;
        zzksVar = this.zzc.zza;
        zzksVar.zzA();
        if (this.zza.zza() == null) {
            zzksVar3 = this.zzc.zza;
            zzksVar3.zzO(this.zza, this.zzb);
        } else {
            zzksVar2 = this.zzc.zza;
            zzksVar2.zzU(this.zza, this.zzb);
        }
    }
}
