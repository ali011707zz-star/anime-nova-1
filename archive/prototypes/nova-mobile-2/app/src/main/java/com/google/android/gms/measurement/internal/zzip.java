package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzip implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzp zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzcf zze;
    public final /* synthetic */ zzjo zzf;

    public zzip(zzjo zzjoVar, String str, String str2, zzp zzpVar, boolean z10, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.zzf = zzjoVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = z10;
        this.zze = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        RemoteException e10;
        zzeb zzebVar;
        Bundle bundle2 = new Bundle();
        try {
            zzebVar = this.zzf.zzb;
            if (zzebVar == null) {
                this.zzf.zzs.zzay().zzd().zzc("Failed to get user properties; not connected to service", this.zza, this.zzb);
                this.zzf.zzs.zzv().zzQ(this.zze, bundle2);
                return;
            }
            Preconditions.checkNotNull(this.zzc);
            List<zzkv> zzh = zzebVar.zzh(this.zza, this.zzb, this.zzd, this.zzc);
            bundle = new Bundle();
            if (zzh != null) {
                for (zzkv zzkvVar : zzh) {
                    String str = zzkvVar.zze;
                    if (str != null) {
                        bundle.putString(zzkvVar.zzb, str);
                    } else {
                        Long l10 = zzkvVar.zzd;
                        if (l10 != null) {
                            bundle.putLong(zzkvVar.zzb, l10.longValue());
                        } else {
                            Double d10 = zzkvVar.zzg;
                            if (d10 != null) {
                                bundle.putDouble(zzkvVar.zzb, d10.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.zzf.zzQ();
                    this.zzf.zzs.zzv().zzQ(this.zze, bundle);
                } catch (RemoteException e11) {
                    e10 = e11;
                    this.zzf.zzs.zzay().zzd().zzc("Failed to get user properties; remote exception", this.zza, e10);
                    this.zzf.zzs.zzv().zzQ(this.zze, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.zzf.zzs.zzv().zzQ(this.zze, bundle2);
                throw th;
            }
        } catch (RemoteException e12) {
            bundle = bundle2;
            e10 = e12;
        } catch (Throwable th2) {
            th = th2;
            this.zzf.zzs.zzv().zzQ(this.zze, bundle2);
            throw th;
        }
    }
}
