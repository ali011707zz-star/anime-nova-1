package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkg extends zzki {
    private final AlarmManager zza;
    private zzam zzb;
    private Integer zzc;

    public zzkg(zzks zzksVar) {
        super(zzksVar);
        this.zza = (AlarmManager) this.zzs.zzau().getSystemService("alarm");
    }

    private final int zzf() {
        if (this.zzc == null) {
            String valueOf = String.valueOf(this.zzs.zzau().getPackageName());
            this.zzc = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.zzc.intValue();
    }

    private final PendingIntent zzh() {
        Context zzau = this.zzs.zzau();
        return com.google.android.gms.internal.measurement.zzbs.zza(zzau, 0, new Intent().setClassName(zzau, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzbs.zza);
    }

    private final zzam zzi() {
        if (this.zzb == null) {
            this.zzb = new zzkf(this, this.zzf.zzq());
        }
        return this.zzb;
    }

    @TargetApi(24)
    private final void zzj() {
        JobScheduler jobScheduler = (JobScheduler) this.zzs.zzau().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(zzf());
        }
    }

    public final void zza() {
        zzY();
        this.zzs.zzay().zzj().zza("Unscheduling upload");
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzh());
        }
        zzi().zzb();
        if (Build.VERSION.SDK_INT >= 24) {
            zzj();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    public final boolean zzb() {
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzh());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzj();
        return false;
    }

    public final void zzd(long j10) {
        zzY();
        this.zzs.zzaw();
        Context zzau = this.zzs.zzau();
        if (!zzkz.zzai(zzau)) {
            this.zzs.zzay().zzc().zza("Receiver not registered/enabled");
        }
        if (!zzkz.zzaj(zzau, false)) {
            this.zzs.zzay().zzc().zza("Service not registered/enabled");
        }
        zza();
        this.zzs.zzay().zzj().zzb("Scheduling upload, millis", Long.valueOf(j10));
        long elapsedRealtime = this.zzs.zzav().elapsedRealtime() + j10;
        this.zzs.zzf();
        if (j10 < Math.max(0L, zzdy.zzw.zza(null).longValue()) && !zzi().zze()) {
            zzi().zzd(j10);
        }
        this.zzs.zzaw();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.zza;
            if (alarmManager != null) {
                this.zzs.zzf();
                alarmManager.setInexactRepeating(2, elapsedRealtime, Math.max(zzdy.zzr.zza(null).longValue(), j10), zzh());
                return;
            }
            return;
        }
        Context zzau2 = this.zzs.zzau();
        ComponentName componentName = new ComponentName(zzau2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int zzf = zzf();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzbt.zza(zzau2, new JobInfo.Builder(zzf, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
