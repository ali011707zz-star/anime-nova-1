package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.cache.DiskLruCache;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzaf extends zzgo {
    private Boolean zza;
    private zzae zzb;
    private Boolean zzc;

    public zzaf(zzfv zzfvVar) {
        super(zzfvVar);
        this.zzb = new zzae() { // from class: com.google.android.gms.measurement.internal.zzad
            @Override // com.google.android.gms.measurement.internal.zzae
            public final String zza(String str, String str2) {
                return null;
            }
        };
    }

    public static final long zzA() {
        return zzdy.zzC.zza(null).longValue();
    }

    private final String zzB(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            this.zzs.zzay().zzd().zzb("Could not find SystemProperties class", e10);
            return "";
        } catch (IllegalAccessException e11) {
            this.zzs.zzay().zzd().zzb("Could not access SystemProperties.get()", e11);
            return "";
        } catch (NoSuchMethodException e12) {
            this.zzs.zzay().zzd().zzb("Could not find SystemProperties.get() method", e12);
            return "";
        } catch (InvocationTargetException e13) {
            this.zzs.zzay().zzd().zzb("SystemProperties.get() threw an exception", e13);
            return "";
        }
    }

    public static final long zzz() {
        return zzdy.zzc.zza(null).longValue();
    }

    public final double zza(String str, zzdx<Double> zzdxVar) {
        if (str == null) {
            return zzdxVar.zza(null).doubleValue();
        }
        String zza = this.zzb.zza(str, zzdxVar.zzb());
        if (TextUtils.isEmpty(zza)) {
            return zzdxVar.zza(null).doubleValue();
        }
        try {
            return zzdxVar.zza(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzdxVar.zza(null).doubleValue();
        }
    }

    public final int zzb(String str) {
        return zzf(str, zzdy.zzG, 500, 2000);
    }

    public final int zzc() {
        zzkz zzv = this.zzs.zzv();
        Boolean zzj = zzv.zzs.zzt().zzj();
        if (zzv.zzm() < 201500) {
            return (zzj == null || zzj.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int zzd(String str) {
        return zzf(str, zzdy.zzH, 25, 100);
    }

    public final int zze(String str, zzdx<Integer> zzdxVar) {
        if (str == null) {
            return zzdxVar.zza(null).intValue();
        }
        String zza = this.zzb.zza(str, zzdxVar.zzb());
        if (TextUtils.isEmpty(zza)) {
            return zzdxVar.zza(null).intValue();
        }
        try {
            return zzdxVar.zza(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException unused) {
            return zzdxVar.zza(null).intValue();
        }
    }

    public final int zzf(String str, zzdx<Integer> zzdxVar, int i10, int i11) {
        return Math.max(Math.min(zze(str, zzdxVar), i11), i10);
    }

    public final long zzh() {
        this.zzs.zzaw();
        return 43042L;
    }

    public final long zzi(String str, zzdx<Long> zzdxVar) {
        if (str == null) {
            return zzdxVar.zza(null).longValue();
        }
        String zza = this.zzb.zza(str, zzdxVar.zzb());
        if (TextUtils.isEmpty(zza)) {
            return zzdxVar.zza(null).longValue();
        }
        try {
            return zzdxVar.zza(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException unused) {
            return zzdxVar.zza(null).longValue();
        }
    }

    @VisibleForTesting
    public final Bundle zzj() {
        try {
            if (this.zzs.zzau().getPackageManager() == null) {
                this.zzs.zzay().zzd().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(this.zzs.zzau()).getApplicationInfo(this.zzs.zzau().getPackageName(), 128);
            if (applicationInfo == null) {
                this.zzs.zzay().zzd().zza("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            return applicationInfo.metaData;
        } catch (PackageManager.NameNotFoundException e10) {
            this.zzs.zzay().zzd().zzb("Failed to load metadata: Package name not found", e10);
            return null;
        }
    }

    @VisibleForTesting
    public final Boolean zzk(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle zzj = zzj();
        if (zzj == null) {
            this.zzs.zzay().zzd().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (zzj.containsKey(str)) {
            return Boolean.valueOf(zzj.getBoolean(str));
        }
        return null;
    }

    public final String zzl() {
        return zzB("debug.firebase.analytics.app", "");
    }

    public final String zzm() {
        return zzB("debug.deferred.deeplink", "");
    }

    public final String zzn() {
        this.zzs.zzaw();
        return "FA";
    }

    public final String zzo(String str, zzdx<String> zzdxVar) {
        if (str == null) {
            return zzdxVar.zza(null);
        }
        return zzdxVar.zza(this.zzb.zza(str, zzdxVar.zzb()));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<String> zzp(String str) {
        Integer valueOf;
        Preconditions.checkNotEmpty("analytics.safelisted_events");
        Bundle zzj = zzj();
        if (zzj == null) {
            this.zzs.zzay().zzd().zza("Failed to load metadata: Metadata bundle is null");
        } else if (zzj.containsKey("analytics.safelisted_events")) {
            valueOf = Integer.valueOf(zzj.getInt("analytics.safelisted_events"));
            if (valueOf != null) {
                try {
                    String[] stringArray = this.zzs.zzau().getResources().getStringArray(valueOf.intValue());
                    if (stringArray == null) {
                        return null;
                    }
                    return Arrays.asList(stringArray);
                } catch (Resources.NotFoundException e10) {
                    this.zzs.zzay().zzd().zzb("Failed to load string array from metadata: resource not found", e10);
                }
            }
            return null;
        }
        valueOf = null;
        if (valueOf != null) {
        }
        return null;
    }

    public final void zzq(zzae zzaeVar) {
        this.zzb = zzaeVar;
    }

    public final boolean zzr() {
        Boolean zzk = zzk("google_analytics_adid_collection_enabled");
        return zzk == null || zzk.booleanValue();
    }

    public final boolean zzs(String str, zzdx<Boolean> zzdxVar) {
        boolean parseBoolean;
        if (str == null) {
            return zzdxVar.zza(null).booleanValue();
        }
        String zza = this.zzb.zza(str, zzdxVar.zzb());
        if (!TextUtils.isEmpty(zza)) {
            if (this.zzs.zzf().zzs(null, zzdy.zzaC)) {
                parseBoolean = DiskLruCache.VERSION_1.equals(zza);
            } else {
                parseBoolean = Boolean.parseBoolean(zza);
            }
            return zzdxVar.zza(Boolean.valueOf(parseBoolean)).booleanValue();
        }
        return zzdxVar.zza(null).booleanValue();
    }

    public final boolean zzt(String str) {
        return DiskLruCache.VERSION_1.equals(this.zzb.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzu() {
        Boolean zzk = zzk("google_analytics_automatic_screen_reporting_enabled");
        return zzk == null || zzk.booleanValue();
    }

    public final boolean zzv() {
        this.zzs.zzaw();
        Boolean zzk = zzk("firebase_analytics_collection_deactivated");
        return zzk != null && zzk.booleanValue();
    }

    public final boolean zzw(String str) {
        return DiskLruCache.VERSION_1.equals(this.zzb.zza(str, "measurement.event_sampling_enabled"));
    }

    public final boolean zzx() {
        if (this.zza == null) {
            Boolean zzk = zzk("app_measurement_lite");
            this.zza = zzk;
            if (zzk == null) {
                this.zza = Boolean.FALSE;
            }
        }
        return this.zza.booleanValue() || !this.zzs.zzN();
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean zzy() {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    ApplicationInfo applicationInfo = this.zzs.zzau().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z10 = false;
                        if (str != null && str.equals(myProcessName)) {
                            z10 = true;
                        }
                        this.zzc = Boolean.valueOf(z10);
                    }
                    if (this.zzc == null) {
                        this.zzc = Boolean.TRUE;
                        this.zzs.zzay().zzd().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzc.booleanValue();
    }
}
