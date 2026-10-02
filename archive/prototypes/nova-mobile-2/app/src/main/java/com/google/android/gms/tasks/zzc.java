package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
final class zzc implements Runnable {
    public final /* synthetic */ Task zza;
    public final /* synthetic */ zzd zzb;

    public zzc(zzd zzdVar, Task task) {
        this.zzb = zzdVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar;
        zzw zzwVar2;
        zzw zzwVar3;
        Continuation continuation;
        zzw zzwVar4;
        zzw zzwVar5;
        if (this.zza.isCanceled()) {
            zzwVar5 = this.zzb.zzc;
            zzwVar5.zze();
            return;
        }
        try {
            continuation = this.zzb.zzb;
            Object then = continuation.then(this.zza);
            zzwVar4 = this.zzb.zzc;
            zzwVar4.zza(then);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                zzwVar3 = this.zzb.zzc;
                zzwVar3.zzc((Exception) e10.getCause());
            } else {
                zzwVar2 = this.zzb.zzc;
                zzwVar2.zzc(e10);
            }
        } catch (Exception e11) {
            zzwVar = this.zzb.zzc;
            zzwVar.zzc(e11);
        }
    }
}
