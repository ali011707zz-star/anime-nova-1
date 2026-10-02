package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
final class zzs implements OnTokenCanceledListener {
    public final /* synthetic */ TaskCompletionSource zza;

    public zzs(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public final void onCanceled() {
        zzw zzwVar;
        zzwVar = this.zza.zza;
        zzwVar.zze();
    }
}
