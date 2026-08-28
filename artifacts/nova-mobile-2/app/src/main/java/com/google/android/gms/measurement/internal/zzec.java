package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzot;
import com.google.android.gms.internal.measurement.zzqd;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzec extends zzf {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private List<String> zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;

    public zzec(zzfv zzfvVar, long j10) {
        super(zzfvVar);
        this.zzg = j10;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(1:3)(6:82|83|(1:85)(2:100|(1:102))|86|87|(22:89|(1:91)(1:98)|93|94|5|(1:81)(1:9)|10|11|13|(1:15)|16|17|18|(1:20)(1:70)|21|22|(6:24|(1:26)(1:62)|27|(1:29)|30|(1:61))(2:63|(3:65|(1:67)(1:69)|68))|(3:35|(1:37)(1:40)|38)|41|(3:43|(1:45)(3:52|(3:55|(1:57)(1:58)|53)|59)|(2:47|48)(2:50|51))|60|(0)(0)))|4|5|(1:7)|81|10|11|13|(0)|16|17|18|(0)(0)|21|22|(0)(0)|(0)|41|(0)|60|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0231, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0232, code lost:
    
        r13.zzs.zzay().zzd().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzel.zzn(r0), r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01a6 A[Catch: IllegalStateException -> 0x0231, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x0231, blocks: (B:18:0x0176, B:21:0x0191, B:24:0x01a6, B:27:0x01c4, B:30:0x01d1, B:32:0x01d9, B:35:0x0212, B:37:0x0228, B:38:0x022d, B:40:0x022b, B:61:0x01df, B:62:0x01c0, B:63:0x01e6, B:65:0x01ec, B:68:0x020a, B:69:0x0206), top: B:17:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0212 A[Catch: IllegalStateException -> 0x0231, TryCatch #0 {IllegalStateException -> 0x0231, blocks: (B:18:0x0176, B:21:0x0191, B:24:0x01a6, B:27:0x01c4, B:30:0x01d1, B:32:0x01d9, B:35:0x0212, B:37:0x0228, B:38:0x022d, B:40:0x022b, B:61:0x01df, B:62:0x01c0, B:63:0x01e6, B:65:0x01ec, B:68:0x020a, B:69:0x0206), top: B:17:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e6 A[Catch: IllegalStateException -> 0x0231, TryCatch #0 {IllegalStateException -> 0x0231, blocks: (B:18:0x0176, B:21:0x0191, B:24:0x01a6, B:27:0x01c4, B:30:0x01d1, B:32:0x01d9, B:35:0x0212, B:37:0x0228, B:38:0x022d, B:40:0x022b, B:61:0x01df, B:62:0x01c0, B:63:0x01e6, B:65:0x01ec, B:68:0x020a, B:69:0x0206), top: B:17:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0151  */
    @Override // com.google.android.gms.measurement.internal.zzf
    @EnsuresNonNull({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd() {
        String str;
        String str2;
        PackageInfo packageInfo;
        boolean z10;
        int zza;
        List<String> zzp;
        String packageName = this.zzs.zzau().getPackageName();
        PackageManager packageManager = this.zzs.zzau().getPackageManager();
        String str3 = "Unknown";
        int i10 = Integer.MIN_VALUE;
        String str4 = "unknown";
        if (packageManager == null) {
            this.zzs.zzay().zzd().zzb("PackageManager is null, app identity information might be inaccurate. appId", zzel.zzn(packageName));
        } else {
            try {
                str4 = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                this.zzs.zzay().zzd().zzb("Error retrieving app installer package name. appId", zzel.zzn(packageName));
            }
            if (str4 == null) {
                str4 = "manual_install";
            } else if ("com.android.vending".equals(str4)) {
                str4 = "";
            }
            try {
                packageInfo = packageManager.getPackageInfo(this.zzs.zzau().getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                str = "Unknown";
            }
            if (packageInfo != null) {
                CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                str2 = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                try {
                    str3 = packageInfo.versionName;
                    i10 = packageInfo.versionCode;
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = str3;
                    str3 = str2;
                    this.zzs.zzay().zzd().zzc("Error retrieving package info. appId, appName", zzel.zzn(packageName), str3);
                    str2 = str3;
                    str3 = str;
                    this.zza = packageName;
                    this.zzd = str4;
                    this.zzb = str3;
                    this.zzc = i10;
                    this.zze = str2;
                    this.zzf = 0L;
                    if (TextUtils.isEmpty(this.zzs.zzw())) {
                    }
                    zza = this.zzs.zza();
                    switch (zza) {
                    }
                    this.zzj = "";
                    this.zzk = "";
                    this.zzl = "";
                    this.zzs.zzaw();
                    if (z10) {
                    }
                    String zzc = zzig.zzc(this.zzs.zzau(), "google_app_id", this.zzs.zzz());
                    this.zzj = true != TextUtils.isEmpty(zzc) ? zzc : "";
                    zzot.zzc();
                    if (this.zzs.zzf().zzs(null, zzdy.zzad)) {
                    }
                    if (zza == 0) {
                    }
                    this.zzh = null;
                    this.zzs.zzaw();
                    zzp = this.zzs.zzf().zzp("analytics.safelisted_events");
                    if (zzp != null) {
                    }
                    this.zzh = zzp;
                    if (packageManager == null) {
                    }
                }
                this.zza = packageName;
                this.zzd = str4;
                this.zzb = str3;
                this.zzc = i10;
                this.zze = str2;
                this.zzf = 0L;
                z10 = TextUtils.isEmpty(this.zzs.zzw()) && "am".equals(this.zzs.zzx());
                zza = this.zzs.zza();
                switch (zza) {
                    case 0:
                        this.zzs.zzay().zzj().zza("App measurement collection enabled");
                        break;
                    case 1:
                        this.zzs.zzay().zzi().zza("App measurement deactivated via the manifest");
                        break;
                    case 2:
                        this.zzs.zzay().zzj().zza("App measurement deactivated via the init parameters");
                        break;
                    case 3:
                        this.zzs.zzay().zzi().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                        break;
                    case 4:
                        this.zzs.zzay().zzi().zza("App measurement disabled via the manifest");
                        break;
                    case 5:
                        this.zzs.zzay().zzj().zza("App measurement disabled via the init parameters");
                        break;
                    case 6:
                        this.zzs.zzay().zzl().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                        break;
                    case 7:
                        this.zzs.zzay().zzi().zza("App measurement disabled via the global data collection setting");
                        break;
                    default:
                        this.zzs.zzay().zzi().zza("App measurement disabled due to denied storage consent");
                        break;
                }
                this.zzj = "";
                this.zzk = "";
                this.zzl = "";
                this.zzs.zzaw();
                if (z10) {
                    this.zzk = this.zzs.zzw();
                }
                String zzc2 = zzig.zzc(this.zzs.zzau(), "google_app_id", this.zzs.zzz());
                this.zzj = true != TextUtils.isEmpty(zzc2) ? zzc2 : "";
                zzot.zzc();
                if (this.zzs.zzf().zzs(null, zzdy.zzad)) {
                    Context zzau = this.zzs.zzau();
                    String zzz = this.zzs.zzz();
                    Preconditions.checkNotNull(zzau);
                    Resources resources = zzau.getResources();
                    if (TextUtils.isEmpty(zzz)) {
                        zzz = zzfn.zza(zzau);
                    }
                    String zzb = zzfn.zzb("ga_app_id", resources, zzz);
                    this.zzl = true != TextUtils.isEmpty(zzb) ? zzb : "";
                    if (!TextUtils.isEmpty(zzc2) || !TextUtils.isEmpty(zzb)) {
                        this.zzk = zzfn.zzb("admob_app_id", resources, zzz);
                    }
                } else if (!TextUtils.isEmpty(zzc2)) {
                    Context zzau2 = this.zzs.zzau();
                    String zzz2 = this.zzs.zzz();
                    Preconditions.checkNotNull(zzau2);
                    Resources resources2 = zzau2.getResources();
                    if (TextUtils.isEmpty(zzz2)) {
                        zzz2 = zzfn.zza(zzau2);
                    }
                    this.zzk = zzfn.zzb("admob_app_id", resources2, zzz2);
                }
                if (zza == 0) {
                    this.zzs.zzay().zzj().zzc("App measurement enabled for app package, google app id", this.zza, TextUtils.isEmpty(this.zzj) ? this.zzk : this.zzj);
                }
                this.zzh = null;
                this.zzs.zzaw();
                zzp = this.zzs.zzf().zzp("analytics.safelisted_events");
                if (zzp != null) {
                    if (zzp.size() == 0) {
                        this.zzs.zzay().zzl().zza("Safelisted event list is empty. Ignoring");
                    } else {
                        Iterator<String> it2 = zzp.iterator();
                        while (it2.hasNext()) {
                            if (!this.zzs.zzv().zzaa("safelisted event", it2.next())) {
                            }
                        }
                    }
                    if (packageManager == null) {
                        this.zzi = InstantApps.isInstantApp(this.zzs.zzau()) ? 1 : 0;
                        return;
                    } else {
                        this.zzi = 0;
                        return;
                    }
                }
                this.zzh = zzp;
                if (packageManager == null) {
                }
            }
        }
        str2 = "Unknown";
        this.zza = packageName;
        this.zzd = str4;
        this.zzb = str3;
        this.zzc = i10;
        this.zze = str2;
        this.zzf = 0L;
        if (TextUtils.isEmpty(this.zzs.zzw())) {
        }
        zza = this.zzs.zza();
        switch (zza) {
        }
        this.zzj = "";
        this.zzk = "";
        this.zzl = "";
        this.zzs.zzaw();
        if (z10) {
        }
        String zzc22 = zzig.zzc(this.zzs.zzau(), "google_app_id", this.zzs.zzz());
        this.zzj = true != TextUtils.isEmpty(zzc22) ? zzc22 : "";
        zzot.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzad)) {
        }
        if (zza == 0) {
        }
        this.zzh = null;
        this.zzs.zzaw();
        zzp = this.zzs.zzf().zzp("analytics.safelisted_events");
        if (zzp != null) {
        }
        this.zzh = zzp;
        if (packageManager == null) {
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zzf() {
        return true;
    }

    public final int zzh() {
        zza();
        return this.zzi;
    }

    public final int zzi() {
        zza();
        return this.zzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0192  */
    /* JADX WARN: Type inference failed for: r9v34, types: [com.google.android.gms.measurement.internal.zzkz, com.google.android.gms.measurement.internal.zzgo] */
    /* JADX WARN: Type inference failed for: r9v35, types: [com.google.android.gms.measurement.internal.zzgo] */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v45 */
    /* JADX WARN: Type inference failed for: r9v46 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzp zzj(String str) {
        String str2;
        Class<?> loadClass;
        Object invoke;
        long zza;
        String str3;
        long min;
        zzg();
        String zzl = zzl();
        String zzn = zzn();
        zza();
        String str4 = this.zzb;
        zza();
        long j10 = this.zzc;
        zza();
        Preconditions.checkNotNull(this.zzd);
        String str5 = this.zzd;
        this.zzs.zzf().zzh();
        zza();
        zzg();
        long j11 = this.zzf;
        if (j11 == 0) {
            var zzv = this.zzs.zzv();
            Context zzau = this.zzs.zzau();
            String packageName = this.zzs.zzau().getPackageName();
            zzv.zzg();
            Preconditions.checkNotNull(zzau);
            Preconditions.checkNotEmpty(packageName);
            PackageManager packageManager = zzau.getPackageManager();
            MessageDigest zzE = zzkz.zzE("MD5");
            long j12 = -1;
            if (zzE == null) {
                zzv.zzs.zzay().zzd().zza("Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (zzv.zzaf(zzau, packageName)) {
                            j12 = 0;
                            zzv = zzv;
                        } else {
                            Signature[] signatureArr = Wrappers.packageManager(zzau).getPackageInfo(zzv.zzs.zzau().getPackageName(), 64).signatures;
                            if (signatureArr != null && signatureArr.length > 0) {
                                long zzp = zzkz.zzp(zzE.digest(signatureArr[0].toByteArray()));
                                j12 = zzp;
                                zzv = zzp;
                            } else {
                                zzv.zzs.zzay().zzk().zza("Could not get signatures");
                                zzv = zzv;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e10) {
                        zzv.zzs.zzay().zzd().zzb("Package name not found", e10);
                    }
                }
                j11 = 0;
                this.zzf = j11;
            }
            j11 = j12;
            this.zzf = j11;
        }
        long j13 = j11;
        boolean zzJ = this.zzs.zzJ();
        boolean z10 = !this.zzs.zzm().zzk;
        zzg();
        if (this.zzs.zzJ()) {
            zzqd.zzc();
            if (this.zzs.zzf().zzs(null, zzdy.zzaf)) {
                this.zzs.zzay().zzj().zza("Disabled IID for tests.");
            } else {
                try {
                    loadClass = this.zzs.zzau().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                } catch (ClassNotFoundException unused) {
                }
                if (loadClass != null) {
                    try {
                        invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.zzs.zzau());
                    } catch (Exception unused2) {
                        this.zzs.zzay().zzm().zza("Failed to obtain Firebase Analytics instance");
                    }
                    if (invoke != null) {
                        try {
                            str2 = (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                        } catch (Exception unused3) {
                            this.zzs.zzay().zzl().zza("Failed to retrieve Firebase Instance Id");
                        }
                        zzfv zzfvVar = this.zzs;
                        zza = zzfvVar.zzm().zzc.zza();
                        if (zza == 0) {
                            str3 = zzl;
                            min = zzfvVar.zzc;
                        } else {
                            str3 = zzl;
                            min = Math.min(zzfvVar.zzc, zza);
                        }
                        zza();
                        int i10 = this.zzi;
                        boolean zzr = this.zzs.zzf().zzr();
                        zzfa zzm = this.zzs.zzm();
                        zzm.zzg();
                        boolean z11 = zzm.zza().getBoolean("deferred_analytics_collection", false);
                        zza();
                        String str6 = this.zzk;
                        Boolean valueOf = this.zzs.zzf().zzk("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r2.booleanValue());
                        long j14 = this.zzg;
                        List<String> list = this.zzh;
                        zzot.zzc();
                        return new zzp(str3, zzn, str4, j10, str5, 43042L, j13, str, zzJ, z10, str2, 0L, min, i10, zzr, z11, str6, valueOf, j14, list, this.zzs.zzf().zzs(null, zzdy.zzad) ? zzm() : null, this.zzs.zzm().zzc().zzi());
                    }
                    str2 = null;
                    zzfv zzfvVar2 = this.zzs;
                    zza = zzfvVar2.zzm().zzc.zza();
                    if (zza == 0) {
                    }
                    zza();
                    int i102 = this.zzi;
                    boolean zzr2 = this.zzs.zzf().zzr();
                    zzfa zzm2 = this.zzs.zzm();
                    zzm2.zzg();
                    boolean z112 = zzm2.zza().getBoolean("deferred_analytics_collection", false);
                    zza();
                    String str62 = this.zzk;
                    if (this.zzs.zzf().zzk("google_analytics_default_allow_ad_personalization_signals") == null) {
                    }
                    long j142 = this.zzg;
                    List<String> list2 = this.zzh;
                    zzot.zzc();
                    return new zzp(str3, zzn, str4, j10, str5, 43042L, j13, str, zzJ, z10, str2, 0L, min, i102, zzr2, z112, str62, valueOf, j142, list2, this.zzs.zzf().zzs(null, zzdy.zzad) ? zzm() : null, this.zzs.zzm().zzc().zzi());
                }
            }
        }
        str2 = null;
        zzfv zzfvVar22 = this.zzs;
        zza = zzfvVar22.zzm().zzc.zza();
        if (zza == 0) {
        }
        zza();
        int i1022 = this.zzi;
        boolean zzr22 = this.zzs.zzf().zzr();
        zzfa zzm22 = this.zzs.zzm();
        zzm22.zzg();
        boolean z1122 = zzm22.zza().getBoolean("deferred_analytics_collection", false);
        zza();
        String str622 = this.zzk;
        if (this.zzs.zzf().zzk("google_analytics_default_allow_ad_personalization_signals") == null) {
        }
        long j1422 = this.zzg;
        List<String> list22 = this.zzh;
        zzot.zzc();
        return new zzp(str3, zzn, str4, j10, str5, 43042L, j13, str, zzJ, z10, str2, 0L, min, i1022, zzr22, z1122, str622, valueOf, j1422, list22, this.zzs.zzf().zzs(null, zzdy.zzad) ? zzm() : null, this.zzs.zzm().zzc().zzi());
    }

    public final String zzk() {
        zza();
        return this.zzk;
    }

    public final String zzl() {
        zza();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    public final String zzm() {
        zza();
        Preconditions.checkNotNull(this.zzl);
        return this.zzl;
    }

    public final String zzn() {
        zzoe.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzau)) {
            zzg();
        }
        zza();
        Preconditions.checkNotNull(this.zzj);
        return this.zzj;
    }

    public final List<String> zzo() {
        return this.zzh;
    }
}
