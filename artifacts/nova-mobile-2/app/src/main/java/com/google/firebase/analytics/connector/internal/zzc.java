package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-measurement-api@@19.0.2 */
/* loaded from: classes.dex */
public final class zzc {
    private static final Set<String> zza = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    private static final List<String> zzb = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    private static final List<String> zzc = Arrays.asList("auto", "app", "am");
    private static final List<String> zzd = Arrays.asList("_r", "_dbg");
    private static final List<String> zze = Arrays.asList((String[]) ArrayUtils.concat(zzgu.zza, zzgu.zzb));
    private static final List<String> zzf = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static String zzc(String str) {
        String zza2 = zzgs.zza(str);
        return zza2 != null ? zza2 : str;
    }

    public static void zze(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean zzh(String str, String str2, Bundle bundle) {
        char c10;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!zzl(str) || bundle == null) {
            return false;
        }
        Iterator<String> it2 = zzd.iterator();
        while (it2.hasNext()) {
            if (bundle.containsKey(it2.next())) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode == 101200) {
            if (str.equals(AppMeasurement.FCM_ORIGIN)) {
                c10 = 0;
            }
            c10 = 65535;
        } else if (hashCode != 101230) {
            if (hashCode == 3142703 && str.equals(AppMeasurement.FIAM_ORIGIN)) {
                c10 = 2;
            }
            c10 = 65535;
        } else {
            if (str.equals("fdl")) {
                c10 = 1;
            }
            c10 = 65535;
        }
        if (c10 == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        if (c10 == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        if (c10 != 2) {
            return false;
        }
        bundle.putString("_cis", "fiam_integration");
        return true;
    }

    public static boolean zzj(String str, Bundle bundle) {
        if (zzb.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        Iterator<String> it2 = zzd.iterator();
        while (it2.hasNext()) {
            if (bundle.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzk(String str) {
        return !zza.contains(str);
    }

    public static boolean zzl(String str) {
        return !zzc.contains(str);
    }

    public static boolean zzm(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        }
        if (zze.contains(str2)) {
            return false;
        }
        Iterator<String> it2 = zzf.iterator();
        while (it2.hasNext()) {
            if (str2.matches(it2.next())) {
                return false;
            }
        }
        return true;
    }
}
