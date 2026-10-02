package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzfb implements Runnable {
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzbr zza;
    public final /* synthetic */ ServiceConnection zzb;
    public final /* synthetic */ zzfc zzc;

    public zzfb(zzfc zzfcVar, com.google.android.gms.internal.measurement.zzbr zzbrVar, ServiceConnection serviceConnection) {
        this.zzc = zzfcVar;
        this.zza = zzbrVar;
        this.zzb = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfc zzfcVar = this.zzc;
        zzfd zzfdVar = zzfcVar.zza;
        str = zzfcVar.zzb;
        com.google.android.gms.internal.measurement.zzbr zzbrVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        zzfdVar.zza.zzaz().zzg();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle zzd = zzbrVar.zzd(bundle);
            if (zzd == null) {
                zzfdVar.zza.zzay().zzd().zza("Install Referrer Service returned a null response");
            } else {
                bundle2 = zzd;
            }
        } catch (Exception e10) {
            zzfdVar.zza.zzay().zzd().zzb("Exception occurred while retrieving the Install Referrer", e10.getMessage());
        }
        zzfdVar.zza.zzaz().zzg();
        zzfv.zzO();
        if (bundle2 != null) {
            long j10 = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j10 == 0) {
                zzfdVar.zza.zzay().zzk().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string != null && !string.isEmpty()) {
                    zzfdVar.zza.zzay().zzj().zzb("InstallReferrer API result", string);
                    Bundle zzs = zzfdVar.zza.zzv().zzs(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (zzs == null) {
                        zzfdVar.zza.zzay().zzd().zza("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = zzs.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j11 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j11 == 0) {
                                zzfdVar.zza.zzay().zzd().zza("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                zzs.putLong("click_timestamp", j11);
                            }
                        }
                        if (j10 == zzfdVar.zza.zzm().zzd.zza()) {
                            zzfdVar.zza.zzay().zzj().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (zzfdVar.zza.zzJ()) {
                            zzfdVar.zza.zzm().zzd.zzb(j10);
                            zzfdVar.zza.zzay().zzj().zzb("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            zzs.putString("_cis", "referrer API v2");
                            zzfdVar.zza.zzq().zzF("auto", "_cmp", zzs, str);
                        }
                    }
                } else {
                    zzfdVar.zza.zzay().zzd().zza("No referrer defined in Install Referrer response");
                }
            }
        }
        ConnectionTracker.getInstance().unbindService(zzfdVar.zza.zzau(), serviceConnection);
    }
}
