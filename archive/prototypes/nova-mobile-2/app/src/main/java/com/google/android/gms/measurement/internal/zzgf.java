package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzgf implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzgn zzb;

    public zzgf(zzgn zzgnVar, zzp zzpVar) {
        this.zzb = zzgnVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzksVar = this.zzb.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzb.zza;
        zzp zzpVar = this.zza;
        zzksVar2.zzaz().zzg();
        zzksVar2.zzB();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzag zzb = zzag.zzb(zzpVar.zzv);
        zzag zzh = zzksVar2.zzh(zzpVar.zza);
        zzksVar2.zzay().zzj().zzc("Setting consent, package, consent", zzpVar.zza, zzb);
        zzksVar2.zzT(zzpVar.zza, zzb);
        if (zzb.zzm(zzh)) {
            zzksVar2.zzP(zzpVar);
        }
    }
}
