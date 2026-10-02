package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.zzjt;
import com.google.android.gms.measurement.internal.zzju;
import e1.a;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements zzjt {
    private zzju<AppMeasurementService> zza;

    private final zzju<AppMeasurementService> zzd() {
        if (this.zza == null) {
            this.zza = new zzju<>(this);
        }
        return this.zza;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return zzd().zzb(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzd().zze();
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzd().zzf();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        zzd().zzg(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        zzd().zza(intent, i10, i11);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        zzd().zzj(intent);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzjt
    public final void zza(Intent intent) {
        a.completeWakefulIntent(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjt
    public final void zzb(JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzjt
    public final boolean zzc(int i10) {
        return stopSelfResult(i10);
    }
}
