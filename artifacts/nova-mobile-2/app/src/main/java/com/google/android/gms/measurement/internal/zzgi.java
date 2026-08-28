package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzot;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
final class zzgi implements Callable<byte[]> {
    public final /* synthetic */ zzat zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzgn zzc;

    public zzgi(zzgn zzgnVar, zzat zzatVar, String str) {
        this.zzc = zzgnVar;
        this.zza = zzatVar;
        this.zzb = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ byte[] call() throws Exception {
        zzks zzksVar;
        zzks zzksVar2;
        byte[] bArr;
        zzks zzksVar3;
        zzkx zzkxVar;
        zzg zzgVar;
        com.google.android.gms.internal.measurement.zzfv zzfvVar;
        String str;
        Bundle bundle;
        com.google.android.gms.internal.measurement.zzfx zzfxVar;
        byte[] bArr2;
        zzap zzc;
        long j10;
        zzksVar = this.zzc.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzc.zza;
        zzif zzr = zzksVar2.zzr();
        zzat zzatVar = this.zza;
        String str2 = this.zzb;
        zzr.zzg();
        zzfv.zzO();
        Preconditions.checkNotNull(zzatVar);
        Preconditions.checkNotEmpty(str2);
        if (!zzr.zzs.zzf().zzs(str2, zzdy.zzU)) {
            zzr.zzs.zzay().zzc().zzb("Generating ScionPayload disabled. packageName", str2);
            return new byte[0];
        }
        if (!"_iap".equals(zzatVar.zza) && !"_iapx".equals(zzatVar.zza)) {
            zzr.zzs.zzay().zzc().zzc("Generating a payload for this event is not available. package_name, event_name", str2, zzatVar.zza);
            return null;
        }
        com.google.android.gms.internal.measurement.zzfv zza = com.google.android.gms.internal.measurement.zzfw.zza();
        zzr.zzf.zzi().zzw();
        try {
            zzg zzj = zzr.zzf.zzi().zzj(str2);
            if (zzj == null) {
                zzr.zzs.zzay().zzc().zzb("Log and bundle not available. package_name", str2);
                bArr = new byte[0];
                zzksVar3 = zzr.zzf;
            } else if (!zzj.zzaj()) {
                zzr.zzs.zzay().zzc().zzb("Log and bundle disabled. package_name", str2);
                bArr = new byte[0];
                zzksVar3 = zzr.zzf;
            } else {
                com.google.android.gms.internal.measurement.zzfx zzu = com.google.android.gms.internal.measurement.zzfy.zzu();
                zzu.zzaa(1);
                zzu.zzW("android");
                if (!TextUtils.isEmpty(zzj.zzt())) {
                    zzu.zzA(zzj.zzt());
                }
                if (!TextUtils.isEmpty(zzj.zzv())) {
                    zzu.zzC((String) Preconditions.checkNotNull(zzj.zzv()));
                }
                if (!TextUtils.isEmpty(zzj.zzw())) {
                    zzu.zzD((String) Preconditions.checkNotNull(zzj.zzw()));
                }
                if (zzj.zzb() != -2147483648L) {
                    zzu.zzE((int) zzj.zzb());
                }
                zzu.zzS(zzj.zzm());
                zzu.zzM(zzj.zzk());
                String zzz = zzj.zzz();
                String zzr2 = zzj.zzr();
                zzot.zzc();
                if (zzr.zzs.zzf().zzs(zzj.zzt(), zzdy.zzad)) {
                    String zzy = zzj.zzy();
                    if (!TextUtils.isEmpty(zzz)) {
                        zzu.zzR(zzz);
                    } else if (!TextUtils.isEmpty(zzy)) {
                        zzu.zzQ(zzy);
                    } else if (!TextUtils.isEmpty(zzr2)) {
                        zzu.zzy(zzr2);
                    }
                } else if (!TextUtils.isEmpty(zzz)) {
                    zzu.zzR(zzz);
                } else if (!TextUtils.isEmpty(zzr2)) {
                    zzu.zzy(zzr2);
                }
                zzag zzh = zzr.zzf.zzh(str2);
                zzu.zzJ(zzj.zzj());
                if (zzr.zzs.zzJ() && zzr.zzs.zzf().zzt(zzu.zzal()) && zzh.zzj() && !TextUtils.isEmpty(null)) {
                    zzu.zzL(null);
                }
                zzu.zzI(zzh.zzi());
                if (zzh.zzj()) {
                    Pair<String, Boolean> zzd = zzr.zzf.zzs().zzd(zzj.zzt(), zzh);
                    if (zzj.zzai() && !TextUtils.isEmpty((CharSequence) zzd.first)) {
                        try {
                            zzu.zzab(zzif.zza((String) zzd.first, Long.toString(zzatVar.zzd)));
                            Object obj = zzd.second;
                            if (obj != null) {
                                zzu.zzU(((Boolean) obj).booleanValue());
                            }
                        } catch (SecurityException e10) {
                            zzr.zzs.zzay().zzc().zzb("Resettable device id encryption failed", e10.getMessage());
                            bArr = new byte[0];
                            zzksVar3 = zzr.zzf;
                        }
                    }
                }
                zzr.zzs.zzg().zzu();
                zzu.zzK(Build.MODEL);
                zzr.zzs.zzg().zzu();
                zzu.zzV(Build.VERSION.RELEASE);
                zzu.zzaf((int) zzr.zzs.zzg().zzb());
                zzu.zzaj(zzr.zzs.zzg().zzc());
                try {
                    if (zzh.zzk() && zzj.zzu() != null) {
                        zzu.zzB(zzif.zza((String) Preconditions.checkNotNull(zzj.zzu()), Long.toString(zzatVar.zzd)));
                    }
                    if (!TextUtils.isEmpty(zzj.zzx())) {
                        zzu.zzP((String) Preconditions.checkNotNull(zzj.zzx()));
                    }
                    String zzt = zzj.zzt();
                    List<zzkx> zzu2 = zzr.zzf.zzi().zzu(zzt);
                    Iterator<zzkx> it2 = zzu2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            zzkxVar = null;
                            break;
                        }
                        zzkxVar = it2.next();
                        if ("_lte".equals(zzkxVar.zzc)) {
                            break;
                        }
                    }
                    if (zzkxVar == null || zzkxVar.zze == null) {
                        zzkx zzkxVar2 = new zzkx(zzt, "auto", "_lte", zzr.zzs.zzav().currentTimeMillis(), 0L);
                        zzu2.add(zzkxVar2);
                        zzr.zzf.zzi().zzN(zzkxVar2);
                    }
                    zzku zzu3 = zzr.zzf.zzu();
                    zzu3.zzs.zzay().zzj().zza("Checking account type status for ad personalization signals");
                    if (zzu3.zzs.zzg().zze()) {
                        String zzt2 = zzj.zzt();
                        Preconditions.checkNotNull(zzt2);
                        if (zzj.zzai() && zzu3.zzf.zzo().zzk(zzt2)) {
                            zzu3.zzs.zzay().zzc().zza("Turning off ad personalization due to account type");
                            Iterator<zzkx> it3 = zzu2.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    break;
                                }
                                if ("_npa".equals(it3.next().zzc)) {
                                    it3.remove();
                                    break;
                                }
                            }
                            zzu2.add(new zzkx(zzt2, "auto", "_npa", zzu3.zzs.zzav().currentTimeMillis(), 1L));
                        }
                    }
                    com.google.android.gms.internal.measurement.zzgh[] zzghVarArr = new com.google.android.gms.internal.measurement.zzgh[zzu2.size()];
                    for (int i10 = 0; i10 < zzu2.size(); i10++) {
                        com.google.android.gms.internal.measurement.zzgg zzd2 = com.google.android.gms.internal.measurement.zzgh.zzd();
                        zzd2.zzf(zzu2.get(i10).zzc);
                        zzd2.zzg(zzu2.get(i10).zzd);
                        zzr.zzf.zzu().zzv(zzd2, zzu2.get(i10).zze);
                        zzghVarArr[i10] = zzd2.zzaA();
                    }
                    zzu.zzi(Arrays.asList(zzghVarArr));
                    zzem zzb = zzem.zzb(zzatVar);
                    zzr.zzs.zzv().zzK(zzb.zzd, zzr.zzf.zzi().zzi(str2));
                    zzr.zzs.zzv().zzL(zzb, zzr.zzs.zzf().zzd(str2));
                    Bundle bundle2 = zzb.zzd;
                    bundle2.putLong("_c", 1L);
                    zzr.zzs.zzay().zzc().zza("Marking in-app purchase as real-time");
                    bundle2.putLong("_r", 1L);
                    bundle2.putString("_o", zzatVar.zzc);
                    if (zzr.zzs.zzv().zzad(zzu.zzal())) {
                        zzr.zzs.zzv().zzN(bundle2, "_dbg", 1L);
                        zzr.zzs.zzv().zzN(bundle2, "_r", 1L);
                    }
                    zzap zzn = zzr.zzf.zzi().zzn(str2, zzatVar.zza);
                    if (zzn == null) {
                        zzfxVar = zzu;
                        zzgVar = zzj;
                        zzfvVar = zza;
                        str = str2;
                        bundle = bundle2;
                        bArr2 = null;
                        zzc = new zzap(str2, zzatVar.zza, 0L, 0L, 0L, zzatVar.zzd, 0L, null, null, null, null);
                        j10 = 0;
                    } else {
                        zzgVar = zzj;
                        zzfvVar = zza;
                        str = str2;
                        bundle = bundle2;
                        zzfxVar = zzu;
                        bArr2 = null;
                        long j11 = zzn.zzf;
                        zzc = zzn.zzc(zzatVar.zzd);
                        j10 = j11;
                    }
                    zzr.zzf.zzi().zzF(zzc);
                    zzao zzaoVar = new zzao(zzr.zzs, zzatVar.zzc, str, zzatVar.zza, zzatVar.zzd, j10, bundle);
                    com.google.android.gms.internal.measurement.zzfn zze = com.google.android.gms.internal.measurement.zzfo.zze();
                    zze.zzm(zzaoVar.zzd);
                    zze.zzi(zzaoVar.zzb);
                    zze.zzl(zzaoVar.zze);
                    zzaq zzaqVar = new zzaq(zzaoVar.zzf);
                    while (zzaqVar.hasNext()) {
                        String next = zzaqVar.next();
                        com.google.android.gms.internal.measurement.zzfr zze2 = com.google.android.gms.internal.measurement.zzfs.zze();
                        zze2.zzj(next);
                        Object zzf = zzaoVar.zzf.zzf(next);
                        if (zzf != null) {
                            zzr.zzf.zzu().zzu(zze2, zzf);
                            zze.zze(zze2);
                        }
                    }
                    com.google.android.gms.internal.measurement.zzfx zzfxVar2 = zzfxVar;
                    zzfxVar2.zzj(zze);
                    com.google.android.gms.internal.measurement.zzfz zza2 = com.google.android.gms.internal.measurement.zzgb.zza();
                    com.google.android.gms.internal.measurement.zzfp zza3 = com.google.android.gms.internal.measurement.zzfq.zza();
                    zza3.zza(zzc.zzc);
                    zza3.zzb(zzatVar.zza);
                    zza2.zza(zza3);
                    zzfxVar2.zzX(zza2);
                    zzfxVar2.zzf(zzr.zzf.zzf().zza(zzgVar.zzt(), Collections.emptyList(), zzfxVar2.zzap(), Long.valueOf(zze.zzc()), Long.valueOf(zze.zzc())));
                    if (zze.zzq()) {
                        zzfxVar2.zzae(zze.zzc());
                        zzfxVar2.zzN(zze.zzc());
                    }
                    long zzn2 = zzgVar.zzn();
                    if (zzn2 != 0) {
                        zzfxVar2.zzY(zzn2);
                    }
                    long zzp = zzgVar.zzp();
                    if (zzp != 0) {
                        zzfxVar2.zzZ(zzp);
                    } else if (zzn2 != 0) {
                        zzfxVar2.zzZ(zzn2);
                    }
                    zzgVar.zzE();
                    zzfxVar2.zzF((int) zzgVar.zzo());
                    zzr.zzs.zzf().zzh();
                    zzfxVar2.zzah(43042L);
                    zzfxVar2.zzag(zzr.zzs.zzav().currentTimeMillis());
                    zzfxVar2.zzad(true);
                    com.google.android.gms.internal.measurement.zzfv zzfvVar2 = zzfvVar;
                    zzfvVar2.zza(zzfxVar2);
                    zzg zzgVar2 = zzgVar;
                    zzgVar2.zzad(zzfxVar2.zzd());
                    zzgVar2.zzab(zzfxVar2.zzc());
                    zzr.zzf.zzi().zzE(zzgVar2);
                    zzr.zzf.zzi().zzD();
                    try {
                        return zzr.zzf.zzu().zzz(zzfvVar2.zzaA().zzbs());
                    } catch (IOException e11) {
                        zzr.zzs.zzay().zzd().zzc("Data loss. Failed to bundle and serialize. appId", zzel.zzn(str), e11);
                        return bArr2;
                    }
                } catch (SecurityException e12) {
                    zzr.zzs.zzay().zzc().zzb("app instance id encryption failed", e12.getMessage());
                    bArr = new byte[0];
                    zzksVar3 = zzr.zzf;
                }
            }
            zzksVar3.zzi().zzy();
            return bArr;
        } finally {
            zzr.zzf.zzi().zzy();
        }
    }
}
