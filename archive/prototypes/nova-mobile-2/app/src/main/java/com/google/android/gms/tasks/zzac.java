package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
public final class zzac implements zzab {
    private final Object zza = new Object();
    private final int zzb;
    private final zzw<Void> zzc;

    @GuardedBy("mLock")
    private int zzd;

    @GuardedBy("mLock")
    private int zze;

    @GuardedBy("mLock")
    private int zzf;

    @GuardedBy("mLock")
    private Exception zzg;

    @GuardedBy("mLock")
    private boolean zzh;

    public zzac(int i10, zzw<Void> zzwVar) {
        this.zzb = i10;
        this.zzc = zzwVar;
    }

    @GuardedBy("mLock")
    private final void zza() {
        int i10 = this.zzd;
        int i11 = this.zze;
        int i12 = this.zzf;
        int i13 = this.zzb;
        if (i10 + i11 + i12 == i13) {
            if (this.zzg == null) {
                if (this.zzh) {
                    this.zzc.zze();
                    return;
                } else {
                    this.zzc.zza(null);
                    return;
                }
            }
            zzw<Void> zzwVar = this.zzc;
            StringBuilder sb2 = new StringBuilder(54);
            sb2.append(i11);
            sb2.append(" out of ");
            sb2.append(i13);
            sb2.append(" underlying tasks failed");
            zzwVar.zzc(new ExecutionException(sb2.toString(), this.zzg));
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.zza) {
            this.zzf++;
            this.zzh = true;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        synchronized (this.zza) {
            this.zze++;
            this.zzg = exc;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        synchronized (this.zza) {
            this.zzd++;
            zza();
        }
    }
}
