package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zziv implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzjo zzb;

    public zziv(zzjo zzjoVar, zzp zzpVar) {
        this.zzb = zzjoVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeb zzebVar;
        zzebVar = this.zzb.zzb;
        if (zzebVar == null) {
            this.zzb.zzs.zzay().zzd().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzebVar.zzj(this.zza);
            this.zzb.zzs.zzi().zzm();
            this.zzb.zzD(zzebVar, null, this.zza);
            this.zzb.zzQ();
        } catch (RemoteException e10) {
            this.zzb.zzs.zzay().zzd().zzb("Failed to send app launch to the service", e10);
        }
    }
}
