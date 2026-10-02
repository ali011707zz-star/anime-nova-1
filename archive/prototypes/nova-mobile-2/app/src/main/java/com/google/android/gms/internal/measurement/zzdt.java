package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-sdk-api@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzdt implements Runnable {
    public final long zzh;
    public final long zzi;
    public final boolean zzj;
    public final /* synthetic */ zzee zzk;

    public zzdt(zzee zzeeVar, boolean z10) {
        this.zzk = zzeeVar;
        this.zzh = zzeeVar.zza.currentTimeMillis();
        this.zzi = zzeeVar.zza.elapsedRealtime();
        this.zzj = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        z10 = this.zzk.zzh;
        if (z10) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e10) {
            this.zzk.zzS(e10, false, this.zzj);
            zzb();
        }
    }

    public abstract void zza() throws RemoteException;

    public void zzb() {
    }
}
