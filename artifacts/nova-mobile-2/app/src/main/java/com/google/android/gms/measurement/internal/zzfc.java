package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfc implements ServiceConnection {
    public final /* synthetic */ zzfd zza;
    private final String zzb;

    public zzfc(zzfd zzfdVar, String str) {
        this.zza = zzfdVar;
        this.zzb = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                com.google.android.gms.internal.measurement.zzbr zzb = com.google.android.gms.internal.measurement.zzbq.zzb(iBinder);
                if (zzb == null) {
                    this.zza.zza.zzay().zzk().zza("Install Referrer Service implementation was not found");
                    return;
                } else {
                    this.zza.zza.zzay().zzj().zza("Install Referrer Service connected");
                    this.zza.zza.zzaz().zzp(new zzfb(this, zzb, this));
                    return;
                }
            } catch (RuntimeException e10) {
                this.zza.zza.zzay().zzk().zzb("Exception occurred while calling Install Referrer API", e10);
                return;
            }
        }
        this.zza.zza.zzay().zzk().zza("Install Referrer connection returned with null binder");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zza.zza.zzay().zzj().zza("Install Referrer Service disconnected");
    }
}
