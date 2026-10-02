package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkf extends zzam {
    public final /* synthetic */ zzkg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkf(zzkg zzkgVar, zzgq zzgqVar) {
        super(zzgqVar);
        this.zza = zzkgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzam
    public final void zzc() {
        this.zza.zza();
        this.zza.zzs.zzay().zzj().zza("Starting upload from DelayedRunnable");
        this.zza.zzf.zzV();
    }
}
