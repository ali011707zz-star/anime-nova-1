package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
final class zzhx implements Runnable {
    public final /* synthetic */ boolean zza;
    public final /* synthetic */ Uri zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ String zzd;
    public final /* synthetic */ zzhz zze;

    public zzhx(zzhz zzhzVar, boolean z10, Uri uri, String str, String str2) {
        this.zze = zzhzVar;
        this.zza = z10;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4 A[Catch: RuntimeException -> 0x0155, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0155, blocks: (B:3:0x0011, B:9:0x007b, B:11:0x0089, B:14:0x0096, B:16:0x009c, B:17:0x00b0, B:18:0x00bc, B:23:0x00c4, B:27:0x00eb, B:28:0x0109, B:30:0x00f8, B:31:0x0110, B:33:0x0116, B:35:0x011c, B:37:0x0122, B:39:0x0128, B:41:0x0130, B:43:0x0138, B:45:0x013e, B:48:0x0145, B:50:0x002e, B:52:0x0034, B:54:0x003a, B:56:0x0040, B:58:0x0046, B:59:0x0054, B:61:0x005c, B:62:0x0067, B:64:0x0071, B:65:0x0061), top: B:2:0x0011 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Bundle zzs;
        Bundle zzs2;
        zzhz zzhzVar = this.zze;
        boolean z10 = this.zza;
        Uri uri = this.zzb;
        String str = this.zzc;
        String str2 = this.zzd;
        zzhzVar.zza.zzg();
        try {
            zzkz zzv = zzhzVar.zza.zzs.zzv();
            if (!TextUtils.isEmpty(str2)) {
                if (!str2.contains("gclid") && !str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium")) {
                    zzv.zzs.zzay().zzc().zza("Activity created with data 'referrer' without required params");
                } else {
                    zzs = zzv.zzs(Uri.parse(str2.length() != 0 ? "https://google.com/search?".concat(str2) : new String("https://google.com/search?")));
                    if (zzs != null) {
                        zzs.putString("_cis", "referrer");
                    }
                    if (z10 && (zzs2 = zzhzVar.zza.zzs.zzv().zzs(uri)) != null) {
                        zzs2.putString("_cis", "intent");
                        if (!zzs2.containsKey("gclid") && zzs != null && zzs.containsKey("gclid")) {
                            zzs2.putString("_cer", String.format("gclid=%s", zzs.getString("gclid")));
                        }
                        zzhzVar.zza.zzG(str, "_cmp", zzs2);
                        zzhzVar.zza.zzb.zza(str, zzs2);
                    }
                    if (TextUtils.isEmpty(str2)) {
                        zzhzVar.zza.zzs.zzay().zzc().zzb("Activity created with referrer", str2);
                        if (zzhzVar.zza.zzs.zzf().zzs(null, zzdy.zzaa)) {
                            if (zzs != null) {
                                zzhzVar.zza.zzG(str, "_cmp", zzs);
                                zzhzVar.zza.zzb.zza(str, zzs);
                            } else {
                                zzhzVar.zza.zzs.zzay().zzc().zzb("Referrer does not contain valid parameters", str2);
                            }
                            zzhzVar.zza.zzX("auto", "_ldl", null, true);
                            return;
                        }
                        if (str2.contains("gclid") && (str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_term") || str2.contains("utm_content"))) {
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            zzhzVar.zza.zzX("auto", "_ldl", str2, true);
                            return;
                        }
                        zzhzVar.zza.zzs.zzay().zzc().zza("Activity created with data 'referrer' without required params");
                        return;
                    }
                    return;
                }
            }
            zzs = null;
            if (z10) {
                zzs2.putString("_cis", "intent");
                if (!zzs2.containsKey("gclid")) {
                    zzs2.putString("_cer", String.format("gclid=%s", zzs.getString("gclid")));
                }
                zzhzVar.zza.zzG(str, "_cmp", zzs2);
                zzhzVar.zza.zzb.zza(str, zzs2);
            }
            if (TextUtils.isEmpty(str2)) {
            }
        } catch (RuntimeException e10) {
            zzhzVar.zza.zzs.zzay().zzd().zzb("Throwable caught in handleReferrerForOnActivityCreated", e10);
        }
    }
}
