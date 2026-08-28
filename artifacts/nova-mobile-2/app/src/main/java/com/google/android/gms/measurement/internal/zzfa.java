package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfa extends zzgp {

    @VisibleForTesting
    public static final Pair<String, Long> zza = new Pair<>("", 0L);
    public zzey zzb;
    public final zzew zzc;
    public final zzew zzd;
    public final zzez zze;
    public final zzew zzf;
    public final zzeu zzg;
    public final zzez zzh;
    public final zzeu zzi;
    public final zzew zzj;
    public boolean zzk;
    public final zzeu zzl;
    public final zzeu zzm;
    public final zzew zzn;
    public final zzez zzo;
    public final zzez zzp;
    public final zzew zzq;
    public final zzev zzr;
    private SharedPreferences zzt;
    private String zzu;
    private boolean zzv;
    private long zzw;

    public zzfa(zzfv zzfvVar) {
        super(zzfvVar);
        this.zzf = new zzew(this, "session_timeout", 1800000L);
        this.zzg = new zzeu(this, "start_new_session", true);
        this.zzj = new zzew(this, "last_pause_time", 0L);
        this.zzh = new zzez(this, "non_personalized_ads", null);
        this.zzi = new zzeu(this, "allow_remote_dynamite", false);
        this.zzc = new zzew(this, "first_open_time", 0L);
        this.zzd = new zzew(this, "app_install_time", 0L);
        this.zze = new zzez(this, "app_instance_id", null);
        this.zzl = new zzeu(this, "app_backgrounded", false);
        this.zzm = new zzeu(this, "deep_link_retrieval_complete", false);
        this.zzn = new zzew(this, "deep_link_retrieval_attempts", 0L);
        this.zzo = new zzez(this, "firebase_feature_rollouts", null);
        this.zzp = new zzez(this, "deferred_attribution_cache", null);
        this.zzq = new zzew(this, "deferred_attribution_cache_timestamp", 0L);
        this.zzr = new zzev(this, "default_event_parameters", null);
    }

    @VisibleForTesting
    public final SharedPreferences zza() {
        zzg();
        zzu();
        Preconditions.checkNotNull(this.zzt);
        return this.zzt;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    public final void zzaA() {
        SharedPreferences sharedPreferences = this.zzs.zzau().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzt = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.zzk = z10;
        if (!z10) {
            SharedPreferences.Editor edit = this.zzt.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.zzs.zzf();
        this.zzb = new zzey(this, "health_monitor", Math.max(0L, zzdy.zzb.zza(null).longValue()), null);
    }

    public final Pair<String, Boolean> zzb(String str) {
        zzg();
        long elapsedRealtime = this.zzs.zzav().elapsedRealtime();
        String str2 = this.zzu;
        if (str2 != null && elapsedRealtime < this.zzw) {
            return new Pair<>(str2, Boolean.valueOf(this.zzv));
        }
        this.zzw = elapsedRealtime + this.zzs.zzf().zzi(str, zzdy.zza);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzau());
            this.zzu = "";
            String id2 = advertisingIdInfo.getId();
            if (id2 != null) {
                this.zzu = id2;
            }
            this.zzv = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e10) {
            this.zzs.zzay().zzc().zzb("Unable to get advertising id", e10);
            this.zzu = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.zzu, Boolean.valueOf(this.zzv));
    }

    public final zzag zzc() {
        zzg();
        return zzag.zzb(zza().getString("consent_settings", "G1"));
    }

    public final Boolean zzd() {
        zzg();
        if (zza().contains("measurement_enabled")) {
            return Boolean.valueOf(zza().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    public final boolean zzf() {
        return true;
    }

    public final void zzh(Boolean bool) {
        zzg();
        SharedPreferences.Editor edit = zza().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    public final void zzi(boolean z10) {
        zzg();
        this.zzs.zzay().zzj().zzb("App measurement setting deferred collection", Boolean.valueOf(z10));
        SharedPreferences.Editor edit = zza().edit();
        edit.putBoolean("deferred_analytics_collection", z10);
        edit.apply();
    }

    public final boolean zzj() {
        SharedPreferences sharedPreferences = this.zzt;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final boolean zzk(long j10) {
        return j10 - this.zzf.zza() > this.zzj.zza();
    }

    public final boolean zzl(int i10) {
        return zzag.zzl(i10, zza().getInt("consent_source", 100));
    }
}
