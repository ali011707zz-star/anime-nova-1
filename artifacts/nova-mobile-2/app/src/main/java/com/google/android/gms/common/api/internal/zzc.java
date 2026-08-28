package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzc implements Runnable {
    public final /* synthetic */ LifecycleCallback zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzd zzc;

    public zzc(zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.zzc = zzdVar;
        this.zza = lifecycleCallback;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i10 = this.zzc.zzc;
        if (i10 > 0) {
            LifecycleCallback lifecycleCallback = this.zza;
            bundle = this.zzc.zzd;
            if (bundle != null) {
                bundle3 = this.zzc.zzd;
                bundle2 = bundle3.getBundle(this.zzb);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i11 = this.zzc.zzc;
        if (i11 >= 2) {
            this.zza.onStart();
        }
        i12 = this.zzc.zzc;
        if (i12 >= 3) {
            this.zza.onResume();
        }
        i13 = this.zzc.zzc;
        if (i13 >= 4) {
            this.zza.onStop();
        }
        i14 = this.zzc.zzc;
        if (i14 >= 5) {
            this.zza.onDestroy();
        }
    }
}
