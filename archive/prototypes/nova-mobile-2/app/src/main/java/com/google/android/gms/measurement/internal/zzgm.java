package com.google.android.gms.measurement.internal;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzgm implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ zzgn zze;

    public zzgm(zzgn zzgnVar, String str, String str2, String str3, long j10) {
        this.zze = zzgnVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        String str = this.zza;
        if (str == null) {
            zzksVar2 = this.zze.zza;
            zzksVar2.zzq().zzs().zzy(this.zzb, null);
        } else {
            zzih zzihVar = new zzih(this.zzc, str, this.zzd);
            zzksVar = this.zze.zza;
            zzksVar.zzq().zzs().zzy(this.zzb, zzihVar);
        }
    }
}
