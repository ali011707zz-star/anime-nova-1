package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-sdk-api@@19.0.2 */
/* loaded from: classes.dex */
public final class zzdh extends zzdt {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzbz zzb;
    public final /* synthetic */ zzee zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdh(zzee zzeeVar, Bundle bundle, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.zzc = zzeeVar;
        this.zza = bundle;
        this.zzb = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzc.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).performAction(this.zza, this.zzb, this.zzh);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zzb() {
        this.zzb.zzd(null);
    }
}
