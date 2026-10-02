package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public final class zze {

    @GuardedBy("MessengerIpcClient.class")
    private static zze zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;

    @GuardedBy("this")
    private zzf zzd = new zzf(this);

    @GuardedBy("this")
    private int zze = 1;

    private zze(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = scheduledExecutorService;
        this.zzb = context.getApplicationContext();
    }

    public static synchronized zze zza(Context context) {
        zze zzeVar;
        synchronized (zze.class) {
            if (zza == null) {
                zza = new zze(context, com.google.android.gms.internal.cloudmessaging.zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), com.google.android.gms.internal.cloudmessaging.zzf.zzb));
            }
            zzeVar = zza;
        }
        return zzeVar;
    }

    public final Task<Bundle> zzb(int i10, Bundle bundle) {
        return zza(new zzs(zza(), 1, bundle));
    }

    public static /* synthetic */ ScheduledExecutorService zzb(zze zzeVar) {
        return zzeVar.zzc;
    }

    public final Task<Void> zza(int i10, Bundle bundle) {
        return zza(new zzn(zza(), 2, bundle));
    }

    private final synchronized <T> Task<T> zza(zzq<T> zzqVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(zzqVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 9);
            sb2.append("Queueing ");
            sb2.append(valueOf);
        }
        if (!this.zzd.zza((zzq<?>) zzqVar)) {
            zzf zzfVar = new zzf(this);
            this.zzd = zzfVar;
            zzfVar.zza((zzq<?>) zzqVar);
        }
        return zzqVar.zzb.getTask();
    }

    private final synchronized int zza() {
        int i10;
        i10 = this.zze;
        this.zze = i10 + 1;
        return i10;
    }

    public static /* synthetic */ Context zza(zze zzeVar) {
        return zzeVar.zzb;
    }
}
