package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
final class zzx implements Runnable {
    public final /* synthetic */ zzw zza;
    public final /* synthetic */ Callable zzb;

    public zzx(zzw zzwVar, Callable callable) {
        this.zza = zzwVar;
        this.zzb = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.zza(this.zzb.call());
        } catch (Exception e10) {
            this.zza.zzc(e10);
        } catch (Throwable th) {
            this.zza.zzc(new RuntimeException(th));
        }
    }
}
