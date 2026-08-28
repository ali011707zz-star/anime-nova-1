package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzpo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgn extends zzea {
    private final zzks zza;
    private Boolean zzb;
    private String zzc;

    public zzgn(zzks zzksVar, String str) {
        Preconditions.checkNotNull(zzksVar);
        this.zza = zzksVar;
        this.zzc = null;
    }

    private final void zzA(String str, boolean z10) {
        boolean z11;
        if (!TextUtils.isEmpty(str)) {
            if (z10) {
                try {
                    if (this.zzb == null) {
                        if (!"com.google.android.gms".equals(this.zzc) && !UidVerifier.isGooglePlayServicesUid(this.zza.zzau(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(this.zza.zzau()).isUidGoogleSigned(Binder.getCallingUid())) {
                            z11 = false;
                            this.zzb = Boolean.valueOf(z11);
                        }
                        z11 = true;
                        this.zzb = Boolean.valueOf(z11);
                    }
                    if (this.zzb.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e10) {
                    this.zza.zzay().zzd().zzb("Measurement Service called with invalid calling package. appId", zzel.zzn(str));
                    throw e10;
                }
            }
            if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zzau(), Binder.getCallingUid(), str)) {
                this.zzc = str;
            }
            if (str.equals(this.zzc)) {
                return;
            } else {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
        }
        this.zza.zzay().zzd().zza("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzB(zzat zzatVar, zzp zzpVar) {
        this.zza.zzA();
        this.zza.zzD(zzatVar, zzpVar);
    }

    private final void zzz(zzp zzpVar, boolean z10) {
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzA(zzpVar.zza, false);
        this.zza.zzv().zzW(zzpVar.zzb, zzpVar.zzq, zzpVar.zzu);
    }

    @VisibleForTesting
    public final zzat zzb(zzat zzatVar, zzp zzpVar) {
        zzar zzarVar;
        if ("_cmp".equals(zzatVar.zza) && (zzarVar = zzatVar.zzb) != null && zzarVar.zza() != 0) {
            String zzg = zzatVar.zzb.zzg("_cis");
            if ("referrer broadcast".equals(zzg) || "referrer API".equals(zzg)) {
                this.zza.zzay().zzi().zzb("Event has been filtered ", zzatVar.toString());
                return new zzat("_cmpx", zzatVar.zzb, zzatVar.zzc, zzatVar.zzd);
            }
        }
        return zzatVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final String zzd(zzp zzpVar) {
        zzz(zzpVar, false);
        return this.zza.zzx(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zze(zzp zzpVar, boolean z10) {
        zzz(zzpVar, false);
        String str = zzpVar.zza;
        Preconditions.checkNotNull(str);
        try {
            List<zzkx> list = (List) this.zza.zzaz().zzh(new zzgk(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkx zzkxVar : list) {
                if (z10 || !zzkz.zzag(zzkxVar.zzc)) {
                    arrayList.add(new zzkv(zzkxVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzc("Failed to get user properties. appId", zzel.zzn(zzpVar.zza), e10);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzab> zzf(String str, String str2, zzp zzpVar) {
        zzz(zzpVar, false);
        String str3 = zzpVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            return (List) this.zza.zzaz().zzh(new zzgb(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzb("Failed to get conditional user properties", e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzab> zzg(String str, String str2, String str3) {
        zzA(str, true);
        try {
            return (List) this.zza.zzaz().zzh(new zzgc(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzb("Failed to get conditional user properties as", e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zzh(String str, String str2, boolean z10, zzp zzpVar) {
        zzz(zzpVar, false);
        String str3 = zzpVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            List<zzkx> list = (List) this.zza.zzaz().zzh(new zzfz(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkx zzkxVar : list) {
                if (z10 || !zzkz.zzag(zzkxVar.zzc)) {
                    arrayList.add(new zzkv(zzkxVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzc("Failed to query user properties. appId", zzel.zzn(zzpVar.zza), e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zzi(String str, String str2, String str3, boolean z10) {
        zzA(str, true);
        try {
            List<zzkx> list = (List) this.zza.zzaz().zzh(new zzga(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkx zzkxVar : list) {
                if (z10 || !zzkz.zzag(zzkxVar.zzc)) {
                    arrayList.add(new zzkv(zzkxVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzc("Failed to get user properties as. appId", zzel.zzn(str), e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzj(zzp zzpVar) {
        zzz(zzpVar, false);
        zzy(new zzgl(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzk(zzat zzatVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzatVar);
        zzz(zzpVar, false);
        zzy(new zzgg(this, zzatVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzl(zzat zzatVar, String str, String str2) {
        Preconditions.checkNotNull(zzatVar);
        Preconditions.checkNotEmpty(str);
        zzA(str, true);
        zzy(new zzgh(this, zzatVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzm(zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzA(zzpVar.zza, false);
        zzy(new zzgd(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzn(zzab zzabVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotNull(zzabVar.zzc);
        zzz(zzpVar, false);
        zzab zzabVar2 = new zzab(zzabVar);
        zzabVar2.zza = zzpVar.zza;
        zzy(new zzfx(this, zzabVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzo(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zza);
        zzA(zzabVar.zza, true);
        zzy(new zzfy(this, new zzab(zzabVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzp(zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        Preconditions.checkNotNull(zzpVar.zzv);
        zzgf zzgfVar = new zzgf(this, zzpVar);
        Preconditions.checkNotNull(zzgfVar);
        if (this.zza.zzaz().zzs()) {
            zzgfVar.run();
        } else {
            this.zza.zzaz().zzq(zzgfVar);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzq(long j10, String str, String str2, String str3) {
        zzy(new zzgm(this, str2, str3, str, j10));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzr(final Bundle bundle, zzp zzpVar) {
        zzz(zzpVar, false);
        final String str = zzpVar.zza;
        Preconditions.checkNotNull(str);
        zzy(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzfw
            @Override // java.lang.Runnable
            public final void run() {
                zzgn.this.zzx(str, bundle);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzs(zzp zzpVar) {
        zzz(zzpVar, false);
        zzy(new zzge(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzt(zzkv zzkvVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzkvVar);
        zzz(zzpVar, false);
        zzy(new zzgj(this, zzkvVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final byte[] zzu(zzat zzatVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzatVar);
        zzA(str, true);
        this.zza.zzay().zzc().zzb("Log and bundle. event", this.zza.zzj().zzd(zzatVar.zza));
        long nanoTime = this.zza.zzav().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzaz().zzi(new zzgi(this, zzatVar, str)).get();
            if (bArr == null) {
                this.zza.zzay().zzd().zzb("Log and bundle returned null. appId", zzel.zzn(str));
                bArr = new byte[0];
            }
            this.zza.zzay().zzc().zzd("Log and bundle processed. event, size, time_ms", this.zza.zzj().zzd(zzatVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.zza.zzav().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e10) {
            this.zza.zzay().zzd().zzd("Failed to log and bundle. appId, event, error", zzel.zzn(str), this.zza.zzj().zzd(zzatVar.zza), e10);
            return null;
        }
    }

    public final void zzw(zzat zzatVar, zzp zzpVar) {
        if (!this.zza.zzo().zzl(zzpVar.zza)) {
            zzB(zzatVar, zzpVar);
            return;
        }
        this.zza.zzay().zzj().zzb("EES config found for", zzpVar.zza);
        zzfm zzo = this.zza.zzo();
        String str = zzpVar.zza;
        zzpo.zzc();
        com.google.android.gms.internal.measurement.zzc zzcVar = null;
        if (zzo.zzs.zzf().zzs(null, zzdy.zzav) && !TextUtils.isEmpty(str)) {
            zzcVar = zzo.zza.get(str);
        }
        if (zzcVar != null) {
            try {
                Map<String, Object> zzt = this.zza.zzu().zzt(zzatVar.zzb.zzc(), true);
                String zza = zzgs.zza(zzatVar.zza);
                if (zza == null) {
                    zza = zzatVar.zza;
                }
                if (zzcVar.zze(new com.google.android.gms.internal.measurement.zzaa(zza, zzatVar.zzd, zzt))) {
                    if (zzcVar.zzg()) {
                        this.zza.zzay().zzj().zzb("EES edited event", zzatVar.zza);
                        zzB(this.zza.zzu().zzi(zzcVar.zza().zzb()), zzpVar);
                    } else {
                        zzB(zzatVar, zzpVar);
                    }
                    if (zzcVar.zzf()) {
                        for (com.google.android.gms.internal.measurement.zzaa zzaaVar : zzcVar.zza().zzc()) {
                            this.zza.zzay().zzj().zzb("EES logging created event", zzaaVar.zzd());
                            zzB(this.zza.zzu().zzi(zzaaVar), zzpVar);
                        }
                        return;
                    }
                    return;
                }
            } catch (com.google.android.gms.internal.measurement.zzd unused) {
                this.zza.zzay().zzd().zzc("EES error. appId, eventName", zzpVar.zzb, zzatVar.zza);
            }
            this.zza.zzay().zzj().zzb("EES was not applied to event", zzatVar.zza);
            zzB(zzatVar, zzpVar);
            return;
        }
        this.zza.zzay().zzj().zzb("EES not loaded for", zzpVar.zza);
        zzB(zzatVar, zzpVar);
    }

    public final /* synthetic */ void zzx(String str, Bundle bundle) {
        zzaj zzi = this.zza.zzi();
        zzi.zzg();
        zzi.zzY();
        byte[] zzbs = zzi.zzf.zzu().zzj(new zzao(zzi.zzs, "", str, "dep", 0L, 0L, bundle)).zzbs();
        zzi.zzs.zzay().zzj().zzc("Saving default event parameters, appId, data size", zzi.zzs.zzj().zzd(str), Integer.valueOf(zzbs.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", zzbs);
        try {
            if (zzi.zzh().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                zzi.zzs.zzay().zzd().zzb("Failed to insert default event parameters (got -1). appId", zzel.zzn(str));
            }
        } catch (SQLiteException e10) {
            zzi.zzs.zzay().zzd().zzc("Error storing default event parameters. appId", zzel.zzn(str), e10);
        }
    }

    @VisibleForTesting
    public final void zzy(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzaz().zzs()) {
            runnable.run();
        } else {
            this.zza.zzaz().zzp(runnable);
        }
    }
}
