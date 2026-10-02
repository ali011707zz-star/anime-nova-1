package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzja extends zzam {
    public final /* synthetic */ zzjo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzja(zzjo zzjoVar, zzgq zzgqVar) {
        super(zzgqVar);
        this.zza = zzjoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzam
    public final void zzc() {
        this.zza.zzs.zzay().zzk().zza("Tasks have been queued for a long time");
    }
}
