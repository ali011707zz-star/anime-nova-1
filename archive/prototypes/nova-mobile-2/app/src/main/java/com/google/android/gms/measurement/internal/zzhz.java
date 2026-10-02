package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class zzhz implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ zzia zza;

    public /* synthetic */ zzhz(zzia zziaVar, zzhy zzhyVar) {
        this.zza = zziaVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzfv zzfvVar;
        try {
            try {
                this.zza.zzs.zzay().zzj().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    zzfvVar = this.zza.zzs;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.zza.zzs.zzv();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z10 = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z10 = false;
                        }
                        this.zza.zzs.zzaz().zzp(new zzhx(this, z10, data, str, queryParameter));
                        zzfvVar = this.zza.zzs;
                    }
                    zzfvVar = this.zza.zzs;
                }
            } catch (RuntimeException e10) {
                this.zza.zzs.zzay().zzd().zzb("Throwable caught in onActivityCreated", e10);
                zzfvVar = this.zza.zzs;
            }
            zzfvVar.zzs().zzr(activity, bundle);
        } catch (Throwable th) {
            this.zza.zzs.zzs().zzr(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzs.zzs().zzs(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.zza.zzs.zzs().zzt(activity);
        zzkd zzu = this.zza.zzs.zzu();
        zzu.zzs.zzaz().zzp(new zzjw(zzu, zzu.zzs.zzav().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzkd zzu = this.zza.zzs.zzu();
        zzu.zzs.zzaz().zzp(new zzjv(zzu, zzu.zzs.zzav().elapsedRealtime()));
        this.zza.zzs.zzs().zzu(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zza.zzs.zzs().zzv(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
