package com.google.android.gms.measurement.internal;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzjz {
    public final /* synthetic */ zzkd zza;
    private zzjy zzb;

    public zzjz(zzkd zzkdVar) {
        this.zza = zzkdVar;
    }

    public final void zza(long j10) {
        Handler handler;
        this.zzb = new zzjy(this, this.zza.zzs.zzav().currentTimeMillis(), j10);
        handler = this.zza.zzd;
        handler.postDelayed(this.zzb, 2000L);
    }

    public final void zzb() {
        Handler handler;
        this.zza.zzg();
        if (this.zzb != null) {
            handler = this.zza.zzd;
            handler.removeCallbacks(this.zzb);
        }
        this.zza.zzs.zzm().zzl.zza(false);
    }
}
