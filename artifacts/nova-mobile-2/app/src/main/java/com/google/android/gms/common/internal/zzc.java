package com.google.android.gms.common.internal;

import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public abstract class zzc<TListener> {
    private TListener zza;
    private boolean zzb = false;
    public final /* synthetic */ BaseGmsClient zzd;

    public zzc(BaseGmsClient baseGmsClient, TListener tlistener) {
        this.zzd = baseGmsClient;
        this.zza = tlistener;
    }

    public abstract void zzc();

    public abstract void zzd(TListener tlistener);

    public final void zze() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.zza;
            if (this.zzb) {
                String valueOf = String.valueOf(this);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 47);
                sb2.append("Callback proxy ");
                sb2.append(valueOf);
                sb2.append(" being reused. This is not safe.");
            }
        }
        if (tlistener != null) {
            try {
                zzd(tlistener);
            } catch (RuntimeException e10) {
                throw e10;
            }
        }
        synchronized (this) {
            this.zzb = true;
        }
        zzf();
    }

    public final void zzf() {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzg();
        arrayList = this.zzd.zzt;
        synchronized (arrayList) {
            arrayList2 = this.zzd.zzt;
            arrayList2.remove(this);
        }
    }

    public final void zzg() {
        synchronized (this) {
            this.zza = null;
        }
    }
}
