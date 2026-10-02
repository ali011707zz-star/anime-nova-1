package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzob;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.HttpStatus;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfv implements zzgq {
    private static volatile zzfv zzd;
    private zzec zzA;
    private Boolean zzC;
    private long zzD;
    private volatile Boolean zzE;
    private volatile boolean zzF;
    private int zzG;

    @VisibleForTesting
    public Boolean zza;

    @VisibleForTesting
    public Boolean zzb;

    @VisibleForTesting
    public final long zzc;
    private final Context zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    private final boolean zzi;
    private final zzaa zzj;
    private final zzaf zzk;
    private final zzfa zzl;
    private final zzel zzm;
    private final zzfs zzn;
    private final zzkd zzo;
    private final zzkz zzp;
    private final zzeg zzq;
    private final Clock zzr;
    private final zzio zzs;
    private final zzia zzt;
    private final zzd zzu;
    private final zzie zzv;
    private final String zzw;
    private zzee zzx;
    private zzjo zzy;
    private zzan zzz;
    private boolean zzB = false;
    private final AtomicInteger zzH = new AtomicInteger(0);

    public zzfv(zzgy zzgyVar) {
        long currentTimeMillis;
        Bundle bundle;
        Preconditions.checkNotNull(zzgyVar);
        zzaa zzaaVar = new zzaa(zzgyVar.zza);
        this.zzj = zzaaVar;
        zzdv.zza = zzaaVar;
        Context context = zzgyVar.zza;
        this.zze = context;
        this.zzf = zzgyVar.zzb;
        this.zzg = zzgyVar.zzc;
        this.zzh = zzgyVar.zzd;
        this.zzi = zzgyVar.zzh;
        this.zzE = zzgyVar.zze;
        this.zzw = zzgyVar.zzj;
        this.zzF = true;
        com.google.android.gms.internal.measurement.zzcl zzclVar = zzgyVar.zzg;
        if (zzclVar != null && (bundle = zzclVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zza = (Boolean) obj;
            }
            Object obj2 = zzclVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzb = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzhu.zzd(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzr = defaultClock;
        Long l10 = zzgyVar.zzi;
        if (l10 != null) {
            currentTimeMillis = l10.longValue();
        } else {
            currentTimeMillis = defaultClock.currentTimeMillis();
        }
        this.zzc = currentTimeMillis;
        this.zzk = new zzaf(this);
        zzfa zzfaVar = new zzfa(this);
        zzfaVar.zzv();
        this.zzl = zzfaVar;
        zzel zzelVar = new zzel(this);
        zzelVar.zzv();
        this.zzm = zzelVar;
        zzkz zzkzVar = new zzkz(this);
        zzkzVar.zzv();
        this.zzp = zzkzVar;
        this.zzq = new zzeg(new zzgx(zzgyVar, this));
        this.zzu = new zzd(this);
        zzio zzioVar = new zzio(this);
        zzioVar.zzb();
        this.zzs = zzioVar;
        zzia zziaVar = new zzia(this);
        zziaVar.zzb();
        this.zzt = zziaVar;
        zzkd zzkdVar = new zzkd(this);
        zzkdVar.zzb();
        this.zzo = zzkdVar;
        zzie zzieVar = new zzie(this);
        zzieVar.zzv();
        this.zzv = zzieVar;
        zzfs zzfsVar = new zzfs(this);
        zzfsVar.zzv();
        this.zzn = zzfsVar;
        com.google.android.gms.internal.measurement.zzcl zzclVar2 = zzgyVar.zzg;
        boolean z10 = zzclVar2 == null || zzclVar2.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            zzia zzq = zzq();
            if (zzq.zzs.zze.getApplicationContext() instanceof Application) {
                Application application = (Application) zzq.zzs.zze.getApplicationContext();
                if (zzq.zza == null) {
                    zzq.zza = new zzhz(zzq, null);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(zzq.zza);
                    application.registerActivityLifecycleCallbacks(zzq.zza);
                    zzq.zzs.zzay().zzj().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzay().zzk().zza("Application context is not an Application");
        }
        zzfsVar.zzp(new zzfu(this, zzgyVar));
    }

    public static /* bridge */ /* synthetic */ void zzA(zzfv zzfvVar, zzgy zzgyVar) {
        zzfvVar.zzaz().zzg();
        zzfvVar.zzk.zzn();
        zzan zzanVar = new zzan(zzfvVar);
        zzanVar.zzv();
        zzfvVar.zzz = zzanVar;
        zzec zzecVar = new zzec(zzfvVar, zzgyVar.zzf);
        zzecVar.zzb();
        zzfvVar.zzA = zzecVar;
        zzee zzeeVar = new zzee(zzfvVar);
        zzeeVar.zzb();
        zzfvVar.zzx = zzeeVar;
        zzjo zzjoVar = new zzjo(zzfvVar);
        zzjoVar.zzb();
        zzfvVar.zzy = zzjoVar;
        zzfvVar.zzp.zzw();
        zzfvVar.zzl.zzw();
        zzfvVar.zzA.zzc();
        zzej zzi = zzfvVar.zzay().zzi();
        zzfvVar.zzk.zzh();
        zzi.zzb("App measurement initialized, version", 43042L);
        zzfvVar.zzay().zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String zzl = zzecVar.zzl();
        if (TextUtils.isEmpty(zzfvVar.zzf)) {
            if (zzfvVar.zzv().zzad(zzl)) {
                zzfvVar.zzay().zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzej zzi2 = zzfvVar.zzay().zzi();
                String valueOf = String.valueOf(zzl);
                zzi2.zza(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        zzfvVar.zzay().zzc().zza("Debug-level message logging enabled");
        if (zzfvVar.zzG != zzfvVar.zzH.get()) {
            zzfvVar.zzay().zzd().zzc("Not all components initialized", Integer.valueOf(zzfvVar.zzG), Integer.valueOf(zzfvVar.zzH.get()));
        }
        zzfvVar.zzB = true;
    }

    public static final void zzO() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void zzP(zzgo zzgoVar) {
        if (zzgoVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void zzQ(zzf zzfVar) {
        if (zzfVar != null) {
            if (zzfVar.zze()) {
                return;
            }
            String valueOf = String.valueOf(zzfVar.getClass());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 27);
            sb2.append("Component not initialized: ");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzR(zzgp zzgpVar) {
        if (zzgpVar != null) {
            if (zzgpVar.zzx()) {
                return;
            }
            String valueOf = String.valueOf(zzgpVar.getClass());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 27);
            sb2.append("Component not initialized: ");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    public static zzfv zzp(Context context, com.google.android.gms.internal.measurement.zzcl zzclVar, Long l10) {
        Bundle bundle;
        if (zzclVar != null && (zzclVar.zze == null || zzclVar.zzf == null)) {
            zzclVar = new com.google.android.gms.internal.measurement.zzcl(zzclVar.zza, zzclVar.zzb, zzclVar.zzc, zzclVar.zzd, null, null, zzclVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzd == null) {
            synchronized (zzfv.class) {
                if (zzd == null) {
                    zzd = new zzfv(new zzgy(context, zzclVar, l10));
                }
            }
        } else if (zzclVar != null && (bundle = zzclVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzd);
            zzd.zzE = Boolean.valueOf(zzclVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzd);
        return zzd;
    }

    public final void zzB() {
        this.zzH.incrementAndGet();
    }

    public final /* synthetic */ void zzC(String str, int i10, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        if (i10 != 200 && i10 != 204) {
            if (i10 == 304) {
                i10 = HttpStatus.SC_NOT_MODIFIED;
            }
            zzay().zzk().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i10), th);
        }
        if (th == null) {
            zzm().zzm.zza(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String optString = jSONObject.optString("deeplink", "");
                    String optString2 = jSONObject.optString("gclid", "");
                    double optDouble = jSONObject.optDouble("timestamp", ShadowDrawableWrapper.COS_45);
                    if (TextUtils.isEmpty(optString)) {
                        zzay().zzc().zza("Deferred Deep Link is empty.");
                        return;
                    }
                    zzkz zzv = zzv();
                    zzfv zzfvVar = zzv.zzs;
                    if (!TextUtils.isEmpty(optString) && (queryIntentActivities = zzv.zzs.zze.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putString("gclid", optString2);
                        bundle.putString("_cis", "ddp");
                        this.zzt.zzG("auto", "_cmp", bundle);
                        zzkz zzv2 = zzv();
                        if (TextUtils.isEmpty(optString)) {
                            return;
                        }
                        try {
                            SharedPreferences.Editor edit = zzv2.zzs.zze.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            edit.putString("deeplink", optString);
                            edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                            if (edit.commit()) {
                                zzv2.zzs.zze.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                return;
                            }
                            return;
                        } catch (RuntimeException e10) {
                            zzv2.zzs.zzay().zzd().zzb("Failed to persist Deferred Deep Link. exception", e10);
                            return;
                        }
                    }
                    zzay().zzk().zzc("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                    return;
                } catch (JSONException e11) {
                    zzay().zzd().zzb("Failed to parse the Deferred Deep Link response. exception", e11);
                    return;
                }
            }
            zzay().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        zzay().zzk().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i10), th);
    }

    public final void zzD() {
        this.zzG++;
    }

    public final void zzE() {
        zzaz().zzg();
        zzR(zzr());
        String zzl = zzh().zzl();
        Pair<String, Boolean> zzb = zzm().zzb(zzl);
        if (this.zzk.zzr() && !((Boolean) zzb.second).booleanValue() && !TextUtils.isEmpty((CharSequence) zzb.first)) {
            zzie zzr = zzr();
            zzr.zzu();
            ConnectivityManager connectivityManager = (ConnectivityManager) zzr.zzs.zze.getSystemService("connectivity");
            NetworkInfo networkInfo = null;
            if (connectivityManager != null) {
                try {
                    networkInfo = connectivityManager.getActiveNetworkInfo();
                } catch (SecurityException unused) {
                }
            }
            if (networkInfo != null && networkInfo.isConnected()) {
                zzkz zzv = zzv();
                zzh().zzs.zzk.zzh();
                URL zzD = zzv.zzD(43042L, zzl, (String) zzb.first, zzm().zzn.zza() - 1);
                if (zzD != null) {
                    zzie zzr2 = zzr();
                    zzft zzftVar = new zzft(this);
                    zzr2.zzg();
                    zzr2.zzu();
                    Preconditions.checkNotNull(zzD);
                    Preconditions.checkNotNull(zzftVar);
                    zzr2.zzs.zzaz().zzo(new zzid(zzr2, zzl, zzD, null, null, zzftVar, null));
                    return;
                }
                return;
            }
            zzay().zzk().zza("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        zzay().zzc().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
    }

    public final void zzF(boolean z10) {
        this.zzE = Boolean.valueOf(z10);
    }

    public final void zzG(boolean z10) {
        zzaz().zzg();
        this.zzF = z10;
    }

    public final void zzH(com.google.android.gms.internal.measurement.zzcl zzclVar) {
        zzag zzagVar;
        zzaz().zzg();
        zzag zzc = zzm().zzc();
        zzfa zzm = zzm();
        zzfv zzfvVar = zzm.zzs;
        zzm.zzg();
        int i10 = 100;
        int i11 = zzm.zza().getInt("consent_source", 100);
        zzaf zzafVar = this.zzk;
        zzfv zzfvVar2 = zzafVar.zzs;
        Boolean zzk = zzafVar.zzk("google_analytics_default_allow_ad_storage");
        zzaf zzafVar2 = this.zzk;
        zzfv zzfvVar3 = zzafVar2.zzs;
        Boolean zzk2 = zzafVar2.zzk("google_analytics_default_allow_analytics_storage");
        if ((zzk != null || zzk2 != null) && zzm().zzl(-10)) {
            zzagVar = new zzag(zzk, zzk2);
            i10 = -10;
        } else {
            if (!TextUtils.isEmpty(zzh().zzn()) && (i11 == 0 || i11 == 30 || i11 == 10 || i11 == 30 || i11 == 30 || i11 == 40)) {
                zzq().zzS(zzag.zza, -10, this.zzc);
            } else {
                zzoe.zzc();
                if ((!this.zzk.zzs(null, zzdy.zzat) || TextUtils.isEmpty(zzh().zzn())) && zzclVar != null && zzclVar.zzg != null && zzm().zzl(30)) {
                    zzagVar = zzag.zza(zzclVar.zzg);
                    if (!zzagVar.equals(zzag.zza)) {
                        i10 = 30;
                    }
                }
            }
            zzagVar = null;
        }
        if (zzagVar != null) {
            zzq().zzS(zzagVar, i10, this.zzc);
            zzc = zzagVar;
        }
        zzq().zzW(zzc);
        if (zzm().zzc.zza() == 0) {
            zzay().zzj().zzb("Persisting first open", Long.valueOf(this.zzc));
            zzm().zzc.zzb(this.zzc);
        }
        zzq().zzb.zzc();
        if (!zzM()) {
            if (zzJ()) {
                if (!zzv().zzac("android.permission.INTERNET")) {
                    zzay().zzd().zza("App is missing INTERNET permission");
                }
                if (!zzv().zzac("android.permission.ACCESS_NETWORK_STATE")) {
                    zzay().zzd().zza("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!Wrappers.packageManager(this.zze).isCallerInstantApp() && !this.zzk.zzx()) {
                    if (!zzkz.zzai(this.zze)) {
                        zzay().zzd().zza("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zzkz.zzaj(this.zze, false)) {
                        zzay().zzd().zza("AppMeasurementService not registered/enabled");
                    }
                }
                zzay().zzd().zza("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(zzh().zzn()) || !TextUtils.isEmpty(zzh().zzk())) {
                zzkz zzv = zzv();
                String zzn = zzh().zzn();
                zzfa zzm2 = zzm();
                zzm2.zzg();
                String string = zzm2.zza().getString("gmp_app_id", null);
                String zzk3 = zzh().zzk();
                zzfa zzm3 = zzm();
                zzm3.zzg();
                if (zzv.zzam(zzn, string, zzk3, zzm3.zza().getString("admob_app_id", null))) {
                    zzay().zzi().zza("Rechecking which service to use due to a GMP App Id change");
                    zzfa zzm4 = zzm();
                    zzm4.zzg();
                    Boolean zzd2 = zzm4.zzd();
                    SharedPreferences.Editor edit = zzm4.zza().edit();
                    edit.clear();
                    edit.apply();
                    if (zzd2 != null) {
                        zzm4.zzh(zzd2);
                    }
                    zzi().zzj();
                    this.zzy.zzs();
                    this.zzy.zzr();
                    zzm().zzc.zzb(this.zzc);
                    zzm().zze.zzb(null);
                }
                zzfa zzm5 = zzm();
                String zzn2 = zzh().zzn();
                zzm5.zzg();
                SharedPreferences.Editor edit2 = zzm5.zza().edit();
                edit2.putString("gmp_app_id", zzn2);
                edit2.apply();
                zzfa zzm6 = zzm();
                String zzk4 = zzh().zzk();
                zzm6.zzg();
                SharedPreferences.Editor edit3 = zzm6.zza().edit();
                edit3.putString("admob_app_id", zzk4);
                edit3.apply();
            }
            if (!zzm().zzc().zzk()) {
                zzm().zze.zzb(null);
            }
            zzq().zzO(zzm().zze.zza());
            zzob.zzc();
            if (this.zzk.zzs(null, zzdy.zzai)) {
                try {
                    zzv().zzs.zze.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(zzm().zzo.zza())) {
                        zzay().zzk().zza("Remote config removed with active feature rollouts");
                        zzm().zzo.zzb(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(zzh().zzn()) || !TextUtils.isEmpty(zzh().zzk())) {
                boolean zzJ = zzJ();
                if (!zzm().zzj() && !this.zzk.zzv()) {
                    zzm().zzi(!zzJ);
                }
                if (zzJ) {
                    zzq().zzy();
                }
                zzu().zza.zza();
                zzt().zzu(new AtomicReference<>());
                zzt().zzH(zzm().zzr.zza());
            }
        }
        zzm().zzi.zza(true);
    }

    public final boolean zzI() {
        return this.zzE != null && this.zzE.booleanValue();
    }

    public final boolean zzJ() {
        return zza() == 0;
    }

    public final boolean zzK() {
        zzaz().zzg();
        return this.zzF;
    }

    @Pure
    public final boolean zzL() {
        return TextUtils.isEmpty(this.zzf);
    }

    public final boolean zzM() {
        if (this.zzB) {
            zzaz().zzg();
            Boolean bool = this.zzC;
            if (bool == null || this.zzD == 0 || (!bool.booleanValue() && Math.abs(this.zzr.elapsedRealtime() - this.zzD) > 1000)) {
                this.zzD = this.zzr.elapsedRealtime();
                boolean z10 = true;
                Boolean valueOf = Boolean.valueOf(zzv().zzac("android.permission.INTERNET") && zzv().zzac("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zze).isCallerInstantApp() || this.zzk.zzx() || (zzkz.zzai(this.zze) && zzkz.zzaj(this.zze, false))));
                this.zzC = valueOf;
                if (valueOf.booleanValue()) {
                    if (!zzv().zzW(zzh().zzn(), zzh().zzk(), zzh().zzm()) && TextUtils.isEmpty(zzh().zzk())) {
                        z10 = false;
                    }
                    this.zzC = Boolean.valueOf(z10);
                }
            }
            return this.zzC.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    @Pure
    public final boolean zzN() {
        return this.zzi;
    }

    public final int zza() {
        zzaz().zzg();
        if (this.zzk.zzv()) {
            return 1;
        }
        Boolean bool = this.zzb;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        zzaz().zzg();
        if (!this.zzF) {
            return 8;
        }
        Boolean zzd2 = zzm().zzd();
        if (zzd2 != null) {
            return zzd2.booleanValue() ? 0 : 3;
        }
        zzaf zzafVar = this.zzk;
        zzaa zzaaVar = zzafVar.zzs.zzj;
        Boolean zzk = zzafVar.zzk("firebase_analytics_collection_enabled");
        if (zzk != null) {
            return zzk.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zza;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.zzk.zzs(null, zzdy.zzS) || this.zzE == null || this.zzE.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    @Pure
    public final Context zzau() {
        return this.zze;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    @Pure
    public final Clock zzav() {
        return this.zzr;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    @Pure
    public final zzaa zzaw() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    @Pure
    public final zzel zzay() {
        zzR(this.zzm);
        return this.zzm;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    @Pure
    public final zzfs zzaz() {
        zzR(this.zzn);
        return this.zzn;
    }

    @Pure
    public final zzd zzd() {
        zzd zzdVar = this.zzu;
        if (zzdVar != null) {
            return zzdVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @Pure
    public final zzaf zzf() {
        return this.zzk;
    }

    @Pure
    public final zzan zzg() {
        zzR(this.zzz);
        return this.zzz;
    }

    @Pure
    public final zzec zzh() {
        zzQ(this.zzA);
        return this.zzA;
    }

    @Pure
    public final zzee zzi() {
        zzQ(this.zzx);
        return this.zzx;
    }

    @Pure
    public final zzeg zzj() {
        return this.zzq;
    }

    public final zzel zzl() {
        zzel zzelVar = this.zzm;
        if (zzelVar == null || !zzelVar.zzx()) {
            return null;
        }
        return this.zzm;
    }

    @Pure
    public final zzfa zzm() {
        zzP(this.zzl);
        return this.zzl;
    }

    @SideEffectFree
    public final zzfs zzo() {
        return this.zzn;
    }

    @Pure
    public final zzia zzq() {
        zzQ(this.zzt);
        return this.zzt;
    }

    @Pure
    public final zzie zzr() {
        zzR(this.zzv);
        return this.zzv;
    }

    @Pure
    public final zzio zzs() {
        zzQ(this.zzs);
        return this.zzs;
    }

    @Pure
    public final zzjo zzt() {
        zzQ(this.zzy);
        return this.zzy;
    }

    @Pure
    public final zzkd zzu() {
        zzQ(this.zzo);
        return this.zzo;
    }

    @Pure
    public final zzkz zzv() {
        zzP(this.zzp);
        return this.zzp;
    }

    @Pure
    public final String zzw() {
        return this.zzf;
    }

    @Pure
    public final String zzx() {
        return this.zzg;
    }

    @Pure
    public final String zzy() {
        return this.zzh;
    }

    @Pure
    public final String zzz() {
        return this.zzw;
    }
}
