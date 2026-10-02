package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzpi;
import com.google.android.gms.internal.measurement.zzpo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import okhttp3.internal.cache.DiskLruCache;
import s.a;
import s.e;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfm extends zzki implements zzae {

    @VisibleForTesting
    public final e<String, com.google.android.gms.internal.measurement.zzc> zza;
    public final com.google.android.gms.internal.measurement.zzr zzb;
    private final Map<String, Map<String, String>> zzc;
    private final Map<String, Map<String, Boolean>> zzd;
    private final Map<String, Map<String, Boolean>> zze;
    private final Map<String, com.google.android.gms.internal.measurement.zzfc> zzg;
    private final Map<String, Map<String, Integer>> zzh;
    private final Map<String, String> zzi;

    public zzfm(zzks zzksVar) {
        super(zzksVar);
        this.zzc = new a();
        this.zzd = new a();
        this.zze = new a();
        this.zzg = new a();
        this.zzi = new a();
        this.zzh = new a();
        this.zza = new zzfj(this, 20);
        this.zzb = new zzfk(this);
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.internal.measurement.zzc zzd(zzfm zzfmVar, String str) {
        zzfmVar.zzY();
        Preconditions.checkNotEmpty(str);
        zzpo.zzc();
        if (!zzfmVar.zzs.zzf().zzs(null, zzdy.zzav) || !zzfmVar.zzl(str)) {
            return null;
        }
        if (zzfmVar.zzg.containsKey(str) && zzfmVar.zzg.get(str) != null) {
            zzfmVar.zzu(str, zzfmVar.zzg.get(str));
        } else {
            zzfmVar.zzt(str);
        }
        return zzfmVar.zza.snapshot().get(str);
    }

    private final com.google.android.gms.internal.measurement.zzfc zzr(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        }
        try {
            com.google.android.gms.internal.measurement.zzfc zzaA = ((com.google.android.gms.internal.measurement.zzfb) zzku.zzl(com.google.android.gms.internal.measurement.zzfc.zze(), bArr)).zzaA();
            this.zzs.zzay().zzj().zzc("Parsed config. version, gmp_app_id", zzaA.zzq() ? Long.valueOf(zzaA.zzc()) : null, zzaA.zzp() ? zzaA.zzh() : null);
            return zzaA;
        } catch (com.google.android.gms.internal.measurement.zzkj e10) {
            this.zzs.zzay().zzk().zzc("Unable to merge remote config. appId", zzel.zzn(str), e10);
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        } catch (RuntimeException e11) {
            this.zzs.zzay().zzk().zzc("Unable to merge remote config. appId", zzel.zzn(str), e11);
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        }
    }

    private final void zzs(String str, com.google.android.gms.internal.measurement.zzfb zzfbVar) {
        a aVar = new a();
        a aVar2 = new a();
        a aVar3 = new a();
        if (zzfbVar != null) {
            for (int i10 = 0; i10 < zzfbVar.zza(); i10++) {
                com.google.android.gms.internal.measurement.zzez zzbv = zzfbVar.zzb(i10).zzbv();
                if (TextUtils.isEmpty(zzbv.zzc())) {
                    this.zzs.zzay().zzk().zza("EventConfig contained null event name");
                } else {
                    String zzc = zzbv.zzc();
                    String zzb = zzgs.zzb(zzbv.zzc());
                    if (!TextUtils.isEmpty(zzb)) {
                        zzbv.zzb(zzb);
                        zzfbVar.zzd(i10, zzbv);
                    }
                    aVar.put(zzc, Boolean.valueOf(zzbv.zzd()));
                    aVar2.put(zzbv.zzc(), Boolean.valueOf(zzbv.zze()));
                    if (zzbv.zzf()) {
                        if (zzbv.zza() >= 2 && zzbv.zza() <= 65535) {
                            aVar3.put(zzbv.zzc(), Integer.valueOf(zzbv.zza()));
                        } else {
                            this.zzs.zzay().zzk().zzc("Invalid sampling rate. Event name, sample rate", zzbv.zzc(), Integer.valueOf(zzbv.zza()));
                        }
                    }
                }
            }
        }
        this.zzd.put(str, aVar);
        this.zze.put(str, aVar2);
        this.zzh.put(str, aVar3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
    
        if (r2 == null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzt(String str) {
        SQLiteException e10;
        Cursor cursor;
        Pair pair;
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        if (this.zzg.get(str) != null) {
            return;
        }
        zzaj zzi = this.zzf.zzi();
        Preconditions.checkNotEmpty(str);
        zzi.zzg();
        zzi.zzY();
        Cursor cursor2 = null;
        try {
            cursor = zzi.zzh().query("apps", new String[]{"remote_config", "config_last_modified_time"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                } catch (SQLiteException e11) {
                    e10 = e11;
                    zzi.zzs.zzay().zzd().zzc("Error querying remote config. appId", zzel.zzn(str), e10);
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (cursor.moveToFirst()) {
            byte[] blob = cursor.getBlob(0);
            String string = cursor.getString(1);
            if (cursor.moveToNext()) {
                zzi.zzs.zzay().zzd().zzb("Got multiple records for app config, expected one. appId", zzel.zzn(str));
            }
            if (blob != null) {
                pair = new Pair(blob, string);
                cursor.close();
                if (pair != null) {
                    this.zzc.put(str, null);
                    this.zzd.put(str, null);
                    this.zze.put(str, null);
                    this.zzg.put(str, null);
                    this.zzi.put(str, null);
                    this.zzh.put(str, null);
                    return;
                }
                com.google.android.gms.internal.measurement.zzfb zzbv = zzr(str, (byte[]) pair.first).zzbv();
                zzs(str, zzbv);
                this.zzc.put(str, zzv(zzbv.zzaA()));
                this.zzg.put(str, zzbv.zzaA());
                zzpo.zzc();
                if (this.zzs.zzf().zzs(null, zzdy.zzav)) {
                    zzu(str, zzbv.zzaA());
                }
                zzpi.zzc();
                if (this.zzs.zzf().zzs(null, zzdy.zzas)) {
                    this.zzi.put(str, (String) pair.second);
                    return;
                } else {
                    this.zzi.put(str, null);
                    return;
                }
            }
        }
        cursor.close();
        pair = null;
        if (pair != null) {
        }
    }

    private final void zzu(final String str, com.google.android.gms.internal.measurement.zzfc zzfcVar) {
        if (zzfcVar.zza() != 0) {
            this.zzs.zzay().zzj().zzb("EES programs found", Integer.valueOf(zzfcVar.zza()));
            com.google.android.gms.internal.measurement.zzgo zzgoVar = zzfcVar.zzj().get(0);
            try {
                com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
                zzcVar.zzd("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfg
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzfl(zzfm.this, str));
                    }
                });
                zzcVar.zzd("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfi
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        final zzfm zzfmVar = zzfm.this;
                        final String str2 = str;
                        return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfh
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                zzfm zzfmVar2 = zzfm.this;
                                String str3 = str2;
                                zzg zzj = zzfmVar2.zzf.zzi().zzj(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put("platform", "android");
                                hashMap.put("package_name", str3);
                                zzfmVar2.zzs.zzf().zzh();
                                hashMap.put("gmp_version", 43042L);
                                if (zzj != null) {
                                    String zzw = zzj.zzw();
                                    if (zzw != null) {
                                        hashMap.put("app_version", zzw);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(zzj.zzb()));
                                    hashMap.put("dynamite_version", Long.valueOf(zzj.zzk()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                zzcVar.zzd("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzff
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new com.google.android.gms.internal.measurement.zzt(zzfm.this.zzb);
                    }
                });
                zzcVar.zzc(zzgoVar);
                this.zza.put(str, zzcVar);
                this.zzs.zzay().zzj().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzgoVar.zza().zza()));
                Iterator<com.google.android.gms.internal.measurement.zzgm> it2 = zzgoVar.zza().zzd().iterator();
                while (it2.hasNext()) {
                    this.zzs.zzay().zzj().zzb("EES program activity", it2.next().zzb());
                }
                return;
            } catch (com.google.android.gms.internal.measurement.zzd unused) {
                this.zzs.zzay().zzd().zzb("Failed to load EES program. appId", str);
                return;
            }
        }
        this.zza.remove(str);
    }

    private static final Map<String, String> zzv(com.google.android.gms.internal.measurement.zzfc zzfcVar) {
        a aVar = new a();
        if (zzfcVar != null) {
            for (com.google.android.gms.internal.measurement.zzfe zzfeVar : zzfcVar.zzk()) {
                aVar.put(zzfeVar.zzb(), zzfeVar.zzc());
            }
        }
        return aVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzae
    public final String zza(String str, String str2) {
        zzg();
        zzt(str);
        Map<String, String> map = this.zzc.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    public final boolean zzb() {
        return false;
    }

    public final int zzc(String str, String str2) {
        Integer num;
        zzg();
        zzt(str);
        Map<String, Integer> map = this.zzh.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final com.google.android.gms.internal.measurement.zzfc zze(String str) {
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzt(str);
        return this.zzg.get(str);
    }

    public final String zzf(String str) {
        zzg();
        return this.zzi.get(str);
    }

    public final void zzi(String str) {
        zzg();
        this.zzi.put(str, null);
    }

    public final void zzj(String str) {
        zzg();
        this.zzg.remove(str);
    }

    public final boolean zzk(String str) {
        zzg();
        com.google.android.gms.internal.measurement.zzfc zze = zze(str);
        if (zze == null) {
            return false;
        }
        return zze.zzo();
    }

    public final boolean zzl(String str) {
        com.google.android.gms.internal.measurement.zzfc zzfcVar;
        zzpo.zzc();
        return (!this.zzs.zzf().zzs(null, zzdy.zzav) || TextUtils.isEmpty(str) || (zzfcVar = this.zzg.get(str)) == null || zzfcVar.zza() == 0) ? false : true;
    }

    public final boolean zzm(String str) {
        return DiskLruCache.VERSION_1.equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzn(String str, String str2) {
        Boolean bool;
        zzg();
        zzt(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zze.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean zzo(String str, String str2) {
        Boolean bool;
        zzg();
        zzt(str);
        if (zzm(str) && zzkz.zzag(str2)) {
            return true;
        }
        if (zzp(str) && zzkz.zzah(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzd.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean zzp(String str) {
        return DiskLruCache.VERSION_1.equals(zza(str, "measurement.upload.blacklist_public"));
    }

    public final boolean zzq(String str, byte[] bArr, String str2) {
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzfb zzbv = zzr(str, bArr).zzbv();
        if (zzbv == null) {
            return false;
        }
        zzs(str, zzbv);
        zzpo.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzav)) {
            zzu(str, zzbv.zzaA());
        }
        this.zzg.put(str, zzbv.zzaA());
        this.zzi.put(str, str2);
        this.zzc.put(str, zzv(zzbv.zzaA()));
        this.zzf.zzi().zzC(str, new ArrayList(zzbv.zze()));
        try {
            zzbv.zzc();
            bArr = zzbv.zzaA().zzbs();
        } catch (RuntimeException e10) {
            this.zzs.zzay().zzk().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzel.zzn(str), e10);
        }
        zzpi.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzas)) {
            this.zzf.zzi().zzG(str, bArr, str2);
        } else {
            this.zzf.zzi().zzG(str, bArr, null);
        }
        this.zzg.put(str, zzbv.zzaA());
        return true;
    }
}
