package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzna;
import com.google.android.gms.internal.measurement.zzot;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.internal.measurement.zzpx;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import s.a;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzks implements zzgq {
    private static volatile zzks zzb;
    private long zzA;
    private final Map<String, zzag> zzB;

    @VisibleForTesting
    public long zza;
    private final zzfm zzc;
    private final zzer zzd;
    private zzaj zze;
    private zzet zzf;
    private zzkg zzg;
    private zzz zzh;
    private final zzku zzi;
    private zzif zzj;
    private zzjp zzk;
    private final zzkj zzl;
    private zzfd zzm;
    private final zzfv zzn;
    private boolean zzp;
    private List<Runnable> zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private FileLock zzw;
    private FileChannel zzx;
    private List<Long> zzy;
    private List<Long> zzz;
    private boolean zzo = false;
    private final zzky zzC = new zzkp(this);

    public zzks(zzkt zzktVar, zzfv zzfvVar) {
        Preconditions.checkNotNull(zzktVar);
        this.zzn = zzfv.zzp(zzktVar.zza, null, null);
        this.zzA = -1L;
        this.zzl = new zzkj(this);
        zzku zzkuVar = new zzku(this);
        zzkuVar.zzZ();
        this.zzi = zzkuVar;
        zzer zzerVar = new zzer(this);
        zzerVar.zzZ();
        this.zzd = zzerVar;
        zzfm zzfmVar = new zzfm(this);
        zzfmVar.zzZ();
        this.zzc = zzfmVar;
        this.zzB = new HashMap();
        zzaz().zzp(new zzkk(this, zzktVar));
    }

    @VisibleForTesting
    public static final void zzY(com.google.android.gms.internal.measurement.zzfn zzfnVar, int i10, String str) {
        List<com.google.android.gms.internal.measurement.zzfs> zzp = zzfnVar.zzp();
        for (int i11 = 0; i11 < zzp.size(); i11++) {
            if ("_err".equals(zzp.get(i11).zzg())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfr zze = com.google.android.gms.internal.measurement.zzfs.zze();
        zze.zzj("_err");
        zze.zzi(Long.valueOf(i10).longValue());
        com.google.android.gms.internal.measurement.zzfs zzaA = zze.zzaA();
        com.google.android.gms.internal.measurement.zzfr zze2 = com.google.android.gms.internal.measurement.zzfs.zze();
        zze2.zzj("_ev");
        zze2.zzk(str);
        com.google.android.gms.internal.measurement.zzfs zzaA2 = zze2.zzaA();
        zzfnVar.zzf(zzaA);
        zzfnVar.zzf(zzaA2);
    }

    @VisibleForTesting
    public static final void zzZ(com.google.android.gms.internal.measurement.zzfn zzfnVar, String str) {
        List<com.google.android.gms.internal.measurement.zzfs> zzp = zzfnVar.zzp();
        for (int i10 = 0; i10 < zzp.size(); i10++) {
            if (str.equals(zzp.get(i10).zzg())) {
                zzfnVar.zzh(i10);
                return;
            }
        }
    }

    private final zzp zzaa(String str) {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzj = zzajVar.zzj(str);
        if (zzj != null && !TextUtils.isEmpty(zzj.zzw())) {
            Boolean zzab = zzab(zzj);
            if (zzab != null && !zzab.booleanValue()) {
                zzay().zzd().zzb("App version does not match; dropping. appId", zzel.zzn(str));
                return null;
            }
            String zzz = zzj.zzz();
            String zzw = zzj.zzw();
            long zzb2 = zzj.zzb();
            String zzv = zzj.zzv();
            long zzm = zzj.zzm();
            long zzj2 = zzj.zzj();
            boolean zzaj = zzj.zzaj();
            String zzx = zzj.zzx();
            long zza = zzj.zza();
            boolean zzai = zzj.zzai();
            String zzr = zzj.zzr();
            Boolean zzq = zzj.zzq();
            long zzk = zzj.zzk();
            List<String> zzC = zzj.zzC();
            zzot.zzc();
            return new zzp(str, zzz, zzw, zzb2, zzv, zzm, zzj2, (String) null, zzaj, false, zzx, zza, 0L, 0, zzai, false, zzr, zzq, zzk, zzC, zzg().zzs(str, zzdy.zzad) ? zzj.zzy() : null, zzh(str).zzi());
        }
        zzay().zzc().zzb("No app data available; dropping", str);
        return null;
    }

    private final Boolean zzab(zzg zzgVar) {
        try {
            if (zzgVar.zzb() != -2147483648L) {
                if (zzgVar.zzb() == Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzgVar.zzt(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzgVar.zzt(), 0).versionName;
                String zzw = zzgVar.zzw();
                if (zzw != null && zzw.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void zzac() {
        zzaz().zzg();
        if (!this.zzt && !this.zzu && !this.zzv) {
            zzay().zzj().zza("Stopping uploading service(s)");
            List<Runnable> list = this.zzq;
            if (list == null) {
                return;
            }
            Iterator<Runnable> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
            ((List) Preconditions.checkNotNull(this.zzq)).clear();
            return;
        }
        zzay().zzj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv));
    }

    @VisibleForTesting
    private final void zzad(com.google.android.gms.internal.measurement.zzfx zzfxVar, long j10, boolean z10) {
        zzkx zzkxVar;
        String str = true != z10 ? "_lte" : "_se";
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzkx zzp = zzajVar.zzp(zzfxVar.zzal(), str);
        if (zzp != null && zzp.zze != null) {
            zzkxVar = new zzkx(zzfxVar.zzal(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(((Long) zzp.zze).longValue() + j10));
        } else {
            zzkxVar = new zzkx(zzfxVar.zzal(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(j10));
        }
        com.google.android.gms.internal.measurement.zzgg zzd = com.google.android.gms.internal.measurement.zzgh.zzd();
        zzd.zzf(str);
        zzd.zzg(zzav().currentTimeMillis());
        zzd.zze(((Long) zzkxVar.zze).longValue());
        com.google.android.gms.internal.measurement.zzgh zzaA = zzd.zzaA();
        int zza = zzku.zza(zzfxVar, str);
        if (zza >= 0) {
            zzfxVar.zzai(zza, zzaA);
        } else {
            zzfxVar.zzl(zzaA);
        }
        if (j10 > 0) {
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            zzajVar2.zzN(zzkxVar);
            zzay().zzj().zzc("Updated engagement user property. scope, value", true != z10 ? "lifetime" : "session-scoped", zzkxVar.zze);
        }
    }

    private final void zzae(com.google.android.gms.internal.measurement.zzfn zzfnVar, com.google.android.gms.internal.measurement.zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzC = zzku.zzC(zzfnVar.zzaA(), "_et");
        if (zzC == null || !zzC.zzw() || zzC.zzd() <= 0) {
            return;
        }
        long zzd = zzC.zzd();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzC2 = zzku.zzC(zzfnVar2.zzaA(), "_et");
        if (zzC2 != null && zzC2.zzd() > 0) {
            zzd += zzC2.zzd();
        }
        zzak(this.zzi);
        zzku.zzA(zzfnVar2, "_et", Long.valueOf(zzd));
        zzak(this.zzi);
        zzku.zzA(zzfnVar, "_fr", 1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzaf() {
        long max;
        long j10;
        zzaz().zzg();
        zzB();
        if (this.zza > 0) {
            long abs = 3600000 - Math.abs(zzav().elapsedRealtime() - this.zza);
            if (abs > 0) {
                zzay().zzj().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                zzm().zzc();
                zzkg zzkgVar = this.zzg;
                zzak(zzkgVar);
                zzkgVar.zza();
                return;
            }
            this.zza = 0L;
        }
        if (this.zzn.zzM() && zzai()) {
            long currentTimeMillis = zzav().currentTimeMillis();
            zzg();
            long max2 = Math.max(0L, zzdy.zzz.zza(null).longValue());
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            boolean z10 = true;
            if (!zzajVar.zzJ()) {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                if (!zzajVar2.zzI()) {
                    z10 = false;
                }
            }
            if (z10) {
                String zzl = zzg().zzl();
                if (!TextUtils.isEmpty(zzl) && !".none.".equals(zzl)) {
                    zzg();
                    max = Math.max(0L, zzdy.zzu.zza(null).longValue());
                } else {
                    zzg();
                    max = Math.max(0L, zzdy.zzt.zza(null).longValue());
                }
            } else {
                zzg();
                max = Math.max(0L, zzdy.zzs.zza(null).longValue());
            }
            long zza = this.zzk.zzc.zza();
            long zza2 = this.zzk.zzd.zza();
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            boolean z11 = z10;
            long zzd = zzajVar3.zzd();
            zzaj zzajVar4 = this.zze;
            zzak(zzajVar4);
            long max3 = Math.max(zzd, zzajVar4.zze());
            if (max3 != 0) {
                long abs2 = currentTimeMillis - Math.abs(max3 - currentTimeMillis);
                long abs3 = Math.abs(zza - currentTimeMillis);
                long abs4 = currentTimeMillis - Math.abs(zza2 - currentTimeMillis);
                long max4 = Math.max(currentTimeMillis - abs3, abs4);
                j10 = abs2 + max2;
                if (z11 && max4 > 0) {
                    j10 = Math.min(abs2, max4) + max;
                }
                zzku zzkuVar = this.zzi;
                zzak(zzkuVar);
                if (!zzkuVar.zzx(max4, max)) {
                    j10 = max4 + max;
                }
                if (abs4 != 0 && abs4 >= abs2) {
                    int i10 = 0;
                    while (true) {
                        zzg();
                        if (i10 >= Math.min(20, Math.max(0, zzdy.zzB.zza(null).intValue()))) {
                            break;
                        }
                        zzg();
                        j10 += Math.max(0L, zzdy.zzA.zza(null).longValue()) * (1 << i10);
                        if (j10 > abs4) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (j10 == 0) {
                    zzer zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (zzerVar.zzc()) {
                        long zza3 = this.zzk.zzb.zza();
                        zzg();
                        long max5 = Math.max(0L, zzdy.zzq.zza(null).longValue());
                        zzku zzkuVar2 = this.zzi;
                        zzak(zzkuVar2);
                        if (!zzkuVar2.zzx(zza3, max5)) {
                            j10 = Math.max(j10, zza3 + max5);
                        }
                        zzm().zzc();
                        long currentTimeMillis2 = j10 - zzav().currentTimeMillis();
                        if (currentTimeMillis2 <= 0) {
                            zzg();
                            currentTimeMillis2 = Math.max(0L, zzdy.zzv.zza(null).longValue());
                            this.zzk.zzc.zzb(zzav().currentTimeMillis());
                        }
                        zzay().zzj().zzb("Upload scheduled in approximately ms", Long.valueOf(currentTimeMillis2));
                        zzkg zzkgVar2 = this.zzg;
                        zzak(zzkgVar2);
                        zzkgVar2.zzd(currentTimeMillis2);
                        return;
                    }
                    zzay().zzj().zza("No network");
                    zzm().zzb();
                    zzkg zzkgVar3 = this.zzg;
                    zzak(zzkgVar3);
                    zzkgVar3.zza();
                    return;
                }
                zzay().zzj().zza("Next upload time is 0");
                zzm().zzc();
                zzkg zzkgVar4 = this.zzg;
                zzak(zzkgVar4);
                zzkgVar4.zza();
                return;
            }
            j10 = 0;
            if (j10 == 0) {
            }
        } else {
            zzay().zzj().zza("Nothing to upload or uploading impossible");
            zzm().zzc();
            zzkg zzkgVar5 = this.zzg;
            zzak(zzkgVar5);
            zzkgVar5.zza();
        }
    }

    private final boolean zzag(zzp zzpVar) {
        zzot.zzc();
        return zzg().zzs(zzpVar.zza, zzdy.zzad) ? (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzu) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true : (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:430:0x0ce3, code lost:
    
        if (r10 > (com.google.android.gms.measurement.internal.zzaf.zzA() + r8)) goto L419;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x063f A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0657 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x04ea A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0986 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x09cf A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x09f2 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0a73 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0a9f A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0a6b  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x0cd3 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0d5a A[Catch: all -> 0x0e1c, TRY_LEAVE, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0d76 A[Catch: SQLiteException -> 0x0d8e, all -> 0x0e1c, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x0d8e, blocks: (B:438:0x0d67, B:440:0x0d76), top: B:437:0x0d67, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03c7 A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x048b A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x062f A[Catch: all -> 0x0e1c, TryCatch #3 {all -> 0x0e1c, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:25:0x069d, B:26:0x010b, B:28:0x0119, B:31:0x0139, B:33:0x013f, B:35:0x0151, B:37:0x015f, B:39:0x016f, B:41:0x017c, B:46:0x0181, B:49:0x019a, B:66:0x03c7, B:67:0x03d3, B:70:0x03dd, B:74:0x0400, B:75:0x03ef, B:84:0x047f, B:86:0x048b, B:89:0x049e, B:91:0x04af, B:93:0x04bb, B:97:0x062f, B:99:0x0639, B:101:0x063f, B:102:0x0657, B:104:0x066a, B:105:0x0682, B:106:0x068b, B:113:0x04ea, B:115:0x04f9, B:118:0x050e, B:120:0x0520, B:122:0x052c, B:129:0x054e, B:131:0x0564, B:133:0x0570, B:136:0x0583, B:138:0x0596, B:140:0x05df, B:141:0x05e6, B:143:0x05ec, B:145:0x05f6, B:146:0x05fd, B:148:0x0603, B:150:0x060f, B:151:0x0621, B:154:0x0408, B:156:0x0414, B:158:0x0420, B:162:0x0465, B:163:0x043d, B:166:0x044f, B:168:0x0455, B:170:0x045f, B:175:0x01fa, B:178:0x0204, B:180:0x0212, B:182:0x025d, B:183:0x0230, B:185:0x0241, B:193:0x026e, B:195:0x029d, B:196:0x02c7, B:198:0x02fe, B:199:0x0304, B:202:0x0310, B:204:0x0346, B:205:0x0361, B:207:0x0367, B:209:0x0375, B:211:0x0388, B:212:0x037d, B:220:0x038f, B:223:0x0396, B:224:0x03ae, B:240:0x06b8, B:242:0x06c6, B:244:0x06d1, B:246:0x0705, B:247:0x06d9, B:249:0x06e4, B:251:0x06ea, B:253:0x06f6, B:255:0x0700, B:262:0x070a, B:263:0x0716, B:266:0x071e, B:269:0x0730, B:270:0x073c, B:272:0x0744, B:273:0x0769, B:275:0x078e, B:277:0x079f, B:279:0x07a5, B:281:0x07b1, B:282:0x07e2, B:284:0x07e8, B:288:0x07f6, B:286:0x07fa, B:290:0x07fd, B:291:0x0800, B:292:0x080e, B:294:0x0814, B:296:0x0824, B:297:0x082b, B:299:0x0837, B:301:0x083e, B:304:0x0841, B:306:0x087f, B:307:0x0892, B:309:0x0898, B:312:0x08b0, B:314:0x08cb, B:316:0x08e2, B:318:0x08e7, B:320:0x08eb, B:322:0x08ef, B:324:0x08f9, B:325:0x0903, B:327:0x0907, B:329:0x090d, B:330:0x091d, B:331:0x0926, B:334:0x0b77, B:335:0x0931, B:401:0x0948, B:338:0x0964, B:340:0x0986, B:341:0x098e, B:343:0x0994, B:347:0x09a6, B:352:0x09cf, B:353:0x09f2, B:355:0x09fe, B:357:0x0a13, B:358:0x0a54, B:361:0x0a6c, B:363:0x0a73, B:365:0x0a82, B:367:0x0a86, B:369:0x0a8a, B:371:0x0a8e, B:372:0x0a9a, B:373:0x0a9f, B:375:0x0aa5, B:377:0x0ac1, B:378:0x0ac6, B:379:0x0b74, B:381:0x0adf, B:383:0x0ae7, B:386:0x0b12, B:388:0x0b3e, B:389:0x0b4a, B:392:0x0b5a, B:394:0x0b64, B:395:0x0af8, B:399:0x09ba, B:405:0x094f, B:407:0x0b7f, B:409:0x0b8b, B:410:0x0b91, B:411:0x0b99, B:413:0x0b9f, B:416:0x0bb8, B:418:0x0bc9, B:419:0x0c3d, B:421:0x0c43, B:423:0x0c5b, B:426:0x0c62, B:427:0x0c91, B:429:0x0cd3, B:431:0x0d08, B:433:0x0d0c, B:434:0x0d17, B:436:0x0d5a, B:438:0x0d67, B:440:0x0d76, B:444:0x0d90, B:447:0x0da9, B:448:0x0ce5, B:449:0x0c6a, B:451:0x0c76, B:452:0x0c7a, B:453:0x0dc1, B:456:0x0dd5, B:457:0x0df8, B:464:0x0de5, B:465:0x0be1, B:467:0x0be7, B:469:0x0bf1, B:470:0x0bf8, B:475:0x0c08, B:476:0x0c0f, B:478:0x0c2e, B:479:0x0c35, B:480:0x0c32, B:481:0x0c0c, B:483:0x0bf5, B:485:0x0749, B:487:0x074f, B:491:0x0e0a), top: B:2:0x0010, inners: #0, #1, #2, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zzah(String str, long j10) {
        String str2;
        long j11;
        long j12;
        zzkr zzkrVar;
        zzaj zzajVar;
        com.google.android.gms.internal.measurement.zzfy zzfyVar;
        long currentTimeMillis;
        long zzm;
        ContentValues contentValues;
        long parseLong;
        int zzc;
        long j13;
        SecureRandom secureRandom;
        com.google.android.gms.internal.measurement.zzfx zzfxVar;
        zzkr zzkrVar2;
        zzap zzapVar;
        Long l10;
        long zzr;
        String str3;
        String str4;
        boolean z10;
        int i10;
        String str5;
        com.google.android.gms.internal.measurement.zzfx zzfxVar2;
        int i11;
        String str6;
        String str7;
        com.google.android.gms.internal.measurement.zzfx zzfxVar3;
        int i12;
        String str8;
        com.google.android.gms.internal.measurement.zzfx zzfxVar4;
        int i13;
        int i14;
        String str9;
        String str10;
        int i15;
        com.google.android.gms.internal.measurement.zzfn zzfnVar;
        int i16;
        int i17;
        com.google.android.gms.internal.measurement.zzfn zzfnVar2;
        char c10;
        String str11 = "_sn";
        String str12 = "_npa";
        String str13 = "_ai";
        zzaj zzajVar2 = this.zze;
        zzak(zzajVar2);
        zzajVar2.zzw();
        try {
            zzkr zzkrVar3 = new zzkr(this, null);
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzajVar3.zzW(null, j10, this.zzA, zzkrVar3);
            List<com.google.android.gms.internal.measurement.zzfo> list = zzkrVar3.zzc;
            if (list != null && !list.isEmpty()) {
                com.google.android.gms.internal.measurement.zzfx zzbv = zzkrVar3.zza.zzbv();
                zzbv.zzp();
                boolean zzs = zzg().zzs(zzkrVar3.zza.zzy(), zzdy.zzT);
                com.google.android.gms.internal.measurement.zzfn zzfnVar3 = null;
                com.google.android.gms.internal.measurement.zzfn zzfnVar4 = null;
                int i18 = -1;
                int i19 = 0;
                int i20 = -1;
                long j14 = 0;
                int i21 = 0;
                int i22 = 0;
                while (true) {
                    String str14 = "_fr";
                    String str15 = "_et";
                    str2 = str12;
                    j11 = j14;
                    if (i19 >= zzkrVar3.zzc.size()) {
                        break;
                    }
                    com.google.android.gms.internal.measurement.zzfn zzbv2 = zzkrVar3.zzc.get(i19).zzbv();
                    zzfm zzfmVar = this.zzc;
                    zzak(zzfmVar);
                    int i23 = i19;
                    if (zzfmVar.zzo(zzkrVar3.zza.zzy(), zzbv2.zzo())) {
                        zzay().zzk().zzc("Dropping blocked raw event. appId", zzel.zzn(zzkrVar3.zza.zzy()), this.zzn.zzj().zzd(zzbv2.zzo()));
                        zzfm zzfmVar2 = this.zzc;
                        zzak(zzfmVar2);
                        if (!zzfmVar2.zzm(zzkrVar3.zza.zzy())) {
                            zzfm zzfmVar3 = this.zzc;
                            zzak(zzfmVar3);
                            if (!zzfmVar3.zzp(zzkrVar3.zza.zzy()) && !"_err".equals(zzbv2.zzo())) {
                                zzv().zzM(this.zzC, zzkrVar3.zza.zzy(), 11, "_ev", zzbv2.zzo(), 0);
                            }
                        }
                        str3 = str13;
                        zzfxVar4 = zzbv;
                        z10 = zzs;
                        j14 = j11;
                        i16 = i23;
                        str10 = str11;
                    } else {
                        if (zzbv2.zzo().equals(zzgs.zza(str13))) {
                            zzbv2.zzi(str13);
                            zzay().zzj().zza("Renaming ad_impression to _ai");
                            if (Log.isLoggable(zzay().zzq(), 5)) {
                                int i24 = 0;
                                while (i24 < zzbv2.zza()) {
                                    String str16 = str13;
                                    if ("ad_platform".equals(zzbv2.zzn(i24).zzg()) && !TextUtils.isEmpty(zzbv2.zzn(i24).zzh()) && "admob".equalsIgnoreCase(zzbv2.zzn(i24).zzh())) {
                                        zzay().zzl().zza("AdMob ad impression logged from app. Potentially duplicative.");
                                    }
                                    i24++;
                                    str13 = str16;
                                }
                            }
                        }
                        str3 = str13;
                        zzfm zzfmVar4 = this.zzc;
                        zzak(zzfmVar4);
                        boolean zzn = zzfmVar4.zzn(zzkrVar3.zza.zzy(), zzbv2.zzo());
                        if (zzn) {
                            str4 = str11;
                            z10 = zzs;
                        } else {
                            zzak(this.zzi);
                            String zzo = zzbv2.zzo();
                            Preconditions.checkNotEmpty(zzo);
                            z10 = zzs;
                            int hashCode = zzo.hashCode();
                            str4 = str11;
                            if (hashCode == 94660) {
                                if (zzo.equals("_in")) {
                                    c10 = 0;
                                    if (c10 != 0) {
                                    }
                                }
                                c10 = 65535;
                                if (c10 != 0) {
                                }
                            } else if (hashCode != 95025) {
                                if (hashCode == 95027 && zzo.equals("_ui")) {
                                    c10 = 1;
                                    if (c10 != 0 && c10 != 1 && c10 != 2) {
                                        i11 = i18;
                                        str6 = "_fr";
                                        str5 = "_et";
                                        i10 = i20;
                                        zzn = false;
                                        str7 = "_e";
                                        zzfxVar2 = zzbv;
                                        if (zzn) {
                                            ArrayList arrayList = new ArrayList(zzbv2.zzp());
                                            int i25 = -1;
                                            int i26 = -1;
                                            for (int i27 = 0; i27 < arrayList.size(); i27++) {
                                                if (AppMeasurementSdk.ConditionalUserProperty.VALUE.equals(((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i27)).zzg())) {
                                                    i25 = i27;
                                                } else if ("currency".equals(((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i27)).zzg())) {
                                                    i26 = i27;
                                                }
                                            }
                                            if (i25 != -1) {
                                                if (!((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i25)).zzw() && !((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i25)).zzu()) {
                                                    zzay().zzl().zza("Value must be specified with a numeric type.");
                                                    zzbv2.zzh(i25);
                                                    zzZ(zzbv2, "_c");
                                                    zzY(zzbv2, 18, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                                                } else {
                                                    if (i26 != -1) {
                                                        String zzh = ((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i26)).zzh();
                                                        if (zzh.length() == 3) {
                                                            int i28 = 0;
                                                            while (i28 < zzh.length()) {
                                                                int codePointAt = zzh.codePointAt(i28);
                                                                if (Character.isLetter(codePointAt)) {
                                                                    i28 += Character.charCount(codePointAt);
                                                                }
                                                            }
                                                        }
                                                    }
                                                    zzay().zzl().zza("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
                                                    zzbv2.zzh(i25);
                                                    zzZ(zzbv2, "_c");
                                                    zzY(zzbv2, 19, "currency");
                                                    break;
                                                }
                                            }
                                            if (!str7.equals(zzbv2.zzo())) {
                                                zzak(this.zzi);
                                                if (zzku.zzC(zzbv2.zzaA(), str6) == null) {
                                                    if (zzfnVar4 == null || Math.abs(zzfnVar4.zzc() - zzbv2.zzc()) > 1000) {
                                                        zzfxVar4 = zzfxVar2;
                                                        zzfnVar3 = zzbv2;
                                                        i18 = i11;
                                                        i20 = i21;
                                                    } else {
                                                        com.google.android.gms.internal.measurement.zzfn clone = zzfnVar4.clone();
                                                        if (zzaj(zzbv2, clone)) {
                                                            zzfxVar4 = zzfxVar2;
                                                            i17 = i11;
                                                            zzfxVar4.zzO(i17, clone);
                                                            i20 = i10;
                                                            zzfnVar2 = null;
                                                            zzfnVar4 = null;
                                                        } else {
                                                            zzfxVar4 = zzfxVar2;
                                                            i17 = i11;
                                                            zzfnVar2 = zzbv2;
                                                            i20 = i21;
                                                        }
                                                        zzfnVar3 = zzfnVar2;
                                                        i18 = i17;
                                                    }
                                                    str10 = str4;
                                                    str9 = str5;
                                                    if (!z10 && str7.equals(zzbv2.zzo())) {
                                                        if (zzbv2.zza() != 0) {
                                                            zzay().zzk().zzb("Engagement event does not contain any parameters. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                                        } else {
                                                            zzak(this.zzi);
                                                            Long l11 = (Long) zzku.zzD(zzbv2.zzaA(), str9);
                                                            if (l11 == null) {
                                                                zzay().zzk().zzb("Engagement event does not include duration. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                                            } else {
                                                                j14 = j11 + l11.longValue();
                                                                i16 = i23;
                                                                zzkrVar3.zzc.set(i16, zzbv2.zzaA());
                                                                i21++;
                                                                zzfxVar4.zzj(zzbv2);
                                                            }
                                                        }
                                                    }
                                                    j14 = j11;
                                                    i16 = i23;
                                                    zzkrVar3.zzc.set(i16, zzbv2.zzaA());
                                                    i21++;
                                                    zzfxVar4.zzj(zzbv2);
                                                } else {
                                                    zzfxVar4 = zzfxVar2;
                                                    i13 = i11;
                                                    i14 = i10;
                                                    str10 = str4;
                                                    str9 = str5;
                                                    i20 = i14;
                                                    i18 = i13;
                                                    if (!z10) {
                                                        if (zzbv2.zza() != 0) {
                                                        }
                                                    }
                                                    j14 = j11;
                                                    i16 = i23;
                                                    zzkrVar3.zzc.set(i16, zzbv2.zzaA());
                                                    i21++;
                                                    zzfxVar4.zzj(zzbv2);
                                                }
                                            } else {
                                                zzfxVar4 = zzfxVar2;
                                                i13 = i11;
                                                if ("_vs".equals(zzbv2.zzo())) {
                                                    zzak(this.zzi);
                                                    str9 = str5;
                                                    if (zzku.zzC(zzbv2.zzaA(), str9) == null) {
                                                        if (zzfnVar3 == null || Math.abs(zzfnVar3.zzc() - zzbv2.zzc()) > 1000) {
                                                            i20 = i10;
                                                            zzfnVar4 = zzbv2;
                                                            i18 = i21;
                                                        } else {
                                                            com.google.android.gms.internal.measurement.zzfn clone2 = zzfnVar3.clone();
                                                            if (zzaj(clone2, zzbv2)) {
                                                                i15 = i10;
                                                                zzfxVar4.zzO(i15, clone2);
                                                                i18 = i13;
                                                                zzfnVar = null;
                                                                zzfnVar3 = null;
                                                            } else {
                                                                i15 = i10;
                                                                zzfnVar = zzbv2;
                                                                i18 = i21;
                                                            }
                                                            zzfnVar4 = zzfnVar;
                                                            i20 = i15;
                                                        }
                                                        str10 = str4;
                                                    } else {
                                                        i14 = i10;
                                                        str10 = str4;
                                                        i20 = i14;
                                                        i18 = i13;
                                                    }
                                                } else {
                                                    i14 = i10;
                                                    str9 = str5;
                                                    if (zzg().zzs(zzkrVar3.zza.zzy(), zzdy.zzag) && "_ab".equals(zzbv2.zzo())) {
                                                        zzak(this.zzi);
                                                        if (zzku.zzC(zzbv2.zzaA(), str9) == null && zzfnVar3 != null && Math.abs(zzfnVar3.zzc() - zzbv2.zzc()) <= 4000) {
                                                            com.google.android.gms.internal.measurement.zzfn clone3 = zzfnVar3.clone();
                                                            zzae(clone3, zzbv2);
                                                            Preconditions.checkArgument(str7.equals(clone3.zzo()));
                                                            zzak(this.zzi);
                                                            str10 = str4;
                                                            com.google.android.gms.internal.measurement.zzfs zzC = zzku.zzC(clone3.zzaA(), str10);
                                                            zzak(this.zzi);
                                                            com.google.android.gms.internal.measurement.zzfs zzC2 = zzku.zzC(clone3.zzaA(), "_sc");
                                                            zzak(this.zzi);
                                                            com.google.android.gms.internal.measurement.zzfs zzC3 = zzku.zzC(clone3.zzaA(), "_si");
                                                            String zzh2 = zzC != null ? zzC.zzh() : "";
                                                            if (!TextUtils.isEmpty(zzh2)) {
                                                                zzak(this.zzi);
                                                                zzku.zzA(zzbv2, str10, zzh2);
                                                            }
                                                            String zzh3 = zzC2 != null ? zzC2.zzh() : "";
                                                            if (!TextUtils.isEmpty(zzh3)) {
                                                                zzak(this.zzi);
                                                                zzku.zzA(zzbv2, "_sc", zzh3);
                                                            }
                                                            if (zzC3 != null) {
                                                                zzak(this.zzi);
                                                                zzku.zzA(zzbv2, "_si", Long.valueOf(zzC3.zzd()));
                                                            }
                                                            zzfxVar4.zzO(i14, clone3);
                                                            i20 = i14;
                                                            i18 = i13;
                                                            zzfnVar3 = null;
                                                        }
                                                    }
                                                    str10 = str4;
                                                    i20 = i14;
                                                    i18 = i13;
                                                }
                                                if (!z10) {
                                                }
                                                j14 = j11;
                                                i16 = i23;
                                                zzkrVar3.zzc.set(i16, zzbv2.zzaA());
                                                i21++;
                                                zzfxVar4.zzj(zzbv2);
                                            }
                                        }
                                        if (!str7.equals(zzbv2.zzo())) {
                                        }
                                    }
                                }
                                c10 = 65535;
                                if (c10 != 0) {
                                    i11 = i18;
                                    str6 = "_fr";
                                    str5 = "_et";
                                    i10 = i20;
                                    zzn = false;
                                    str7 = "_e";
                                    zzfxVar2 = zzbv;
                                    if (zzn) {
                                    }
                                    if (!str7.equals(zzbv2.zzo())) {
                                    }
                                }
                            } else {
                                if (zzo.equals("_ug")) {
                                    c10 = 2;
                                    if (c10 != 0) {
                                    }
                                }
                                c10 = 65535;
                                if (c10 != 0) {
                                }
                            }
                        }
                        i10 = i20;
                        int i29 = 0;
                        boolean z11 = false;
                        boolean z12 = false;
                        while (true) {
                            str5 = str15;
                            if (i29 >= zzbv2.zza()) {
                                break;
                            }
                            if ("_c".equals(zzbv2.zzn(i29).zzg())) {
                                com.google.android.gms.internal.measurement.zzfr zzbv3 = zzbv2.zzn(i29).zzbv();
                                zzfxVar3 = zzbv;
                                i12 = i18;
                                zzbv3.zzi(1L);
                                zzbv2.zzk(i29, zzbv3.zzaA());
                                str8 = str14;
                                z11 = true;
                            } else {
                                zzfxVar3 = zzbv;
                                i12 = i18;
                                if ("_r".equals(zzbv2.zzn(i29).zzg())) {
                                    com.google.android.gms.internal.measurement.zzfr zzbv4 = zzbv2.zzn(i29).zzbv();
                                    str8 = str14;
                                    zzbv4.zzi(1L);
                                    zzbv2.zzk(i29, zzbv4.zzaA());
                                    z12 = true;
                                } else {
                                    str8 = str14;
                                }
                            }
                            i29++;
                            str14 = str8;
                            zzbv = zzfxVar3;
                            str15 = str5;
                            i18 = i12;
                        }
                        zzfxVar2 = zzbv;
                        i11 = i18;
                        String str17 = str14;
                        if (z11 || !zzn) {
                            str6 = str17;
                        } else {
                            zzay().zzj().zzb("Marking event as conversion", this.zzn.zzj().zzd(zzbv2.zzo()));
                            com.google.android.gms.internal.measurement.zzfr zze = com.google.android.gms.internal.measurement.zzfs.zze();
                            zze.zzj("_c");
                            str6 = str17;
                            zze.zzi(1L);
                            zzbv2.zze(zze);
                        }
                        if (!z12) {
                            zzay().zzj().zzb("Marking event as real-time", this.zzn.zzj().zzd(zzbv2.zzo()));
                            com.google.android.gms.internal.measurement.zzfr zze2 = com.google.android.gms.internal.measurement.zzfs.zze();
                            zze2.zzj("_r");
                            zze2.zzi(1L);
                            zzbv2.zze(zze2);
                        }
                        zzaj zzajVar4 = this.zze;
                        zzak(zzajVar4);
                        str7 = "_e";
                        if (zzajVar4.zzl(zza(), zzkrVar3.zza.zzy(), false, false, false, false, true).zze > zzg().zze(zzkrVar3.zza.zzy(), zzdy.zzn)) {
                            zzZ(zzbv2, "_r");
                        } else {
                            i22 = 1;
                        }
                        if (zzkz.zzah(zzbv2.zzo()) && zzn) {
                            zzaj zzajVar5 = this.zze;
                            zzak(zzajVar5);
                            if (zzajVar5.zzl(zza(), zzkrVar3.zza.zzy(), false, false, true, false, false).zzc > zzg().zze(zzkrVar3.zza.zzy(), zzdy.zzm)) {
                                zzay().zzk().zzb("Too many conversions. Not logging as conversion. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                com.google.android.gms.internal.measurement.zzfr zzfrVar = null;
                                boolean z13 = false;
                                int i30 = -1;
                                for (int i31 = 0; i31 < zzbv2.zza(); i31++) {
                                    com.google.android.gms.internal.measurement.zzfs zzn2 = zzbv2.zzn(i31);
                                    if ("_c".equals(zzn2.zzg())) {
                                        zzfrVar = zzn2.zzbv();
                                        i30 = i31;
                                    } else if ("_err".equals(zzn2.zzg())) {
                                        z13 = true;
                                    }
                                }
                                if (z13) {
                                    if (zzfrVar != null) {
                                        zzbv2.zzh(i30);
                                    } else {
                                        zzfrVar = null;
                                    }
                                }
                                if (zzfrVar != null) {
                                    com.google.android.gms.internal.measurement.zzfr clone4 = zzfrVar.clone();
                                    clone4.zzj("_err");
                                    clone4.zzi(10L);
                                    zzbv2.zzk(i30, clone4.zzaA());
                                } else {
                                    zzay().zzd().zzb("Did not find conversion parameter. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                }
                            }
                        }
                        if (zzn) {
                        }
                        if (!str7.equals(zzbv2.zzo())) {
                        }
                    }
                    i19 = i16 + 1;
                    zzbv = zzfxVar4;
                    str11 = str10;
                    str12 = str2;
                    zzs = z10;
                    str13 = str3;
                }
                com.google.android.gms.internal.measurement.zzfx zzfxVar5 = zzbv;
                if (zzs) {
                    int i32 = i21;
                    j12 = j11;
                    int i33 = 0;
                    while (i33 < i32) {
                        com.google.android.gms.internal.measurement.zzfo zze3 = zzfxVar5.zze(i33);
                        if ("_e".equals(zze3.zzh())) {
                            zzak(this.zzi);
                            if (zzku.zzC(zze3, "_fr") != null) {
                                zzfxVar5.zzw(i33);
                                i32--;
                                i33--;
                                i33++;
                            }
                        }
                        zzak(this.zzi);
                        com.google.android.gms.internal.measurement.zzfs zzC4 = zzku.zzC(zze3, "_et");
                        if (zzC4 != null) {
                            Long valueOf = zzC4.zzw() ? Long.valueOf(zzC4.zzd()) : null;
                            if (valueOf != null && valueOf.longValue() > 0) {
                                j12 += valueOf.longValue();
                            }
                        }
                        i33++;
                    }
                } else {
                    j12 = j11;
                }
                zzad(zzfxVar5, j12, false);
                Iterator<com.google.android.gms.internal.measurement.zzfo> it2 = zzfxVar5.zzao().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if ("_s".equals(it2.next().zzh())) {
                        zzaj zzajVar6 = this.zze;
                        zzak(zzajVar6);
                        zzajVar6.zzB(zzfxVar5.zzal(), "_se");
                        break;
                    }
                }
                if (zzku.zza(zzfxVar5, "_sid") >= 0) {
                    zzad(zzfxVar5, j12, true);
                } else {
                    int zza = zzku.zza(zzfxVar5, "_se");
                    if (zza >= 0) {
                        zzfxVar5.zzx(zza);
                        zzay().zzd().zzb("Session engagement user property is in the bundle without session ID. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                    }
                }
                zzku zzkuVar = this.zzi;
                zzak(zzkuVar);
                zzkuVar.zzs.zzay().zzj().zza("Checking account type status for ad personalization signals");
                zzfm zzfmVar5 = zzkuVar.zzf.zzc;
                zzak(zzfmVar5);
                if (zzfmVar5.zzk(zzfxVar5.zzal())) {
                    zzaj zzajVar7 = zzkuVar.zzf.zze;
                    zzak(zzajVar7);
                    zzg zzj = zzajVar7.zzj(zzfxVar5.zzal());
                    if (zzj != null && zzj.zzai() && zzkuVar.zzs.zzg().zze()) {
                        zzkuVar.zzs.zzay().zzc().zza("Turning off ad personalization due to account type");
                        com.google.android.gms.internal.measurement.zzgg zzd = com.google.android.gms.internal.measurement.zzgh.zzd();
                        zzd.zzf(str2);
                        zzd.zzg(zzkuVar.zzs.zzg().zza());
                        zzd.zze(1L);
                        com.google.android.gms.internal.measurement.zzgh zzaA = zzd.zzaA();
                        int i34 = 0;
                        while (true) {
                            if (i34 < zzfxVar5.zzb()) {
                                if (str2.equals(zzfxVar5.zzak(i34).zzf())) {
                                    zzfxVar5.zzai(i34, zzaA);
                                    break;
                                }
                                i34++;
                            } else {
                                zzfxVar5.zzl(zzaA);
                                break;
                            }
                        }
                    }
                }
                zzfxVar5.zzae(RecyclerView.FOREVER_NS);
                zzfxVar5.zzN(Long.MIN_VALUE);
                for (int i35 = 0; i35 < zzfxVar5.zza(); i35++) {
                    com.google.android.gms.internal.measurement.zzfo zze4 = zzfxVar5.zze(i35);
                    if (zze4.zzd() < zzfxVar5.zzd()) {
                        zzfxVar5.zzae(zze4.zzd());
                    }
                    if (zze4.zzd() > zzfxVar5.zzc()) {
                        zzfxVar5.zzN(zze4.zzd());
                    }
                }
                zzfxVar5.zzv();
                zzfxVar5.zzn();
                zzz zzzVar = this.zzh;
                zzak(zzzVar);
                zzfxVar5.zzf(zzzVar.zza(zzfxVar5.zzal(), zzfxVar5.zzao(), zzfxVar5.zzap(), Long.valueOf(zzfxVar5.zzd()), Long.valueOf(zzfxVar5.zzc())));
                if (zzg().zzw(zzkrVar3.zza.zzy())) {
                    HashMap hashMap = new HashMap();
                    ArrayList arrayList2 = new ArrayList();
                    SecureRandom zzF = zzv().zzF();
                    int i36 = 0;
                    while (i36 < zzfxVar5.zza()) {
                        com.google.android.gms.internal.measurement.zzfn zzbv5 = zzfxVar5.zze(i36).zzbv();
                        if (zzbv5.zzo().equals("_ep")) {
                            zzak(this.zzi);
                            String str18 = (String) zzku.zzD(zzbv5.zzaA(), "_en");
                            zzap zzapVar2 = (zzap) hashMap.get(str18);
                            if (zzapVar2 == null) {
                                zzaj zzajVar8 = this.zze;
                                zzak(zzajVar8);
                                zzapVar2 = zzajVar8.zzn(zzkrVar3.zza.zzy(), (String) Preconditions.checkNotNull(str18));
                                if (zzapVar2 != null) {
                                    hashMap.put(str18, zzapVar2);
                                }
                            }
                            if (zzapVar2 != null && zzapVar2.zzi == null) {
                                Long l12 = zzapVar2.zzj;
                                if (l12 != null && l12.longValue() > 1) {
                                    zzak(this.zzi);
                                    zzku.zzA(zzbv5, "_sr", zzapVar2.zzj);
                                }
                                Boolean bool = zzapVar2.zzk;
                                if (bool != null && bool.booleanValue()) {
                                    zzak(this.zzi);
                                    zzku.zzA(zzbv5, "_efs", 1L);
                                }
                                arrayList2.add(zzbv5.zzaA());
                            }
                            zzfxVar5.zzO(i36, zzbv5);
                        } else {
                            zzfm zzfmVar6 = this.zzc;
                            zzak(zzfmVar6);
                            String zzy = zzkrVar3.zza.zzy();
                            String zza2 = zzfmVar6.zza(zzy, "measurement.account.time_zone_offset_minutes");
                            if (!TextUtils.isEmpty(zza2)) {
                                try {
                                    parseLong = Long.parseLong(zza2);
                                } catch (NumberFormatException e10) {
                                    zzfmVar6.zzs.zzay().zzk().zzc("Unable to parse timezone offset. appId", zzel.zzn(zzy), e10);
                                }
                                long zzr2 = zzv().zzr(zzbv5.zzc(), parseLong);
                                com.google.android.gms.internal.measurement.zzfo zzaA2 = zzbv5.zzaA();
                                long j15 = parseLong;
                                Long l13 = 1L;
                                if (!TextUtils.isEmpty("_dbg")) {
                                    Iterator<com.google.android.gms.internal.measurement.zzfs> it3 = zzaA2.zzi().iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            break;
                                        }
                                        com.google.android.gms.internal.measurement.zzfs next = it3.next();
                                        Iterator<com.google.android.gms.internal.measurement.zzfs> it4 = it3;
                                        if (!"_dbg".equals(next.zzg())) {
                                            it3 = it4;
                                        } else if (l13.equals(Long.valueOf(next.zzd()))) {
                                            zzc = 1;
                                        }
                                    }
                                }
                                zzfm zzfmVar7 = this.zzc;
                                zzak(zzfmVar7);
                                zzc = zzfmVar7.zzc(zzkrVar3.zza.zzy(), zzbv5.zzo());
                                if (zzc > 0) {
                                    zzay().zzk().zzc("Sample rate must be positive. event, rate", zzbv5.zzo(), Integer.valueOf(zzc));
                                    arrayList2.add(zzbv5.zzaA());
                                    zzfxVar5.zzO(i36, zzbv5);
                                } else {
                                    zzap zzapVar3 = (zzap) hashMap.get(zzbv5.zzo());
                                    if (zzapVar3 == null) {
                                        zzaj zzajVar9 = this.zze;
                                        zzak(zzajVar9);
                                        zzapVar3 = zzajVar9.zzn(zzkrVar3.zza.zzy(), zzbv5.zzo());
                                        if (zzapVar3 == null) {
                                            j13 = zzr2;
                                            zzay().zzk().zzc("Event being bundled has no eventAggregate. appId, eventName", zzkrVar3.zza.zzy(), zzbv5.zzo());
                                            zzapVar3 = new zzap(zzkrVar3.zza.zzy(), zzbv5.zzo(), 1L, 1L, 1L, zzbv5.zzc(), 0L, null, null, null, null);
                                            zzak(this.zzi);
                                            Long l14 = (Long) zzku.zzD(zzbv5.zzaA(), "_eid");
                                            Boolean valueOf2 = Boolean.valueOf(l14 == null);
                                            if (zzc != 1) {
                                                arrayList2.add(zzbv5.zzaA());
                                                if (valueOf2.booleanValue() && (zzapVar3.zzi != null || zzapVar3.zzj != null || zzapVar3.zzk != null)) {
                                                    hashMap.put(zzbv5.zzo(), zzapVar3.zza(null, null, null));
                                                }
                                                zzfxVar5.zzO(i36, zzbv5);
                                            } else {
                                                if (zzF.nextInt(zzc) == 0) {
                                                    zzak(this.zzi);
                                                    Long valueOf3 = Long.valueOf(zzc);
                                                    zzku.zzA(zzbv5, "_sr", valueOf3);
                                                    arrayList2.add(zzbv5.zzaA());
                                                    if (valueOf2.booleanValue()) {
                                                        zzapVar3 = zzapVar3.zza(null, valueOf3, null);
                                                    }
                                                    hashMap.put(zzbv5.zzo(), zzapVar3.zzb(zzbv5.zzc(), j13));
                                                    zzkrVar2 = zzkrVar3;
                                                    secureRandom = zzF;
                                                } else {
                                                    secureRandom = zzF;
                                                    long j16 = j13;
                                                    Long l15 = zzapVar3.zzh;
                                                    if (l15 != null) {
                                                        zzfxVar = zzfxVar5;
                                                        zzapVar = zzapVar3;
                                                        l10 = l14;
                                                        zzkrVar2 = zzkrVar3;
                                                        zzr = l15.longValue();
                                                    } else {
                                                        zzfxVar = zzfxVar5;
                                                        zzkrVar2 = zzkrVar3;
                                                        zzapVar = zzapVar3;
                                                        l10 = l14;
                                                        zzr = zzv().zzr(zzbv5.zzb(), j15);
                                                    }
                                                    if (zzr != j16) {
                                                        zzak(this.zzi);
                                                        zzku.zzA(zzbv5, "_efs", 1L);
                                                        zzak(this.zzi);
                                                        Long valueOf4 = Long.valueOf(zzc);
                                                        zzku.zzA(zzbv5, "_sr", valueOf4);
                                                        arrayList2.add(zzbv5.zzaA());
                                                        hashMap.put(zzbv5.zzo(), (valueOf2.booleanValue() ? zzapVar.zza(null, valueOf4, Boolean.TRUE) : zzapVar).zzb(zzbv5.zzc(), j16));
                                                    } else {
                                                        zzap zzapVar4 = zzapVar;
                                                        if (valueOf2.booleanValue()) {
                                                            hashMap.put(zzbv5.zzo(), zzapVar4.zza(l10, null, null));
                                                        }
                                                    }
                                                    zzfxVar5 = zzfxVar;
                                                }
                                                zzfxVar5.zzO(i36, zzbv5);
                                                i36++;
                                                zzF = secureRandom;
                                                zzkrVar3 = zzkrVar2;
                                            }
                                        }
                                    }
                                    j13 = zzr2;
                                    zzak(this.zzi);
                                    Long l142 = (Long) zzku.zzD(zzbv5.zzaA(), "_eid");
                                    Boolean valueOf22 = Boolean.valueOf(l142 == null);
                                    if (zzc != 1) {
                                    }
                                }
                            }
                            parseLong = 0;
                            long zzr22 = zzv().zzr(zzbv5.zzc(), parseLong);
                            com.google.android.gms.internal.measurement.zzfo zzaA22 = zzbv5.zzaA();
                            long j152 = parseLong;
                            Long l132 = 1L;
                            if (!TextUtils.isEmpty("_dbg")) {
                            }
                            zzfm zzfmVar72 = this.zzc;
                            zzak(zzfmVar72);
                            zzc = zzfmVar72.zzc(zzkrVar3.zza.zzy(), zzbv5.zzo());
                            if (zzc > 0) {
                            }
                        }
                        zzkrVar2 = zzkrVar3;
                        secureRandom = zzF;
                        i36++;
                        zzF = secureRandom;
                        zzkrVar3 = zzkrVar2;
                    }
                    zzkr zzkrVar4 = zzkrVar3;
                    if (arrayList2.size() < zzfxVar5.zza()) {
                        zzfxVar5.zzp();
                        zzfxVar5.zzg(arrayList2);
                    }
                    for (Map.Entry entry : hashMap.entrySet()) {
                        zzaj zzajVar10 = this.zze;
                        zzak(zzajVar10);
                        zzajVar10.zzF((zzap) entry.getValue());
                    }
                    zzkrVar = zzkrVar4;
                } else {
                    zzkrVar = zzkrVar3;
                }
                String zzy2 = zzkrVar.zza.zzy();
                zzaj zzajVar11 = this.zze;
                zzak(zzajVar11);
                zzg zzj2 = zzajVar11.zzj(zzy2);
                if (zzj2 == null) {
                    zzay().zzd().zzb("Bundling raw events w/o app info. appId", zzel.zzn(zzkrVar.zza.zzy()));
                } else if (zzfxVar5.zza() > 0) {
                    long zzn3 = zzj2.zzn();
                    if (zzn3 != 0) {
                        zzfxVar5.zzY(zzn3);
                    } else {
                        zzfxVar5.zzs();
                    }
                    long zzp = zzj2.zzp();
                    if (zzp != 0) {
                        zzn3 = zzp;
                    }
                    if (zzn3 != 0) {
                        zzfxVar5.zzZ(zzn3);
                    } else {
                        zzfxVar5.zzt();
                    }
                    zzj2.zzE();
                    zzfxVar5.zzF((int) zzj2.zzo());
                    zzj2.zzad(zzfxVar5.zzd());
                    zzj2.zzab(zzfxVar5.zzc());
                    String zzs2 = zzj2.zzs();
                    if (zzs2 != null) {
                        zzfxVar5.zzT(zzs2);
                    } else {
                        zzfxVar5.zzq();
                    }
                    zzaj zzajVar12 = this.zze;
                    zzak(zzajVar12);
                    zzajVar12.zzE(zzj2);
                }
                if (zzfxVar5.zza() > 0) {
                    this.zzn.zzaw();
                    zzfm zzfmVar8 = this.zzc;
                    zzak(zzfmVar8);
                    com.google.android.gms.internal.measurement.zzfc zze5 = zzfmVar8.zze(zzkrVar.zza.zzy());
                    try {
                        try {
                            if (zze5 != null && zze5.zzq()) {
                                zzfxVar5.zzH(zze5.zzc());
                                zzajVar = this.zze;
                                zzak(zzajVar);
                                zzfyVar = (com.google.android.gms.internal.measurement.zzfy) zzfxVar5.zzaA();
                                zzajVar.zzg();
                                zzajVar.zzY();
                                Preconditions.checkNotNull(zzfyVar);
                                Preconditions.checkNotEmpty(zzfyVar.zzy());
                                Preconditions.checkState(zzfyVar.zzbc());
                                zzajVar.zzA();
                                currentTimeMillis = zzajVar.zzs.zzav().currentTimeMillis();
                                zzm = zzfyVar.zzm();
                                zzajVar.zzs.zzf();
                                if (zzm >= currentTimeMillis - zzaf.zzA()) {
                                    long zzm2 = zzfyVar.zzm();
                                    zzajVar.zzs.zzf();
                                }
                                zzajVar.zzs.zzay().zzk().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzel.zzn(zzfyVar.zzy()), Long.valueOf(currentTimeMillis), Long.valueOf(zzfyVar.zzm()));
                                byte[] zzbs = zzfyVar.zzbs();
                                zzku zzkuVar2 = zzajVar.zzf.zzi;
                                zzak(zzkuVar2);
                                byte[] zzz = zzkuVar2.zzz(zzbs);
                                zzajVar.zzs.zzay().zzj().zzb("Saving bundle, size", Integer.valueOf(zzz.length));
                                contentValues = new ContentValues();
                                contentValues.put("app_id", zzfyVar.zzy());
                                contentValues.put("bundle_end_timestamp", Long.valueOf(zzfyVar.zzm()));
                                contentValues.put("data", zzz);
                                contentValues.put("has_realtime", Integer.valueOf(i22));
                                if (zzfyVar.zzbi()) {
                                    contentValues.put("retry_count", Integer.valueOf(zzfyVar.zze()));
                                }
                                if (zzajVar.zzh().insert("queue", null, contentValues) == -1) {
                                    zzajVar.zzs.zzay().zzd().zzb("Failed to insert bundle (got -1). appId", zzel.zzn(zzfyVar.zzy()));
                                }
                            }
                            if (zzajVar.zzh().insert("queue", null, contentValues) == -1) {
                            }
                        } catch (SQLiteException e11) {
                            zzajVar.zzs.zzay().zzd().zzc("Error storing bundle. appId", zzel.zzn(zzfyVar.zzy()), e11);
                        }
                        zzku zzkuVar22 = zzajVar.zzf.zzi;
                        zzak(zzkuVar22);
                        byte[] zzz2 = zzkuVar22.zzz(zzbs);
                        zzajVar.zzs.zzay().zzj().zzb("Saving bundle, size", Integer.valueOf(zzz2.length));
                        contentValues = new ContentValues();
                        contentValues.put("app_id", zzfyVar.zzy());
                        contentValues.put("bundle_end_timestamp", Long.valueOf(zzfyVar.zzm()));
                        contentValues.put("data", zzz2);
                        contentValues.put("has_realtime", Integer.valueOf(i22));
                        if (zzfyVar.zzbi()) {
                        }
                    } catch (IOException e12) {
                        zzajVar.zzs.zzay().zzd().zzc("Data loss. Failed to serialize bundle. appId", zzel.zzn(zzfyVar.zzy()), e12);
                    }
                    if (TextUtils.isEmpty(zzkrVar.zza.zzH())) {
                        zzfxVar5.zzH(-1L);
                    } else {
                        zzay().zzk().zzb("Did not find measurement config or missing version info. appId", zzel.zzn(zzkrVar.zza.zzy()));
                    }
                    zzajVar = this.zze;
                    zzak(zzajVar);
                    zzfyVar = (com.google.android.gms.internal.measurement.zzfy) zzfxVar5.zzaA();
                    zzajVar.zzg();
                    zzajVar.zzY();
                    Preconditions.checkNotNull(zzfyVar);
                    Preconditions.checkNotEmpty(zzfyVar.zzy());
                    Preconditions.checkState(zzfyVar.zzbc());
                    zzajVar.zzA();
                    currentTimeMillis = zzajVar.zzs.zzav().currentTimeMillis();
                    zzm = zzfyVar.zzm();
                    zzajVar.zzs.zzf();
                    if (zzm >= currentTimeMillis - zzaf.zzA()) {
                    }
                    zzajVar.zzs.zzay().zzk().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzel.zzn(zzfyVar.zzy()), Long.valueOf(currentTimeMillis), Long.valueOf(zzfyVar.zzm()));
                    byte[] zzbs2 = zzfyVar.zzbs();
                }
                zzaj zzajVar13 = this.zze;
                zzak(zzajVar13);
                zzajVar13.zzx(zzkrVar.zzb);
                zzaj zzajVar14 = this.zze;
                zzak(zzajVar14);
                try {
                    zzajVar14.zzh().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{zzy2, zzy2});
                } catch (SQLiteException e13) {
                    zzajVar14.zzs.zzay().zzd().zzc("Failed to remove unused event metadata. appId", zzel.zzn(zzy2), e13);
                }
                zzaj zzajVar15 = this.zze;
                zzak(zzajVar15);
                zzajVar15.zzD();
                zzaj zzajVar16 = this.zze;
                zzak(zzajVar16);
                zzajVar16.zzy();
                return true;
            }
            zzaj zzajVar17 = this.zze;
            zzak(zzajVar17);
            zzajVar17.zzD();
            zzaj zzajVar18 = this.zze;
            zzak(zzajVar18);
            zzajVar18.zzy();
            return false;
        } catch (Throwable th) {
            zzaj zzajVar19 = this.zze;
            zzak(zzajVar19);
            zzajVar19.zzy();
            throw th;
        }
    }

    private final boolean zzai() {
        zzaz().zzg();
        zzB();
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        if (zzajVar.zzH()) {
            return true;
        }
        zzaj zzajVar2 = this.zze;
        zzak(zzajVar2);
        return !TextUtils.isEmpty(zzajVar2.zzr());
    }

    private final boolean zzaj(com.google.android.gms.internal.measurement.zzfn zzfnVar, com.google.android.gms.internal.measurement.zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzC = zzku.zzC(zzfnVar.zzaA(), "_sc");
        String zzh = zzC == null ? null : zzC.zzh();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzC2 = zzku.zzC(zzfnVar2.zzaA(), "_pc");
        String zzh2 = zzC2 != null ? zzC2.zzh() : null;
        if (zzh2 == null || !zzh2.equals(zzh)) {
            return false;
        }
        zzae(zzfnVar, zzfnVar2);
        return true;
    }

    private static final zzki zzak(zzki zzkiVar) {
        if (zzkiVar != null) {
            if (zzkiVar.zzaa()) {
                return zzkiVar;
            }
            String valueOf = String.valueOf(zzkiVar.getClass());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 27);
            sb2.append("Component not initialized: ");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }
        throw new IllegalStateException("Upload Component not created");
    }

    public static zzks zzt(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzks.class) {
                if (zzb == null) {
                    zzb = new zzks((zzkt) Preconditions.checkNotNull(new zzkt(context)), null);
                }
            }
        }
        return zzb;
    }

    public static /* bridge */ /* synthetic */ void zzy(zzks zzksVar, zzkt zzktVar) {
        zzksVar.zzaz().zzg();
        zzksVar.zzm = new zzfd(zzksVar);
        zzaj zzajVar = new zzaj(zzksVar);
        zzajVar.zzZ();
        zzksVar.zze = zzajVar;
        zzksVar.zzg().zzq((zzae) Preconditions.checkNotNull(zzksVar.zzc));
        zzjp zzjpVar = new zzjp(zzksVar);
        zzjpVar.zzZ();
        zzksVar.zzk = zzjpVar;
        zzz zzzVar = new zzz(zzksVar);
        zzzVar.zzZ();
        zzksVar.zzh = zzzVar;
        zzif zzifVar = new zzif(zzksVar);
        zzifVar.zzZ();
        zzksVar.zzj = zzifVar;
        zzkg zzkgVar = new zzkg(zzksVar);
        zzkgVar.zzZ();
        zzksVar.zzg = zzkgVar;
        zzksVar.zzf = new zzet(zzksVar);
        if (zzksVar.zzr != zzksVar.zzs) {
            zzksVar.zzay().zzd().zzc("Not all upload components initialized", Integer.valueOf(zzksVar.zzr), Integer.valueOf(zzksVar.zzs));
        }
        zzksVar.zzo = true;
    }

    @VisibleForTesting
    public final void zzA() {
        zzaz().zzg();
        zzB();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzX()) {
            FileChannel fileChannel = this.zzx;
            zzaz().zzg();
            int i10 = 0;
            if (fileChannel != null && fileChannel.isOpen()) {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int read = fileChannel.read(allocate);
                    if (read == 4) {
                        allocate.flip();
                        i10 = allocate.getInt();
                    } else if (read != -1) {
                        zzay().zzk().zzb("Unexpected data length. Bytes read", Integer.valueOf(read));
                    }
                } catch (IOException e10) {
                    zzay().zzd().zzb("Failed to read from channel", e10);
                }
            } else {
                zzay().zzd().zza("Bad channel to read from");
            }
            int zzi = this.zzn.zzh().zzi();
            zzaz().zzg();
            if (i10 > zzi) {
                zzay().zzd().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i10), Integer.valueOf(zzi));
                return;
            }
            if (i10 < zzi) {
                FileChannel fileChannel2 = this.zzx;
                zzaz().zzg();
                if (fileChannel2 != null && fileChannel2.isOpen()) {
                    ByteBuffer allocate2 = ByteBuffer.allocate(4);
                    allocate2.putInt(zzi);
                    allocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        if (zzg().zzs(null, zzdy.zzal) && Build.VERSION.SDK_INT <= 19) {
                            fileChannel2.position(0L);
                        }
                        fileChannel2.write(allocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzay().zzd().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzay().zzj().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i10), Integer.valueOf(zzi));
                        return;
                    } catch (IOException e11) {
                        zzay().zzd().zzb("Failed to write to channel", e11);
                    }
                } else {
                    zzay().zzd().zza("Bad channel to read from");
                }
                zzay().zzd().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i10), Integer.valueOf(zzi));
            }
        }
    }

    public final void zzB() {
        if (!this.zzo) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final void zzC(zzg zzgVar) {
        zzaz().zzg();
        zzot.zzc();
        zzaf zzg = zzg();
        String zzt = zzgVar.zzt();
        zzdx<Boolean> zzdxVar = zzdy.zzad;
        if (zzg.zzs(zzt, zzdxVar)) {
            if (TextUtils.isEmpty(zzgVar.zzz()) && TextUtils.isEmpty(zzgVar.zzy()) && TextUtils.isEmpty(zzgVar.zzr())) {
                zzH((String) Preconditions.checkNotNull(zzgVar.zzt()), HttpStatus.SC_NO_CONTENT, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzgVar.zzz()) && TextUtils.isEmpty(zzgVar.zzr())) {
            zzH((String) Preconditions.checkNotNull(zzgVar.zzt()), HttpStatus.SC_NO_CONTENT, null, null, null);
            return;
        }
        zzkj zzkjVar = this.zzl;
        Uri.Builder builder = new Uri.Builder();
        String zzz = zzgVar.zzz();
        if (TextUtils.isEmpty(zzz)) {
            zzot.zzc();
            if (zzkjVar.zzs.zzf().zzs(zzgVar.zzt(), zzdxVar)) {
                zzz = zzgVar.zzy();
                if (TextUtils.isEmpty(zzz)) {
                    zzz = zzgVar.zzr();
                }
            } else {
                zzz = zzgVar.zzr();
            }
        }
        a aVar = null;
        Uri.Builder encodedAuthority = builder.scheme(zzdy.zzd.zza(null)).encodedAuthority(zzdy.zze.zza(null));
        String valueOf = String.valueOf(zzz);
        Uri.Builder appendQueryParameter = encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.zzu()).appendQueryParameter("platform", "android");
        zzkjVar.zzs.zzf().zzh();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(43042L));
        zzpo.zzc();
        if (zzkjVar.zzs.zzf().zzs(zzgVar.zzt(), zzdy.zzav)) {
            builder.appendQueryParameter("runtime_version", "0");
        }
        String uri = builder.build().toString();
        try {
            String str = (String) Preconditions.checkNotNull(zzgVar.zzt());
            URL url = new URL(uri);
            zzay().zzj().zzb("Fetching remote configuration", str);
            zzfm zzfmVar = this.zzc;
            zzak(zzfmVar);
            com.google.android.gms.internal.measurement.zzfc zze = zzfmVar.zze(str);
            zzfm zzfmVar2 = this.zzc;
            zzak(zzfmVar2);
            String zzf = zzfmVar2.zzf(str);
            if (zze != null && !TextUtils.isEmpty(zzf)) {
                aVar = new a();
                aVar.put(HttpHeaders.IF_MODIFIED_SINCE, zzf);
            }
            this.zzt = true;
            zzer zzerVar = this.zzd;
            zzak(zzerVar);
            zzkm zzkmVar = new zzkm(this);
            zzerVar.zzg();
            zzerVar.zzY();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkmVar);
            zzerVar.zzs.zzaz().zzo(new zzeq(zzerVar, str, url, null, aVar, zzkmVar));
        } catch (MalformedURLException unused) {
            zzay().zzd().zzc("Failed to parse config URL. Not fetching. appId", zzel.zzn(zzgVar.zzt()), uri);
        }
    }

    public final void zzD(zzat zzatVar, zzp zzpVar) {
        zzat zzatVar2;
        List<zzab> zzt;
        List<zzab> zzt2;
        List<zzab> zzt3;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaz().zzg();
        zzB();
        String str = zzpVar.zza;
        zzat zzatVar3 = zzatVar;
        long j10 = zzatVar3.zzd;
        zzpx.zzc();
        if (zzg().zzs(null, zzdy.zzaB)) {
            zzem zzb2 = zzem.zzb(zzatVar);
            zzaz().zzg();
            zzkz.zzJ(null, zzb2.zzd, false);
            zzatVar3 = zzb2.zza();
        }
        zzak(this.zzi);
        if (zzku.zzB(zzatVar3, zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            List<String> list = zzpVar.zzt;
            if (list == null) {
                zzatVar2 = zzatVar3;
            } else if (list.contains(zzatVar3.zza)) {
                Bundle zzc = zzatVar3.zzb.zzc();
                zzc.putLong("ga_safelisted", 1L);
                zzatVar2 = new zzat(zzatVar3.zza, new zzar(zzc), zzatVar3.zzc, zzatVar3.zzd);
            } else {
                zzay().zzc().zzd("Dropping non-safelisted event. appId, event name, origin", str, zzatVar3.zza, zzatVar3.zzc);
                return;
            }
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                Preconditions.checkNotEmpty(str);
                zzajVar2.zzg();
                zzajVar2.zzY();
                if (j10 < 0) {
                    zzajVar2.zzs.zzay().zzk().zzc("Invalid time querying timed out conditional properties", zzel.zzn(str), Long.valueOf(j10));
                    zzt = Collections.emptyList();
                } else {
                    zzt = zzajVar2.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j10)});
                }
                for (zzab zzabVar : zzt) {
                    if (zzabVar != null) {
                        zzay().zzj().zzd("User property timed out", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb), zzabVar.zzc.zza());
                        zzat zzatVar4 = zzabVar.zzg;
                        if (zzatVar4 != null) {
                            zzW(new zzat(zzatVar4, j10), zzpVar);
                        }
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        zzajVar3.zza(str, zzabVar.zzc.zzb);
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                Preconditions.checkNotEmpty(str);
                zzajVar4.zzg();
                zzajVar4.zzY();
                if (j10 < 0) {
                    zzajVar4.zzs.zzay().zzk().zzc("Invalid time querying expired conditional properties", zzel.zzn(str), Long.valueOf(j10));
                    zzt2 = Collections.emptyList();
                } else {
                    zzt2 = zzajVar4.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j10)});
                }
                ArrayList arrayList = new ArrayList(zzt2.size());
                for (zzab zzabVar2 : zzt2) {
                    if (zzabVar2 != null) {
                        zzay().zzj().zzd("User property expired", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                        zzaj zzajVar5 = this.zze;
                        zzak(zzajVar5);
                        zzajVar5.zzB(str, zzabVar2.zzc.zzb);
                        zzat zzatVar5 = zzabVar2.zzk;
                        if (zzatVar5 != null) {
                            arrayList.add(zzatVar5);
                        }
                        zzaj zzajVar6 = this.zze;
                        zzak(zzajVar6);
                        zzajVar6.zza(str, zzabVar2.zzc.zzb);
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    zzW(new zzat((zzat) it2.next(), j10), zzpVar);
                }
                zzaj zzajVar7 = this.zze;
                zzak(zzajVar7);
                String str2 = zzatVar2.zza;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zzajVar7.zzg();
                zzajVar7.zzY();
                if (j10 < 0) {
                    zzajVar7.zzs.zzay().zzk().zzd("Invalid time querying triggered conditional properties", zzel.zzn(str), zzajVar7.zzs.zzj().zzd(str2), Long.valueOf(j10));
                    zzt3 = Collections.emptyList();
                } else {
                    zzt3 = zzajVar7.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j10)});
                }
                ArrayList arrayList2 = new ArrayList(zzt3.size());
                for (zzab zzabVar3 : zzt3) {
                    if (zzabVar3 != null) {
                        zzkv zzkvVar = zzabVar3.zzc;
                        zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzabVar3.zza), zzabVar3.zzb, zzkvVar.zzb, j10, Preconditions.checkNotNull(zzkvVar.zza()));
                        zzaj zzajVar8 = this.zze;
                        zzak(zzajVar8);
                        if (zzajVar8.zzN(zzkxVar)) {
                            zzay().zzj().zzd("User property triggered", zzabVar3.zza, this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                        } else {
                            zzay().zzd().zzd("Too many active user properties, ignoring", zzel.zzn(zzabVar3.zza), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                        }
                        zzat zzatVar6 = zzabVar3.zzi;
                        if (zzatVar6 != null) {
                            arrayList2.add(zzatVar6);
                        }
                        zzabVar3.zzc = new zzkv(zzkxVar);
                        zzabVar3.zze = true;
                        zzaj zzajVar9 = this.zze;
                        zzak(zzajVar9);
                        zzajVar9.zzM(zzabVar3);
                    }
                }
                zzW(zzatVar2, zzpVar);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    zzW(new zzat((zzat) it3.next(), j10), zzpVar);
                }
                zzaj zzajVar10 = this.zze;
                zzak(zzajVar10);
                zzajVar10.zzD();
            } finally {
                zzaj zzajVar11 = this.zze;
                zzak(zzajVar11);
                zzajVar11.zzy();
            }
        }
    }

    public final void zzE(zzat zzatVar, String str) {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzj = zzajVar.zzj(str);
        if (zzj != null && !TextUtils.isEmpty(zzj.zzw())) {
            Boolean zzab = zzab(zzj);
            if (zzab == null) {
                if (!"_ui".equals(zzatVar.zza)) {
                    zzay().zzk().zzb("Could not find package. appId", zzel.zzn(str));
                }
            } else if (!zzab.booleanValue()) {
                zzay().zzd().zzb("App version does not match; dropping event. appId", zzel.zzn(str));
                return;
            }
            String zzz = zzj.zzz();
            String zzw = zzj.zzw();
            long zzb2 = zzj.zzb();
            String zzv = zzj.zzv();
            long zzm = zzj.zzm();
            long zzj2 = zzj.zzj();
            boolean zzaj = zzj.zzaj();
            String zzx = zzj.zzx();
            long zza = zzj.zza();
            boolean zzai = zzj.zzai();
            String zzr = zzj.zzr();
            Boolean zzq = zzj.zzq();
            long zzk = zzj.zzk();
            List<String> zzC = zzj.zzC();
            zzot.zzc();
            zzF(zzatVar, new zzp(str, zzz, zzw, zzb2, zzv, zzm, zzj2, (String) null, zzaj, false, zzx, zza, 0L, 0, zzai, false, zzr, zzq, zzk, zzC, zzg().zzs(zzj.zzt(), zzdy.zzad) ? zzj.zzy() : null, zzh(str).zzi()));
            return;
        }
        zzay().zzc().zzb("No app data available; dropping event", str);
    }

    public final void zzF(zzat zzatVar, zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzem zzb2 = zzem.zzb(zzatVar);
        zzkz zzv = zzv();
        Bundle bundle = zzb2.zzd;
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzv.zzK(bundle, zzajVar.zzi(zzpVar.zza));
        zzv().zzL(zzb2, zzg().zzd(zzpVar.zza));
        zzat zza = zzb2.zza();
        if ("_cmp".equals(zza.zza) && "referrer API v2".equals(zza.zzb.zzg("_cis"))) {
            String zzg = zza.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(zzg)) {
                zzU(new zzkv("_lgclid", zza.zzd, zzg, "auto"), zzpVar);
            }
        }
        zzD(zza, zzpVar);
    }

    public final void zzG() {
        this.zzs++;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:5:0x002c, B:13:0x004a, B:14:0x015e, B:25:0x0064, B:29:0x00b6, B:30:0x00a7, B:33:0x00be, B:35:0x00ca, B:37:0x00d0, B:41:0x00dd, B:44:0x0112, B:46:0x0127, B:47:0x0146, B:49:0x0151, B:51:0x0157, B:52:0x015b, B:53:0x0135, B:54:0x00f6, B:56:0x0101), top: B:4:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0127 A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:5:0x002c, B:13:0x004a, B:14:0x015e, B:25:0x0064, B:29:0x00b6, B:30:0x00a7, B:33:0x00be, B:35:0x00ca, B:37:0x00d0, B:41:0x00dd, B:44:0x0112, B:46:0x0127, B:47:0x0146, B:49:0x0151, B:51:0x0157, B:52:0x015b, B:53:0x0135, B:54:0x00f6, B:56:0x0101), top: B:4:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0135 A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:5:0x002c, B:13:0x004a, B:14:0x015e, B:25:0x0064, B:29:0x00b6, B:30:0x00a7, B:33:0x00be, B:35:0x00ca, B:37:0x00d0, B:41:0x00dd, B:44:0x0112, B:46:0x0127, B:47:0x0146, B:49:0x0151, B:51:0x0157, B:52:0x015b, B:53:0x0135, B:54:0x00f6, B:56:0x0101), top: B:4:0x002c, outer: #0 }] */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzH(String str, int i10, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        boolean z10;
        zzaj zzajVar;
        zzer zzerVar;
        zzaz().zzg();
        zzB();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzt = false;
                zzac();
            }
        }
        zzej zzj = zzay().zzj();
        Integer valueOf = Integer.valueOf(bArr.length);
        zzj.zzb("onConfigFetched. Response size", valueOf);
        zzaj zzajVar2 = this.zze;
        zzak(zzajVar2);
        zzajVar2.zzw();
        try {
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzg zzj2 = zzajVar3.zzj(str);
            if (i10 != 200 && i10 != 204) {
                if (i10 == 304) {
                    i10 = HttpStatus.SC_NOT_MODIFIED;
                }
                z10 = false;
                if (zzj2 == null) {
                    zzay().zzk().zzb("App does not exist in onConfigFetched. appId", zzel.zzn(str));
                } else {
                    if (!z10 && i10 != 404) {
                        zzj2.zzV(zzav().currentTimeMillis());
                        zzaj zzajVar4 = this.zze;
                        zzak(zzajVar4);
                        zzajVar4.zzE(zzj2);
                        zzay().zzj().zzc("Fetching config failed. code, error", Integer.valueOf(i10), th);
                        zzfm zzfmVar = this.zzc;
                        zzak(zzfmVar);
                        zzfmVar.zzi(str);
                        this.zzk.zzd.zzb(zzav().currentTimeMillis());
                        if (i10 == 503 || i10 == 429) {
                            this.zzk.zzb.zzb(zzav().currentTimeMillis());
                        }
                        zzaf();
                    }
                    List<String> list = map != null ? map.get(HttpHeaders.LAST_MODIFIED) : null;
                    String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
                    if (i10 != 404 && i10 != 304) {
                        zzfm zzfmVar2 = this.zzc;
                        zzak(zzfmVar2);
                        if (!zzfmVar2.zzq(str, bArr, str2)) {
                            zzajVar = this.zze;
                            zzak(zzajVar);
                            zzajVar.zzy();
                        }
                        zzj2.zzM(zzav().currentTimeMillis());
                        zzaj zzajVar5 = this.zze;
                        zzak(zzajVar5);
                        zzajVar5.zzE(zzj2);
                        if (i10 != 404) {
                            zzay().zzl().zzb("Config not found. Using empty config. appId", str);
                        } else {
                            zzay().zzj().zzc("Successfully fetched config. Got network response. code, size", Integer.valueOf(i10), valueOf);
                        }
                        zzerVar = this.zzd;
                        zzak(zzerVar);
                        if (!zzerVar.zzc() && zzai()) {
                            zzV();
                        } else {
                            zzaf();
                        }
                    }
                    zzfm zzfmVar3 = this.zzc;
                    zzak(zzfmVar3);
                    if (zzfmVar3.zze(str) == null) {
                        zzfm zzfmVar4 = this.zzc;
                        zzak(zzfmVar4);
                        if (!zzfmVar4.zzq(str, null, null)) {
                            zzajVar = this.zze;
                            zzak(zzajVar);
                            zzajVar.zzy();
                        }
                    }
                    zzj2.zzM(zzav().currentTimeMillis());
                    zzaj zzajVar52 = this.zze;
                    zzak(zzajVar52);
                    zzajVar52.zzE(zzj2);
                    if (i10 != 404) {
                    }
                    zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (!zzerVar.zzc()) {
                    }
                    zzaf();
                }
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzD();
                zzajVar = this.zze;
                zzak(zzajVar);
                zzajVar.zzy();
            }
            if (th == null) {
                z10 = true;
                if (zzj2 == null) {
                }
                zzaj zzajVar62 = this.zze;
                zzak(zzajVar62);
                zzajVar62.zzD();
                zzajVar = this.zze;
                zzak(zzajVar);
                zzajVar.zzy();
            }
            z10 = false;
            if (zzj2 == null) {
            }
            zzaj zzajVar622 = this.zze;
            zzak(zzajVar622);
            zzajVar622.zzD();
            zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzy();
        } catch (Throwable th2) {
            zzaj zzajVar7 = this.zze;
            zzak(zzajVar7);
            zzajVar7.zzy();
            throw th2;
        }
    }

    public final void zzI(boolean z10) {
        zzaf();
    }

    @VisibleForTesting
    public final void zzJ(int i10, Throwable th, byte[] bArr, String str) {
        zzaj zzajVar;
        long longValue;
        zzaz().zzg();
        zzB();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzu = false;
                zzac();
            }
        }
        List<Long> list = (List) Preconditions.checkNotNull(this.zzy);
        this.zzy = null;
        if (i10 != 200) {
            if (i10 == 204) {
                i10 = HttpStatus.SC_NO_CONTENT;
            }
            zzay().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i10), th);
            this.zzk.zzd.zzb(zzav().currentTimeMillis());
            if (i10 != 503 || i10 == 429) {
                this.zzk.zzb.zzb(zzav().currentTimeMillis());
            }
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            zzajVar2.zzz(list);
            zzaf();
        }
        if (th == null) {
            try {
                this.zzk.zzc.zzb(zzav().currentTimeMillis());
                this.zzk.zzd.zzb(0L);
                zzaf();
                zzay().zzj().zzc("Successful upload. Got network response. code, size", Integer.valueOf(i10), Integer.valueOf(bArr.length));
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzajVar3.zzw();
            } catch (SQLiteException e10) {
                zzay().zzd().zzb("Database error while trying to delete uploaded bundles", e10);
                this.zza = zzav().elapsedRealtime();
                zzay().zzj().zzb("Disable upload, time", Long.valueOf(this.zza));
            }
            try {
                for (Long l10 : list) {
                    try {
                        zzajVar = this.zze;
                        zzak(zzajVar);
                        longValue = l10.longValue();
                        zzajVar.zzg();
                        zzajVar.zzY();
                    } catch (SQLiteException e11) {
                        List<Long> list2 = this.zzz;
                        if (list2 == null || !list2.contains(l10)) {
                            throw e11;
                        }
                    }
                    try {
                        if (zzajVar.zzh().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                            break;
                        }
                    } catch (SQLiteException e12) {
                        zzajVar.zzs.zzay().zzd().zzb("Failed to delete a bundle in a queue table", e12);
                        throw e12;
                        break;
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                zzajVar4.zzD();
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzy();
                this.zzz = null;
                zzer zzerVar = this.zzd;
                zzak(zzerVar);
                if (zzerVar.zzc() && zzai()) {
                    zzV();
                } else {
                    this.zzA = -1L;
                    zzaf();
                }
                this.zza = 0L;
            } catch (Throwable th2) {
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzy();
                throw th2;
            }
        }
        zzay().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i10), th);
        this.zzk.zzd.zzb(zzav().currentTimeMillis());
        if (i10 != 503) {
        }
        this.zzk.zzb.zzb(zzav().currentTimeMillis());
        zzaj zzajVar22 = this.zze;
        zzak(zzajVar22);
        zzajVar22.zzz(list);
        zzaf();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:92|93|94|(2:96|(8:98|(3:100|(2:102|(1:104))(1:123)|105)(1:124)|106|(1:108)(1:122)|109|110|111|(4:113|(1:115)|116|(1:118))))|125|110|111|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x04a4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x04a5, code lost:
    
        zzay().zzd().zzc("Application info is null, first open report might be inaccurate. appId", com.google.android.gms.measurement.internal.zzel.zzn(r3), r0);
        r9 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x04b9 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x056e A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0250 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b8 A[Catch: SQLiteException -> 0x01cc, all -> 0x059c, TRY_LEAVE, TryCatch #3 {SQLiteException -> 0x01cc, blocks: (B:36:0x0168, B:38:0x01b8), top: B:35:0x0168, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e3 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021b A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0241 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0260 A[Catch: all -> 0x059c, TRY_LEAVE, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03d0 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03fc A[Catch: all -> 0x059c, TRY_LEAVE, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x04d7 A[Catch: all -> 0x059c, TryCatch #4 {all -> 0x059c, blocks: (B:24:0x00a4, B:26:0x00b3, B:30:0x0118, B:32:0x012b, B:34:0x0141, B:36:0x0168, B:38:0x01b8, B:42:0x01cd, B:44:0x01e3, B:46:0x01ee, B:49:0x01ff, B:52:0x020d, B:55:0x0218, B:57:0x021b, B:58:0x023c, B:60:0x0241, B:62:0x0260, B:65:0x0274, B:67:0x029a, B:70:0x02a2, B:72:0x02b1, B:73:0x039e, B:75:0x03d0, B:76:0x03d3, B:78:0x03fc, B:83:0x04d7, B:84:0x04da, B:85:0x053c, B:87:0x054a, B:88:0x058b, B:93:0x0413, B:96:0x043c, B:98:0x0444, B:100:0x044e, B:104:0x0461, B:106:0x0470, B:109:0x047c, B:111:0x0494, B:121:0x04a5, B:113:0x04b9, B:115:0x04bf, B:116:0x04c6, B:118:0x04cc, B:123:0x0468, B:128:0x0426, B:129:0x02c2, B:131:0x02ef, B:132:0x0300, B:134:0x0307, B:136:0x030d, B:138:0x0317, B:140:0x031d, B:142:0x0323, B:144:0x0329, B:146:0x032e, B:151:0x0356, B:155:0x035b, B:156:0x036f, B:157:0x037f, B:158:0x038f, B:159:0x04f1, B:161:0x0525, B:162:0x0528, B:163:0x056e, B:165:0x0572, B:166:0x0250, B:171:0x00c4, B:173:0x00c8, B:176:0x00d7, B:178:0x00f3, B:180:0x00fd, B:184:0x0108), top: B:23:0x00a4, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0413 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzK(zzp zzpVar) {
        String str;
        String str2;
        int i10;
        zzg zzj;
        String str3;
        zzap zzn;
        boolean z10;
        String str4;
        long zzc;
        String str5;
        PackageInfo packageInfo;
        String str6;
        String str7;
        String str8;
        ApplicationInfo applicationInfo;
        ApplicationInfo applicationInfo2;
        boolean z11;
        boolean z12;
        String zzw;
        zzaj zzajVar;
        String zzt;
        int delete;
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        if (zzag(zzpVar)) {
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            zzg zzj2 = zzajVar2.zzj(zzpVar.zza);
            if (zzj2 != null && TextUtils.isEmpty(zzj2.zzz()) && !TextUtils.isEmpty(zzpVar.zzb)) {
                zzj2.zzM(0L);
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzajVar3.zzE(zzj2);
                zzfm zzfmVar = this.zzc;
                zzak(zzfmVar);
                zzfmVar.zzj(zzpVar.zza);
            }
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            long j10 = zzpVar.zzm;
            if (j10 == 0) {
                j10 = zzav().currentTimeMillis();
            }
            this.zzn.zzg().zzd();
            int i11 = zzpVar.zzn;
            if (i11 != 0 && i11 != 1) {
                zzay().zzk().zzc("Incorrect app type, assuming installed app. appId, appType", zzel.zzn(zzpVar.zza), Integer.valueOf(i11));
                i11 = 0;
            }
            zzaj zzajVar4 = this.zze;
            zzak(zzajVar4);
            zzajVar4.zzw();
            try {
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzkx zzp = zzajVar5.zzp(zzpVar.zza, "_npa");
                if (zzp != null && !"auto".equals(zzp.zzb)) {
                    str = "_sysu";
                    str2 = "_sys";
                    i10 = 1;
                    zzaj zzajVar6 = this.zze;
                    zzak(zzajVar6);
                    zzj = zzajVar6.zzj((String) Preconditions.checkNotNull(zzpVar.zza));
                    if (zzj != null && zzv().zzam(zzpVar.zzb, zzj.zzz(), zzpVar.zzq, zzj.zzr())) {
                        zzay().zzk().zzb("New GMP App Id passed in. Removing cached database data. appId", zzel.zzn(zzj.zzt()));
                        zzajVar = this.zze;
                        zzak(zzajVar);
                        zzt = zzj.zzt();
                        zzajVar.zzY();
                        zzajVar.zzg();
                        Preconditions.checkNotEmpty(zzt);
                        try {
                            SQLiteDatabase zzh = zzajVar.zzh();
                            String[] strArr = new String[i10];
                            strArr[0] = zzt;
                            delete = zzh.delete("events", "app_id=?", strArr) + zzh.delete("user_attributes", "app_id=?", strArr) + zzh.delete("conditional_properties", "app_id=?", strArr) + zzh.delete("apps", "app_id=?", strArr) + zzh.delete("raw_events", "app_id=?", strArr) + zzh.delete("raw_events_metadata", "app_id=?", strArr) + zzh.delete("event_filters", "app_id=?", strArr) + zzh.delete("property_filters", "app_id=?", strArr) + zzh.delete("audience_filter_values", "app_id=?", strArr) + zzh.delete("consent_settings", "app_id=?", strArr);
                            if (delete > 0) {
                                zzajVar.zzs.zzay().zzj().zzc("Deleted application data. app, records", zzt, Integer.valueOf(delete));
                            }
                        } catch (SQLiteException e10) {
                            zzajVar.zzs.zzay().zzd().zzc("Error deleting application data. appId, error", zzel.zzn(zzt), e10);
                        }
                        zzj = null;
                    }
                    if (zzj == null) {
                        if (zzj.zzb() != -2147483648L) {
                            str3 = "com.android.vending";
                            if (zzj.zzb() != zzpVar.zzj) {
                                z12 = true;
                                zzw = zzj.zzw();
                                if (((zzj.zzb() == -2147483648L || zzw == null || zzw.equals(zzpVar.zzc)) ? false : true) | z12) {
                                    Bundle bundle = new Bundle();
                                    bundle.putString("_pv", zzw);
                                    zzD(new zzat("_au", new zzar(bundle), "auto", j10), zzpVar);
                                }
                            }
                        } else {
                            str3 = "com.android.vending";
                        }
                        z12 = false;
                        zzw = zzj.zzw();
                        if (((zzj.zzb() == -2147483648L || zzw == null || zzw.equals(zzpVar.zzc)) ? false : true) | z12) {
                        }
                    } else {
                        str3 = "com.android.vending";
                    }
                    zzd(zzpVar);
                    if (i11 != 0) {
                        zzaj zzajVar7 = this.zze;
                        zzak(zzajVar7);
                        zzn = zzajVar7.zzn(zzpVar.zza, "_f");
                        z10 = false;
                    } else {
                        zzaj zzajVar8 = this.zze;
                        zzak(zzajVar8);
                        zzn = zzajVar8.zzn(zzpVar.zza, "_v");
                        z10 = true;
                    }
                    if (zzn != null) {
                        long j11 = ((j10 / 3600000) + 1) * 3600000;
                        if (!z10) {
                            zzU(new zzkv("_fot", j10, Long.valueOf(j11), "auto"), zzpVar);
                            zzaz().zzg();
                            zzfd zzfdVar = (zzfd) Preconditions.checkNotNull(this.zzm);
                            String str9 = zzpVar.zza;
                            if (str9 != null && !str9.isEmpty()) {
                                zzfdVar.zza.zzaz().zzg();
                                if (!zzfdVar.zza()) {
                                    zzfdVar.zza.zzay().zzi().zza("Install Referrer Reporter is not available");
                                } else {
                                    zzfc zzfcVar = new zzfc(zzfdVar, str9);
                                    zzfdVar.zza.zzaz().zzg();
                                    Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                    String str10 = str3;
                                    intent.setComponent(new ComponentName(str10, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                    PackageManager packageManager = zzfdVar.zza.zzau().getPackageManager();
                                    if (packageManager == null) {
                                        zzfdVar.zza.zzay().zzm().zza("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                    } else {
                                        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                                        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                                            if (serviceInfo != null) {
                                                String str11 = serviceInfo.packageName;
                                                if (serviceInfo.name != null && str10.equals(str11) && zzfdVar.zza()) {
                                                    try {
                                                        zzfdVar.zza.zzay().zzj().zzb("Install Referrer Service is", true != ConnectionTracker.getInstance().bindService(zzfdVar.zza.zzau(), new Intent(intent), zzfcVar, 1) ? "not available" : "available");
                                                    } catch (RuntimeException e11) {
                                                        zzfdVar.zza.zzay().zzd().zzb("Exception occurred while binding to Install Referrer Service", e11.getMessage());
                                                    }
                                                } else {
                                                    zzfdVar.zza.zzay().zzk().zza("Play Store version 8.3.73 or higher required for Install Referrer");
                                                }
                                            }
                                        } else {
                                            zzfdVar.zza.zzay().zzi().zza("Play Service for fetching Install Referrer is unavailable on device");
                                        }
                                    }
                                }
                                zzaz().zzg();
                                zzB();
                                Bundle bundle2 = new Bundle();
                                bundle2.putLong("_c", 1L);
                                bundle2.putLong("_r", 1L);
                                bundle2.putLong("_uwa", 0L);
                                bundle2.putLong("_pfo", 0L);
                                String str12 = str2;
                                bundle2.putLong(str12, 0L);
                                String str13 = str;
                                bundle2.putLong(str13, 0L);
                                bundle2.putLong("_et", 1L);
                                if (zzpVar.zzp) {
                                    bundle2.putLong("_dac", 1L);
                                }
                                String str14 = (String) Preconditions.checkNotNull(zzpVar.zza);
                                zzaj zzajVar9 = this.zze;
                                zzak(zzajVar9);
                                Preconditions.checkNotEmpty(str14);
                                zzajVar9.zzg();
                                zzajVar9.zzY();
                                zzc = zzajVar9.zzc(str14, "first_open_count");
                                if (this.zzn.zzau().getPackageManager() != null) {
                                    zzay().zzd().zzb("PackageManager is null, first open report might be inaccurate. appId", zzel.zzn(str14));
                                    str7 = "_et";
                                } else {
                                    try {
                                        packageInfo = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(str14, 0);
                                        str5 = str13;
                                    } catch (PackageManager.NameNotFoundException e12) {
                                        str5 = str13;
                                        zzay().zzd().zzc("Package info is null, first open report might be inaccurate. appId", zzel.zzn(str14), e12);
                                        packageInfo = null;
                                    }
                                    if (packageInfo != null) {
                                        long j12 = packageInfo.firstInstallTime;
                                        if (j12 != 0) {
                                            str6 = str12;
                                            str7 = "_et";
                                            if (j12 != packageInfo.lastUpdateTime) {
                                                applicationInfo = null;
                                                if (!zzg().zzs(null, zzdy.zzah)) {
                                                    bundle2.putLong("_uwa", 1L);
                                                } else if (zzc == 0) {
                                                    bundle2.putLong("_uwa", 1L);
                                                }
                                                z11 = false;
                                            } else {
                                                applicationInfo = null;
                                                z11 = true;
                                            }
                                            str8 = str5;
                                            zzU(new zzkv("_fi", j10, Long.valueOf(true != z11 ? 0L : 1L), "auto"), zzpVar);
                                            applicationInfo2 = Wrappers.packageManager(this.zzn.zzau()).getApplicationInfo(str14, 0);
                                            if (applicationInfo2 != null) {
                                                if ((applicationInfo2.flags & 1) != 0) {
                                                    bundle2.putLong(str6, 1L);
                                                }
                                                if ((applicationInfo2.flags & 128) != 0) {
                                                    bundle2.putLong(str8, 1L);
                                                }
                                            }
                                        }
                                    }
                                    str6 = str12;
                                    str7 = "_et";
                                    str8 = str5;
                                    applicationInfo = null;
                                    applicationInfo2 = Wrappers.packageManager(this.zzn.zzau()).getApplicationInfo(str14, 0);
                                    if (applicationInfo2 != null) {
                                    }
                                }
                                if (zzc >= 0) {
                                    bundle2.putLong("_pfo", zzc);
                                }
                                zzF(new zzat("_f", new zzar(bundle2), "auto", j10), zzpVar);
                                str4 = str7;
                            }
                            zzfdVar.zza.zzay().zzm().zza("Install Referrer Reporter was called with invalid app package name");
                            zzaz().zzg();
                            zzB();
                            Bundle bundle22 = new Bundle();
                            bundle22.putLong("_c", 1L);
                            bundle22.putLong("_r", 1L);
                            bundle22.putLong("_uwa", 0L);
                            bundle22.putLong("_pfo", 0L);
                            String str122 = str2;
                            bundle22.putLong(str122, 0L);
                            String str132 = str;
                            bundle22.putLong(str132, 0L);
                            bundle22.putLong("_et", 1L);
                            if (zzpVar.zzp) {
                            }
                            String str142 = (String) Preconditions.checkNotNull(zzpVar.zza);
                            zzaj zzajVar92 = this.zze;
                            zzak(zzajVar92);
                            Preconditions.checkNotEmpty(str142);
                            zzajVar92.zzg();
                            zzajVar92.zzY();
                            zzc = zzajVar92.zzc(str142, "first_open_count");
                            if (this.zzn.zzau().getPackageManager() != null) {
                            }
                            if (zzc >= 0) {
                            }
                            zzF(new zzat("_f", new zzar(bundle22), "auto", j10), zzpVar);
                            str4 = str7;
                        } else {
                            zzU(new zzkv("_fvt", j10, Long.valueOf(j11), "auto"), zzpVar);
                            zzaz().zzg();
                            zzB();
                            Bundle bundle3 = new Bundle();
                            bundle3.putLong("_c", 1L);
                            bundle3.putLong("_r", 1L);
                            str4 = "_et";
                            bundle3.putLong(str4, 1L);
                            if (zzpVar.zzp) {
                                bundle3.putLong("_dac", 1L);
                            }
                            zzF(new zzat("_v", new zzar(bundle3), "auto", j10), zzpVar);
                        }
                        if (!zzg().zzs(zzpVar.zza, zzdy.zzT)) {
                            Bundle bundle4 = new Bundle();
                            bundle4.putLong(str4, 1L);
                            bundle4.putLong("_fr", 1L);
                            zzF(new zzat("_e", new zzar(bundle4), "auto", j10), zzpVar);
                        }
                    } else if (zzpVar.zzi) {
                        zzF(new zzat("_cd", new zzar(new Bundle()), "auto", j10), zzpVar);
                    }
                    zzaj zzajVar10 = this.zze;
                    zzak(zzajVar10);
                    zzajVar10.zzD();
                }
                Boolean bool = zzpVar.zzr;
                if (bool != null) {
                    str = "_sysu";
                    str2 = "_sys";
                    i10 = 1;
                    zzkv zzkvVar = new zzkv("_npa", j10, Long.valueOf(true != bool.booleanValue() ? 0L : 1L), "auto");
                    if (zzp == null || !zzp.zze.equals(zzkvVar.zzd)) {
                        zzU(zzkvVar, zzpVar);
                    }
                } else {
                    str = "_sysu";
                    str2 = "_sys";
                    i10 = 1;
                    if (zzp != null) {
                        zzO(new zzkv("_npa", j10, null, "auto"), zzpVar);
                    }
                }
                zzaj zzajVar62 = this.zze;
                zzak(zzajVar62);
                zzj = zzajVar62.zzj((String) Preconditions.checkNotNull(zzpVar.zza));
                if (zzj != null) {
                    zzay().zzk().zzb("New GMP App Id passed in. Removing cached database data. appId", zzel.zzn(zzj.zzt()));
                    zzajVar = this.zze;
                    zzak(zzajVar);
                    zzt = zzj.zzt();
                    zzajVar.zzY();
                    zzajVar.zzg();
                    Preconditions.checkNotEmpty(zzt);
                    SQLiteDatabase zzh2 = zzajVar.zzh();
                    String[] strArr2 = new String[i10];
                    strArr2[0] = zzt;
                    delete = zzh2.delete("events", "app_id=?", strArr2) + zzh2.delete("user_attributes", "app_id=?", strArr2) + zzh2.delete("conditional_properties", "app_id=?", strArr2) + zzh2.delete("apps", "app_id=?", strArr2) + zzh2.delete("raw_events", "app_id=?", strArr2) + zzh2.delete("raw_events_metadata", "app_id=?", strArr2) + zzh2.delete("event_filters", "app_id=?", strArr2) + zzh2.delete("property_filters", "app_id=?", strArr2) + zzh2.delete("audience_filter_values", "app_id=?", strArr2) + zzh2.delete("consent_settings", "app_id=?", strArr2);
                    if (delete > 0) {
                    }
                    zzj = null;
                }
                if (zzj == null) {
                }
                zzd(zzpVar);
                if (i11 != 0) {
                }
                if (zzn != null) {
                }
                zzaj zzajVar102 = this.zze;
                zzak(zzajVar102);
                zzajVar102.zzD();
            } finally {
                zzaj zzajVar11 = this.zze;
                zzak(zzajVar11);
                zzajVar11.zzy();
            }
        }
    }

    public final void zzL() {
        this.zzr++;
    }

    public final void zzM(zzab zzabVar) {
        zzp zzaa = zzaa((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzaa != null) {
            zzN(zzabVar, zzaa);
        }
    }

    public final void zzN(zzab zzabVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (zzpVar.zzh) {
                zzaj zzajVar = this.zze;
                zzak(zzajVar);
                zzajVar.zzw();
                try {
                    zzd(zzpVar);
                    String str = (String) Preconditions.checkNotNull(zzabVar.zza);
                    zzaj zzajVar2 = this.zze;
                    zzak(zzajVar2);
                    zzab zzk = zzajVar2.zzk(str, zzabVar.zzc.zzb);
                    if (zzk != null) {
                        zzay().zzc().zzc("Removing conditional user property", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        zzajVar3.zza(str, zzabVar.zzc.zzb);
                        if (zzk.zze) {
                            zzaj zzajVar4 = this.zze;
                            zzak(zzajVar4);
                            zzajVar4.zzB(str, zzabVar.zzc.zzb);
                        }
                        zzat zzatVar = zzabVar.zzk;
                        if (zzatVar != null) {
                            zzar zzarVar = zzatVar.zzb;
                            zzW((zzat) Preconditions.checkNotNull(zzv().zzz(str, ((zzat) Preconditions.checkNotNull(zzabVar.zzk)).zza, zzarVar != null ? zzarVar.zzc() : null, zzk.zzb, zzabVar.zzk.zzd, true, true)), zzpVar);
                        }
                    } else {
                        zzay().zzk().zzc("Conditional user property doesn't exist", zzel.zzn(zzabVar.zza), this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                    }
                    zzaj zzajVar5 = this.zze;
                    zzak(zzajVar5);
                    zzajVar5.zzD();
                    return;
                } finally {
                    zzaj zzajVar6 = this.zze;
                    zzak(zzajVar6);
                    zzajVar6.zzy();
                }
            }
            zzd(zzpVar);
        }
    }

    public final void zzO(zzkv zzkvVar, zzp zzpVar) {
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            if ("_npa".equals(zzkvVar.zzb) && zzpVar.zzr != null) {
                zzay().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zzU(new zzkv("_npa", zzav().currentTimeMillis(), Long.valueOf(true != zzpVar.zzr.booleanValue() ? 0L : 1L), "auto"), zzpVar);
                return;
            }
            zzay().zzc().zzb("Removing user property", this.zzn.zzj().zzf(zzkvVar.zzb));
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzd(zzpVar);
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzajVar2.zzB((String) Preconditions.checkNotNull(zzpVar.zza), zzkvVar.zzb);
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzajVar3.zzD();
                zzay().zzc().zzb("User property removed", this.zzn.zzj().zzf(zzkvVar.zzb));
            } finally {
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                zzajVar4.zzy();
            }
        }
    }

    @VisibleForTesting
    public final void zzP(zzp zzpVar) {
        if (this.zzy != null) {
            ArrayList arrayList = new ArrayList();
            this.zzz = arrayList;
            arrayList.addAll(this.zzy);
        }
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        String str = (String) Preconditions.checkNotNull(zzpVar.zza);
        Preconditions.checkNotEmpty(str);
        zzajVar.zzg();
        zzajVar.zzY();
        try {
            SQLiteDatabase zzh = zzajVar.zzh();
            String[] strArr = {str};
            int delete = zzh.delete("apps", "app_id=?", strArr) + zzh.delete("events", "app_id=?", strArr) + zzh.delete("user_attributes", "app_id=?", strArr) + zzh.delete("conditional_properties", "app_id=?", strArr) + zzh.delete("raw_events", "app_id=?", strArr) + zzh.delete("raw_events_metadata", "app_id=?", strArr) + zzh.delete("queue", "app_id=?", strArr) + zzh.delete("audience_filter_values", "app_id=?", strArr) + zzh.delete("main_event_params", "app_id=?", strArr) + zzh.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zzajVar.zzs.zzay().zzj().zzc("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e10) {
            zzajVar.zzs.zzay().zzd().zzc("Error resetting analytics data. appId, error", zzel.zzn(str), e10);
        }
        if (zzpVar.zzh) {
            zzK(zzpVar);
        }
    }

    public final void zzQ() {
        zzaz().zzg();
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzajVar.zzA();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzav().currentTimeMillis());
        }
        zzaf();
    }

    public final void zzR(zzab zzabVar) {
        zzp zzaa = zzaa((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzaa != null) {
            zzS(zzabVar, zzaa);
        }
    }

    public final void zzS(zzab zzabVar, zzp zzpVar) {
        zzat zzatVar;
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzb);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzab zzabVar2 = new zzab(zzabVar);
            boolean z10 = false;
            zzabVar2.zze = false;
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzab zzk = zzajVar2.zzk((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzc.zzb);
                if (zzk != null && !zzk.zzb.equals(zzabVar2.zzb)) {
                    zzay().zzk().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzb, zzk.zzb);
                }
                if (zzk != null && zzk.zze) {
                    zzabVar2.zzb = zzk.zzb;
                    zzabVar2.zzd = zzk.zzd;
                    zzabVar2.zzh = zzk.zzh;
                    zzabVar2.zzf = zzk.zzf;
                    zzabVar2.zzi = zzk.zzi;
                    zzabVar2.zze = true;
                    zzkv zzkvVar = zzabVar2.zzc;
                    zzabVar2.zzc = new zzkv(zzkvVar.zzb, zzk.zzc.zzc, zzkvVar.zza(), zzk.zzc.zzf);
                } else if (TextUtils.isEmpty(zzabVar2.zzf)) {
                    zzkv zzkvVar2 = zzabVar2.zzc;
                    zzabVar2.zzc = new zzkv(zzkvVar2.zzb, zzabVar2.zzd, zzkvVar2.zza(), zzabVar2.zzc.zzf);
                    zzabVar2.zze = true;
                    z10 = true;
                }
                if (zzabVar2.zze) {
                    zzkv zzkvVar3 = zzabVar2.zzc;
                    zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzb, zzkvVar3.zzb, zzkvVar3.zzc, Preconditions.checkNotNull(zzkvVar3.zza()));
                    zzaj zzajVar3 = this.zze;
                    zzak(zzajVar3);
                    if (zzajVar3.zzN(zzkxVar)) {
                        zzay().zzc().zzd("User property updated immediately", zzabVar2.zza, this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    } else {
                        zzay().zzd().zzd("(2)Too many active user properties, ignoring", zzel.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    }
                    if (z10 && (zzatVar = zzabVar2.zzi) != null) {
                        zzW(new zzat(zzatVar, zzabVar2.zzd), zzpVar);
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                if (zzajVar4.zzM(zzabVar2)) {
                    zzay().zzc().zzd("Conditional property added", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                } else {
                    zzay().zzd().zzd("Too many conditional properties, ignoring", zzel.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                }
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzD();
            } finally {
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzy();
            }
        }
    }

    public final void zzT(String str, zzag zzagVar) {
        zzaz().zzg();
        zzB();
        this.zzB.put(str, zzagVar);
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzagVar);
        zzajVar.zzg();
        zzajVar.zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzagVar.zzi());
        try {
            if (zzajVar.zzh().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzajVar.zzs.zzay().zzd().zzb("Failed to insert/update consent setting (got -1). appId", zzel.zzn(str));
            }
        } catch (SQLiteException e10) {
            zzajVar.zzs.zzay().zzd().zzc("Error storing consent setting. appId, error", zzel.zzn(str), e10);
        }
    }

    public final void zzU(zzkv zzkvVar, zzp zzpVar) {
        long j10;
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            int zzl = zzv().zzl(zzkvVar.zzb);
            if (zzl != 0) {
                zzkz zzv = zzv();
                String str = zzkvVar.zzb;
                zzg();
                String zzC = zzv.zzC(str, 24, true);
                String str2 = zzkvVar.zzb;
                zzv().zzM(this.zzC, zzpVar.zza, zzl, "_ev", zzC, str2 != null ? str2.length() : 0);
                return;
            }
            int zzd = zzv().zzd(zzkvVar.zzb, zzkvVar.zza());
            if (zzd != 0) {
                zzkz zzv2 = zzv();
                String str3 = zzkvVar.zzb;
                zzg();
                String zzC2 = zzv2.zzC(str3, 24, true);
                Object zza = zzkvVar.zza();
                zzv().zzM(this.zzC, zzpVar.zza, zzd, "_ev", zzC2, (zza == null || !((zza instanceof String) || (zza instanceof CharSequence))) ? 0 : String.valueOf(zza).length());
                return;
            }
            Object zzB = zzv().zzB(zzkvVar.zzb, zzkvVar.zza());
            if (zzB == null) {
                return;
            }
            if ("_sid".equals(zzkvVar.zzb)) {
                long j11 = zzkvVar.zzc;
                String str4 = zzkvVar.zzf;
                String str5 = (String) Preconditions.checkNotNull(zzpVar.zza);
                zzaj zzajVar = this.zze;
                zzak(zzajVar);
                zzkx zzp = zzajVar.zzp(str5, "_sno");
                if (zzp != null) {
                    Object obj = zzp.zze;
                    if (obj instanceof Long) {
                        j10 = ((Long) obj).longValue();
                        zzU(new zzkv("_sno", j11, Long.valueOf(j10 + 1), str4), zzpVar);
                    }
                }
                if (zzp != null) {
                    zzay().zzk().zzb("Retrieved last session number from database does not contain a valid (long) value", zzp.zze);
                }
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzap zzn = zzajVar2.zzn(str5, "_s");
                if (zzn != null) {
                    j10 = zzn.zzc;
                    zzay().zzj().zzb("Backfill the session number. Last used session number", Long.valueOf(j10));
                } else {
                    j10 = 0;
                }
                zzU(new zzkv("_sno", j11, Long.valueOf(j10 + 1), str4), zzpVar);
            }
            zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzpVar.zza), (String) Preconditions.checkNotNull(zzkvVar.zzf), zzkvVar.zzb, zzkvVar.zzc, zzB);
            zzay().zzj().zzc("Setting user property", this.zzn.zzj().zzf(zzkxVar.zzc), zzB);
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzajVar3.zzw();
            try {
                zzna.zzc();
                if (this.zzn.zzf().zzs(null, zzdy.zzay) && "_id".equals(zzkxVar.zzc)) {
                    zzaj zzajVar4 = this.zze;
                    zzak(zzajVar4);
                    zzajVar4.zzB(zzpVar.zza, "_lair");
                }
                zzd(zzpVar);
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                boolean zzN = zzajVar5.zzN(zzkxVar);
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzD();
                if (!zzN) {
                    zzay().zzd().zzc("Too many unique user properties are set. Ignoring user property", this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    zzv().zzM(this.zzC, zzpVar.zza, 9, null, null, 0);
                }
            } finally {
                zzaj zzajVar7 = this.zze;
                zzak(zzajVar7);
                zzajVar7.zzy();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x0126, code lost:
    
        if (r11 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x04e7, code lost:
    
        if (r3 == null) goto L211;
     */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0484 A[Catch: all -> 0x050b, TryCatch #9 {all -> 0x050b, blocks: (B:3:0x0010, B:5:0x0021, B:10:0x0034, B:12:0x003a, B:14:0x004a, B:16:0x0052, B:18:0x0058, B:20:0x0063, B:22:0x0073, B:24:0x007e, B:26:0x0091, B:28:0x00b0, B:30:0x00b6, B:32:0x00b9, B:34:0x00c5, B:35:0x00dc, B:37:0x00ed, B:195:0x00f3, B:201:0x0108, B:202:0x0129, B:214:0x0130, B:215:0x0133, B:39:0x0134, B:42:0x015c, B:45:0x0164, B:53:0x019e, B:55:0x029e, B:57:0x02a4, B:59:0x02ae, B:60:0x02b2, B:62:0x02b8, B:65:0x02cc, B:68:0x02d5, B:70:0x02db, B:74:0x0300, B:75:0x02f0, B:78:0x02fa, B:84:0x0303, B:86:0x031e, B:89:0x032b, B:91:0x033e, B:93:0x0378, B:95:0x037d, B:97:0x0385, B:98:0x0388, B:100:0x0394, B:102:0x03aa, B:105:0x03b2, B:107:0x03c3, B:108:0x03d4, B:110:0x03ef, B:112:0x0401, B:113:0x0416, B:115:0x0421, B:116:0x042a, B:118:0x040f, B:119:0x046d, B:143:0x026f, B:165:0x029b, B:186:0x0484, B:187:0x0487, B:219:0x0488, B:227:0x04c8, B:228:0x04ea, B:230:0x04f0, B:232:0x04fb, B:245:0x0507, B:246:0x050a), top: B:2:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02a4 A[Catch: all -> 0x050b, TryCatch #9 {all -> 0x050b, blocks: (B:3:0x0010, B:5:0x0021, B:10:0x0034, B:12:0x003a, B:14:0x004a, B:16:0x0052, B:18:0x0058, B:20:0x0063, B:22:0x0073, B:24:0x007e, B:26:0x0091, B:28:0x00b0, B:30:0x00b6, B:32:0x00b9, B:34:0x00c5, B:35:0x00dc, B:37:0x00ed, B:195:0x00f3, B:201:0x0108, B:202:0x0129, B:214:0x0130, B:215:0x0133, B:39:0x0134, B:42:0x015c, B:45:0x0164, B:53:0x019e, B:55:0x029e, B:57:0x02a4, B:59:0x02ae, B:60:0x02b2, B:62:0x02b8, B:65:0x02cc, B:68:0x02d5, B:70:0x02db, B:74:0x0300, B:75:0x02f0, B:78:0x02fa, B:84:0x0303, B:86:0x031e, B:89:0x032b, B:91:0x033e, B:93:0x0378, B:95:0x037d, B:97:0x0385, B:98:0x0388, B:100:0x0394, B:102:0x03aa, B:105:0x03b2, B:107:0x03c3, B:108:0x03d4, B:110:0x03ef, B:112:0x0401, B:113:0x0416, B:115:0x0421, B:116:0x042a, B:118:0x040f, B:119:0x046d, B:143:0x026f, B:165:0x029b, B:186:0x0484, B:187:0x0487, B:219:0x0488, B:227:0x04c8, B:228:0x04ea, B:230:0x04f0, B:232:0x04fb, B:245:0x0507, B:246:0x050a), top: B:2:0x0010, inners: #19 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzV() {
        zzaj zzajVar;
        long zzz;
        zzaj zzajVar2;
        Cursor cursor;
        Cursor cursor2;
        long j10;
        Cursor cursor3;
        List emptyList;
        String str;
        String str2;
        byte[] byteArray;
        zzaz().zzg();
        zzB();
        int i10 = 1;
        this.zzv = true;
        Cursor cursor4 = null;
        int i11 = 0;
        try {
            this.zzn.zzaw();
            Boolean zzj = this.zzn.zzt().zzj();
            if (zzj == null) {
                zzay().zzk().zza("Upload data called on the client side before use of service was decided");
                this.zzv = false;
            } else if (zzj.booleanValue()) {
                zzay().zzd().zza("Upload called in the client side when service should be used");
                this.zzv = false;
            } else if (this.zza > 0) {
                zzaf();
                this.zzv = false;
            } else {
                zzaz().zzg();
                if (this.zzy != null) {
                    zzay().zzj().zza("Uploading requested multiple times");
                    this.zzv = false;
                } else {
                    zzer zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (!zzerVar.zzc()) {
                        zzay().zzj().zza("Network not connected, ignoring upload request");
                        zzaf();
                        this.zzv = false;
                    } else {
                        long currentTimeMillis = zzav().currentTimeMillis();
                        Cursor cursor5 = null;
                        Cursor cursor6 = null;
                        r9 = null;
                        r9 = null;
                        String str3 = null;
                        int zze = zzg().zze(null, zzdy.zzP);
                        zzg();
                        long zzz2 = currentTimeMillis - zzaf.zzz();
                        for (int i12 = 0; i12 < zze && zzah(null, zzz2); i12++) {
                        }
                        long zza = this.zzk.zzc.zza();
                        if (zza != 0) {
                            zzay().zzc().zzb("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - zza)));
                        }
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        String zzr = zzajVar3.zzr();
                        long j11 = -1;
                        if (!TextUtils.isEmpty(zzr)) {
                            if (this.zzA == -1) {
                                try {
                                    zzajVar2 = this.zze;
                                    zzak(zzajVar2);
                                } catch (Throwable th) {
                                    th = th;
                                    cursor6 = cursor;
                                }
                                try {
                                    cursor = zzajVar2.zzh().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                                    try {
                                        if (cursor.moveToFirst()) {
                                            j11 = cursor.getLong(0);
                                        }
                                    } catch (SQLiteException e10) {
                                        e = e10;
                                        zzajVar2.zzs.zzay().zzd().zzb("Error querying raw events", e);
                                    }
                                } catch (SQLiteException e11) {
                                    e = e11;
                                    cursor = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (cursor6 != null) {
                                        cursor6.close();
                                    }
                                    throw th;
                                }
                                cursor.close();
                                this.zzA = j11;
                            }
                            int zze2 = zzg().zze(zzr, zzdy.zzf);
                            int max = Math.max(0, zzg().zze(zzr, zzdy.zzg));
                            zzaj zzajVar4 = this.zze;
                            zzak(zzajVar4);
                            zzajVar4.zzg();
                            zzajVar4.zzY();
                            Preconditions.checkArgument(zze2 > 0);
                            Preconditions.checkArgument(max > 0);
                            Preconditions.checkNotEmpty(zzr);
                            try {
                                try {
                                    cursor3 = zzajVar4.zzh().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{zzr}, null, null, "rowid", String.valueOf(zze2));
                                    try {
                                        if (!cursor3.moveToFirst()) {
                                            emptyList = Collections.emptyList();
                                            cursor3.close();
                                            j10 = currentTimeMillis;
                                        } else {
                                            ArrayList arrayList = new ArrayList();
                                            int i13 = 0;
                                            while (true) {
                                                long j12 = cursor3.getLong(i11);
                                                try {
                                                    byte[] blob = cursor3.getBlob(i10);
                                                    zzku zzkuVar = zzajVar4.zzf.zzi;
                                                    zzak(zzkuVar);
                                                    try {
                                                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(blob);
                                                        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                        byte[] bArr = new byte[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
                                                        j10 = currentTimeMillis;
                                                        while (true) {
                                                            try {
                                                                try {
                                                                    int read = gZIPInputStream.read(bArr);
                                                                    if (read <= 0) {
                                                                        break;
                                                                    } else {
                                                                        byteArrayOutputStream.write(bArr, 0, read);
                                                                    }
                                                                } catch (SQLiteException e12) {
                                                                    e = e12;
                                                                    zzajVar4.zzs.zzay().zzd().zzc("Error querying bundles. appId", zzel.zzn(zzr), e);
                                                                    emptyList = Collections.emptyList();
                                                                    if (cursor3 != null) {
                                                                        cursor3.close();
                                                                    }
                                                                    if (!emptyList.isEmpty()) {
                                                                    }
                                                                    this.zzv = false;
                                                                    zzac();
                                                                }
                                                            } catch (IOException e13) {
                                                                e = e13;
                                                                try {
                                                                    zzkuVar.zzs.zzay().zzd().zzb("Failed to ungzip content", e);
                                                                    throw e;
                                                                    break;
                                                                } catch (IOException e14) {
                                                                    e = e14;
                                                                    zzajVar4.zzs.zzay().zzd().zzc("Failed to unzip queued bundle. appId", zzel.zzn(zzr), e);
                                                                    if (cursor3.moveToNext()) {
                                                                        break;
                                                                    }
                                                                    currentTimeMillis = j10;
                                                                    i10 = 1;
                                                                    i11 = 0;
                                                                    cursor3.close();
                                                                    emptyList = arrayList;
                                                                    if (!emptyList.isEmpty()) {
                                                                    }
                                                                    this.zzv = false;
                                                                    zzac();
                                                                }
                                                            }
                                                        }
                                                        gZIPInputStream.close();
                                                        byteArrayInputStream.close();
                                                        byteArray = byteArrayOutputStream.toByteArray();
                                                    } catch (IOException e15) {
                                                        e = e15;
                                                        j10 = currentTimeMillis;
                                                    }
                                                } catch (IOException e16) {
                                                    e = e16;
                                                    j10 = currentTimeMillis;
                                                }
                                                if (!arrayList.isEmpty() && byteArray.length + i13 > max) {
                                                    break;
                                                }
                                                try {
                                                    com.google.android.gms.internal.measurement.zzfx zzfxVar = (com.google.android.gms.internal.measurement.zzfx) zzku.zzl(com.google.android.gms.internal.measurement.zzfy.zzu(), byteArray);
                                                    if (!cursor3.isNull(2)) {
                                                        zzfxVar.zzac(cursor3.getInt(2));
                                                    }
                                                    i13 += byteArray.length;
                                                    arrayList.add(Pair.create(zzfxVar.zzaA(), Long.valueOf(j12)));
                                                } catch (IOException e17) {
                                                    zzajVar4.zzs.zzay().zzd().zzc("Failed to merge queued bundle. appId", zzel.zzn(zzr), e17);
                                                }
                                                if (cursor3.moveToNext() || i13 > max) {
                                                    break;
                                                    break;
                                                } else {
                                                    currentTimeMillis = j10;
                                                    i10 = 1;
                                                    i11 = 0;
                                                }
                                            }
                                            cursor3.close();
                                            emptyList = arrayList;
                                        }
                                    } catch (SQLiteException e18) {
                                        e = e18;
                                        j10 = currentTimeMillis;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor2 = cursor;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLiteException e19) {
                                e = e19;
                                j10 = currentTimeMillis;
                                cursor3 = null;
                            } catch (Throwable th4) {
                                th = th4;
                                cursor2 = null;
                                if (cursor2 != null) {
                                }
                                throw th;
                            }
                            if (!emptyList.isEmpty()) {
                                if (zzh(zzr).zzj()) {
                                    Iterator it2 = emptyList.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            str2 = null;
                                            break;
                                        }
                                        com.google.android.gms.internal.measurement.zzfy zzfyVar = (com.google.android.gms.internal.measurement.zzfy) ((Pair) it2.next()).first;
                                        if (!TextUtils.isEmpty(zzfyVar.zzL())) {
                                            str2 = zzfyVar.zzL();
                                            break;
                                        }
                                    }
                                    if (str2 != null) {
                                        int i14 = 0;
                                        while (true) {
                                            if (i14 >= emptyList.size()) {
                                                break;
                                            }
                                            com.google.android.gms.internal.measurement.zzfy zzfyVar2 = (com.google.android.gms.internal.measurement.zzfy) ((Pair) emptyList.get(i14)).first;
                                            if (!TextUtils.isEmpty(zzfyVar2.zzL()) && !zzfyVar2.zzL().equals(str2)) {
                                                emptyList = emptyList.subList(0, i14);
                                                break;
                                            }
                                            i14++;
                                        }
                                    }
                                }
                                com.google.android.gms.internal.measurement.zzfv zza2 = com.google.android.gms.internal.measurement.zzfw.zza();
                                int size = emptyList.size();
                                ArrayList arrayList2 = new ArrayList(emptyList.size());
                                boolean z10 = zzg().zzt(zzr) && zzh(zzr).zzj();
                                boolean zzj2 = zzh(zzr).zzj();
                                boolean zzk = zzh(zzr).zzk();
                                int i15 = 0;
                                while (i15 < size) {
                                    com.google.android.gms.internal.measurement.zzfx zzbv = ((com.google.android.gms.internal.measurement.zzfy) ((Pair) emptyList.get(i15)).first).zzbv();
                                    arrayList2.add((Long) ((Pair) emptyList.get(i15)).second);
                                    zzg().zzh();
                                    zzbv.zzah(43042L);
                                    long j13 = j10;
                                    zzbv.zzag(j13);
                                    this.zzn.zzaw();
                                    zzbv.zzad(false);
                                    if (!z10) {
                                        zzbv.zzo();
                                    }
                                    if (!zzj2) {
                                        zzbv.zzu();
                                        zzbv.zzr();
                                    }
                                    if (!zzk) {
                                        zzbv.zzm();
                                    }
                                    if (zzg().zzs(zzr, zzdy.zzV)) {
                                        byte[] zzbs = zzbv.zzaA().zzbs();
                                        zzku zzkuVar2 = this.zzi;
                                        zzak(zzkuVar2);
                                        zzbv.zzG(zzkuVar2.zzd(zzbs));
                                    }
                                    zza2.zza(zzbv);
                                    i15++;
                                    j10 = j13;
                                }
                                long j14 = j10;
                                if (Log.isLoggable(zzay().zzq(), 2)) {
                                    zzku zzkuVar3 = this.zzi;
                                    zzak(zzkuVar3);
                                    str = zzkuVar3.zzm(zza2.zzaA());
                                } else {
                                    str = null;
                                }
                                zzak(this.zzi);
                                byte[] zzbs2 = zza2.zzaA().zzbs();
                                zzg();
                                String zza3 = zzdy.zzp.zza(null);
                                try {
                                    URL url = new URL(zza3);
                                    Preconditions.checkArgument(!arrayList2.isEmpty());
                                    if (this.zzy != null) {
                                        zzay().zzd().zza("Set uploading progress before finishing the previous upload");
                                    } else {
                                        this.zzy = new ArrayList(arrayList2);
                                    }
                                    this.zzk.zzd.zzb(j14);
                                    zzay().zzj().zzd("Uploading data. app, uncompressed size, data", size > 0 ? zza2.zzb(0).zzy() : "?", Integer.valueOf(zzbs2.length), str);
                                    this.zzu = true;
                                    zzer zzerVar2 = this.zzd;
                                    zzak(zzerVar2);
                                    zzkl zzklVar = new zzkl(this, zzr);
                                    zzerVar2.zzg();
                                    zzerVar2.zzY();
                                    Preconditions.checkNotNull(url);
                                    Preconditions.checkNotNull(zzbs2);
                                    Preconditions.checkNotNull(zzklVar);
                                    zzerVar2.zzs.zzaz().zzo(new zzeq(zzerVar2, zzr, url, zzbs2, null, zzklVar));
                                } catch (MalformedURLException unused) {
                                    zzay().zzd().zzc("Failed to parse upload URL. Not uploading. appId", zzel.zzn(zzr), zza3);
                                }
                            }
                        } else {
                            try {
                                this.zzA = -1L;
                                zzajVar = this.zze;
                                zzak(zzajVar);
                                zzg();
                                zzz = currentTimeMillis - zzaf.zzz();
                                zzajVar.zzg();
                                zzajVar.zzY();
                            } catch (Throwable th5) {
                                th = th5;
                                cursor5 = cursor4;
                            }
                            try {
                                cursor4 = zzajVar.zzh().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(zzz)});
                                try {
                                    if (!cursor4.moveToFirst()) {
                                        zzajVar.zzs.zzay().zzj().zza("No expired configs for apps with pending events");
                                    } else {
                                        str3 = cursor4.getString(0);
                                    }
                                } catch (SQLiteException e20) {
                                    e = e20;
                                    zzajVar.zzs.zzay().zzd().zzb("Error selecting expired configs", e);
                                }
                            } catch (SQLiteException e21) {
                                e = e21;
                                cursor4 = null;
                            } catch (Throwable th6) {
                                th = th6;
                                if (cursor5 != null) {
                                    cursor5.close();
                                }
                                throw th;
                            }
                            cursor4.close();
                            if (!TextUtils.isEmpty(str3)) {
                                zzaj zzajVar5 = this.zze;
                                zzak(zzajVar5);
                                zzg zzj3 = zzajVar5.zzj(str3);
                                if (zzj3 != null) {
                                    zzC(zzj3);
                                }
                            }
                        }
                        this.zzv = false;
                    }
                }
            }
            zzac();
        } catch (Throwable th7) {
            this.zzv = false;
            zzac();
            throw th7;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:299|(1:301)(1:332)|302|(2:304|(1:306)(7:307|308|(1:310)|51|(0)(0)|54|(0)(0)))|311|312|313|314|315|316|317|318|319|320|308|(0)|51|(0)(0)|54|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x079b, code lost:
    
        if (r14.size() != 0) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x09a4, code lost:
    
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x02ad, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x02ba, code lost:
    
        r11.zzs.zzay().zzd().zzc("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzel.zzn(r10), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x02af, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x02b0, code lost:
    
        r33 = "metadata_fingerprint";
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x02b3, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x02b4, code lost:
    
        r33 = "metadata_fingerprint";
        r21 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0535 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0574 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x063a A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0647 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0654 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0662 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0673 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x06a6 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x06fe A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0740 A[Catch: all -> 0x0adc, TRY_LEAVE, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x07a0 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x07bf A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x082c A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0839 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0852 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x08e9 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0908 A[Catch: all -> 0x0adc, TRY_LEAVE, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x099a A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0a45 A[Catch: SQLiteException -> 0x0a60, all -> 0x0adc, TRY_LEAVE, TryCatch #5 {SQLiteException -> 0x0a60, blocks: (B:219:0x0a35, B:221:0x0a45), top: B:218:0x0a35, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0a5b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x09a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x06df A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x05ed A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0341 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0192 A[Catch: all -> 0x0adc, TRY_ENTER, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0210 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x02f4 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03a5 A[Catch: all -> 0x0adc, TryCatch #8 {all -> 0x0adc, blocks: (B:31:0x0124, B:33:0x0136, B:35:0x0142, B:36:0x014e, B:39:0x015c, B:41:0x0166, B:45:0x0172, B:51:0x032b, B:54:0x0361, B:56:0x03a5, B:58:0x03aa, B:59:0x03c1, B:63:0x03d4, B:65:0x03ed, B:67:0x03f4, B:68:0x040b, B:73:0x0435, B:77:0x0458, B:78:0x046f, B:81:0x0480, B:84:0x049d, B:85:0x04b1, B:87:0x04bb, B:89:0x04c8, B:91:0x04ce, B:92:0x04d7, B:94:0x04e5, B:97:0x04fd, B:101:0x0535, B:102:0x054a, B:104:0x0574, B:107:0x058c, B:110:0x05cf, B:111:0x05fb, B:113:0x063a, B:114:0x063f, B:116:0x0647, B:117:0x064c, B:119:0x0654, B:120:0x0659, B:122:0x0662, B:123:0x0666, B:125:0x0673, B:126:0x0678, B:128:0x06a6, B:130:0x06b0, B:132:0x06b8, B:133:0x06bd, B:135:0x06c7, B:137:0x06d1, B:139:0x06d9, B:140:0x06f6, B:142:0x06fe, B:143:0x0701, B:145:0x0719, B:148:0x0721, B:149:0x073a, B:151:0x0740, B:154:0x0754, B:157:0x0760, B:160:0x076d, B:252:0x0787, B:163:0x0797, B:166:0x07a0, B:167:0x07a3, B:169:0x07bf, B:171:0x07d1, B:173:0x07d5, B:175:0x07e0, B:176:0x07e9, B:178:0x082c, B:179:0x0831, B:181:0x0839, B:183:0x0842, B:184:0x0845, B:186:0x0852, B:188:0x0872, B:189:0x087d, B:191:0x08b0, B:192:0x08b5, B:193:0x08c2, B:195:0x08c8, B:197:0x08d2, B:198:0x08df, B:200:0x08e9, B:201:0x08f6, B:202:0x0902, B:204:0x0908, B:207:0x0938, B:209:0x097e, B:210:0x0988, B:211:0x0994, B:213:0x099a, B:217:0x09e7, B:219:0x0a35, B:221:0x0a45, B:222:0x0aa9, B:227:0x0a5d, B:229:0x0a61, B:232:0x09a6, B:234:0x09d2, B:241:0x0a7a, B:242:0x0a91, B:246:0x0a94, B:257:0x06df, B:259:0x06e9, B:261:0x06f1, B:262:0x05ed, B:266:0x051a, B:270:0x0341, B:271:0x0348, B:273:0x034e, B:276:0x035a, B:281:0x0186, B:284:0x0192, B:286:0x01a9, B:292:0x01ca, B:295:0x020a, B:297:0x0210, B:299:0x021e, B:301:0x0226, B:302:0x0230, B:304:0x023b, B:307:0x0242, B:308:0x02e9, B:310:0x02f4, B:311:0x0270, B:313:0x028d, B:316:0x0294, B:319:0x02a5, B:320:0x02cd, B:324:0x02ba, B:332:0x022b, B:334:0x01d8, B:339:0x0200), top: B:30:0x0124, inners: #1, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzW(zzat zzatVar, zzp zzpVar) {
        boolean z10;
        String zzg;
        String str;
        long longValue;
        String str2;
        String str3;
        zzkx zzkxVar;
        zzaj zzajVar;
        zzar zzarVar;
        long j10;
        long intValue;
        long j11;
        zzao zzaoVar;
        zzap zzn;
        zzap zzc;
        com.google.android.gms.internal.measurement.zzfx zzu;
        long j12;
        long j13;
        Map<String, String> zzc2;
        ArrayList arrayList;
        zzag zzc3;
        zzaf zzg2;
        zzdx<Boolean> zzdxVar;
        zzg zzj;
        List<zzkx> zzu2;
        int i10;
        zzaj zzajVar2;
        zzaj zzajVar3;
        zzaq zzaqVar;
        int i11;
        ContentValues contentValues;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        long nanoTime = System.nanoTime();
        zzaz().zzg();
        zzB();
        String str4 = zzpVar.zza;
        zzak(this.zzi);
        if (!zzku.zzB(zzatVar, zzpVar)) {
            return;
        }
        if (zzpVar.zzh) {
            zzfm zzfmVar = this.zzc;
            zzak(zzfmVar);
            if (zzfmVar.zzo(str4, zzatVar.zza)) {
                zzay().zzk().zzc("Dropping blocked event. appId", zzel.zzn(str4), this.zzn.zzj().zzd(zzatVar.zza));
                zzfm zzfmVar2 = this.zzc;
                zzak(zzfmVar2);
                if (!zzfmVar2.zzm(str4)) {
                    zzfm zzfmVar3 = this.zzc;
                    zzak(zzfmVar3);
                    if (!zzfmVar3.zzp(str4)) {
                        if ("_err".equals(zzatVar.zza)) {
                            return;
                        }
                        zzv().zzM(this.zzC, str4, 11, "_ev", zzatVar.zza, 0);
                        return;
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                zzg zzj2 = zzajVar4.zzj(str4);
                if (zzj2 != null) {
                    long abs = Math.abs(zzav().currentTimeMillis() - Math.max(zzj2.zzl(), zzj2.zzc()));
                    zzg();
                    if (abs > zzdy.zzy.zza(null).longValue()) {
                        zzay().zzc().zza("Fetching config for blocked app");
                        zzC(zzj2);
                        return;
                    }
                    return;
                }
                return;
            }
            zzem zzb2 = zzem.zzb(zzatVar);
            zzv().zzL(zzb2, zzg().zzd(str4));
            zzat zza = zzb2.zza();
            if (Log.isLoggable(zzay().zzq(), 2)) {
                zzay().zzj().zzb("Logging event", this.zzn.zzj().zzc(zza));
            }
            zzaj zzajVar5 = this.zze;
            zzak(zzajVar5);
            zzajVar5.zzw();
            try {
                zzd(zzpVar);
                zzna.zzc();
                if (!zzg().zzs(null, zzdy.zzay) && zzg().zzs(null, zzdy.zzaz)) {
                    zzaj zzajVar6 = this.zze;
                    zzak(zzajVar6);
                    zzajVar6.zzB(zzpVar.zza, "_lair");
                }
                if (!"ecommerce_purchase".equals(zza.zza) && !"purchase".equals(zza.zza) && !"refund".equals(zza.zza)) {
                    z10 = false;
                    if (!"_iap".equals(zza.zza)) {
                        if (!z10) {
                            str2 = "metadata_fingerprint";
                            str3 = "_err";
                            boolean zzah = zzkz.zzah(zza.zza);
                            boolean equals = str3.equals(zza.zza);
                            zzv();
                            zzarVar = zza.zzb;
                            if (zzarVar == null) {
                                j10 = 0;
                            } else {
                                zzaq zzaqVar2 = new zzaq(zzarVar);
                                j10 = 0;
                                while (zzaqVar2.hasNext()) {
                                    if (zzarVar.zzf(zzaqVar2.next()) instanceof Parcelable[]) {
                                        j10 += ((Parcelable[]) r13).length;
                                    }
                                }
                            }
                            zzaj zzajVar7 = this.zze;
                            zzak(zzajVar7);
                            zzah zzm = zzajVar7.zzm(zza(), str4, j10 + 1, true, zzah, false, equals, false);
                            long j14 = zzm.zzb;
                            zzg();
                            intValue = j14 - zzdy.zzj.zza(null).intValue();
                            if (intValue > 0) {
                                if (intValue % 1000 == 1) {
                                    zzay().zzd().zzc("Data loss. Too many events logged. appId, count", zzel.zzn(str4), Long.valueOf(zzm.zzb));
                                }
                                zzaj zzajVar8 = this.zze;
                                zzak(zzajVar8);
                                zzajVar8.zzD();
                                return;
                            }
                            if (zzah) {
                                long j15 = zzm.zza;
                                zzg();
                                long intValue2 = j15 - zzdy.zzl.zza(null).intValue();
                                if (intValue2 > 0) {
                                    if (intValue2 % 1000 == 1) {
                                        zzay().zzd().zzc("Data loss. Too many public events logged. appId, count", zzel.zzn(str4), Long.valueOf(zzm.zza));
                                    }
                                    zzv().zzM(this.zzC, str4, 16, "_ev", zza.zza, 0);
                                    zzaj zzajVar9 = this.zze;
                                    zzak(zzajVar9);
                                    zzajVar9.zzD();
                                    return;
                                }
                            }
                            if (equals) {
                                long max = zzm.zzd - Math.max(0, Math.min(1000000, zzg().zze(zzpVar.zza, zzdy.zzk)));
                                if (max > 0) {
                                    if (max == 1) {
                                        zzay().zzd().zzc("Too many error events logged. appId, count", zzel.zzn(str4), Long.valueOf(zzm.zzd));
                                    }
                                    zzaj zzajVar10 = this.zze;
                                    zzak(zzajVar10);
                                    zzajVar10.zzD();
                                    return;
                                }
                            }
                            Bundle zzc4 = zza.zzb.zzc();
                            zzv().zzN(zzc4, "_o", zza.zzc);
                            if (zzv().zzad(str4)) {
                                zzv().zzN(zzc4, "_dbg", 1L);
                                zzv().zzN(zzc4, "_r", 1L);
                            }
                            if ("_s".equals(zza.zza)) {
                                zzaj zzajVar11 = this.zze;
                                zzak(zzajVar11);
                                zzkx zzp = zzajVar11.zzp(zzpVar.zza, "_sno");
                                if (zzp != null && (zzp.zze instanceof Long)) {
                                    zzv().zzN(zzc4, "_sno", zzp.zze);
                                }
                            }
                            zzaj zzajVar12 = this.zze;
                            zzak(zzajVar12);
                            Preconditions.checkNotEmpty(str4);
                            zzajVar12.zzg();
                            zzajVar12.zzY();
                            try {
                            } catch (SQLiteException e10) {
                                e = e10;
                            }
                            try {
                                j11 = zzajVar12.zzh().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str4, String.valueOf(Math.max(0, Math.min(1000000, zzajVar12.zzs.zzf().zze(str4, zzdy.zzo))))});
                            } catch (SQLiteException e11) {
                                e = e11;
                                zzajVar12.zzs.zzay().zzd().zzc("Error deleting over the limit events. appId", zzel.zzn(str4), e);
                                j11 = 0;
                                if (j11 > 0) {
                                }
                                zzaoVar = new zzao(this.zzn, zza.zzc, str4, zza.zza, zza.zzd, 0L, zzc4);
                                zzaj zzajVar13 = this.zze;
                                zzak(zzajVar13);
                                zzn = zzajVar13.zzn(str4, zzaoVar.zzb);
                                if (zzn != null) {
                                }
                                zzaj zzajVar14 = this.zze;
                                zzak(zzajVar14);
                                zzajVar14.zzF(zzc);
                                zzaz().zzg();
                                zzB();
                                Preconditions.checkNotNull(zzaoVar);
                                Preconditions.checkNotNull(zzpVar);
                                Preconditions.checkNotEmpty(zzaoVar.zza);
                                Preconditions.checkArgument(zzaoVar.zza.equals(zzpVar.zza));
                                zzu = com.google.android.gms.internal.measurement.zzfy.zzu();
                                zzu.zzaa(1);
                                zzu.zzW("android");
                                if (!TextUtils.isEmpty(zzpVar.zza)) {
                                }
                                if (!TextUtils.isEmpty(zzpVar.zzd)) {
                                }
                                if (!TextUtils.isEmpty(zzpVar.zzc)) {
                                }
                                j12 = zzpVar.zzj;
                                if (j12 != -2147483648L) {
                                }
                                zzu.zzS(zzpVar.zze);
                                if (!TextUtils.isEmpty(zzpVar.zzb)) {
                                }
                                zzu.zzI(zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv)).zzi());
                                zzot.zzc();
                                if (!zzg().zzs(zzpVar.zza, zzdy.zzad)) {
                                }
                                j13 = zzpVar.zzf;
                                if (j13 != 0) {
                                }
                                zzu.zzM(zzpVar.zzs);
                                zzku zzkuVar = this.zzi;
                                zzak(zzkuVar);
                                zzc2 = zzdy.zzc(zzkuVar.zzf.zzn.zzau());
                                if (zzc2 != null) {
                                    arrayList = new ArrayList();
                                    int intValue3 = zzdy.zzO.zza(null).intValue();
                                    while (r9.hasNext()) {
                                    }
                                }
                                arrayList = null;
                                if (arrayList != null) {
                                }
                                zzc3 = zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv));
                                if (zzc3.zzj()) {
                                }
                                this.zzn.zzg().zzu();
                                zzu.zzK(Build.MODEL);
                                this.zzn.zzg().zzu();
                                zzu.zzV(Build.VERSION.RELEASE);
                                zzu.zzaf((int) this.zzn.zzg().zzb());
                                zzu.zzaj(this.zzn.zzg().zzc());
                                zzg2 = zzg();
                                zzdxVar = zzdy.zzan;
                                if (!zzg2.zzs(null, zzdxVar)) {
                                }
                                if (this.zzn.zzJ()) {
                                }
                                zzaj zzajVar15 = this.zze;
                                zzak(zzajVar15);
                                zzj = zzajVar15.zzj(zzpVar.zza);
                                if (zzj == null) {
                                }
                                if (zzc3.zzk()) {
                                    zzu.zzB((String) Preconditions.checkNotNull(zzj.zzu()));
                                }
                                if (!TextUtils.isEmpty(zzj.zzx())) {
                                }
                                zzaj zzajVar16 = this.zze;
                                zzak(zzajVar16);
                                zzu2 = zzajVar16.zzu(zzpVar.zza);
                                while (i10 < zzu2.size()) {
                                }
                                zzajVar2 = this.zze;
                                zzak(zzajVar2);
                                com.google.android.gms.internal.measurement.zzfy zzfyVar = (com.google.android.gms.internal.measurement.zzfy) zzu.zzaA();
                                zzajVar2.zzg();
                                zzajVar2.zzY();
                                Preconditions.checkNotNull(zzfyVar);
                                Preconditions.checkNotEmpty(zzfyVar.zzy());
                                byte[] zzbs = zzfyVar.zzbs();
                                zzku zzkuVar2 = zzajVar2.zzf.zzi;
                                zzak(zzkuVar2);
                                long zzd = zzkuVar2.zzd(zzbs);
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("app_id", zzfyVar.zzy());
                                String str5 = str2;
                                contentValues2.put(str5, Long.valueOf(zzd));
                                contentValues2.put("metadata", zzbs);
                                try {
                                    zzajVar2.zzh().insertWithOnConflict("raw_events_metadata", null, contentValues2, 4);
                                    zzajVar3 = this.zze;
                                    zzak(zzajVar3);
                                    zzaqVar = new zzaq(zzaoVar.zzf);
                                    while (true) {
                                        if (!zzaqVar.hasNext()) {
                                        }
                                    }
                                    zzajVar3.zzg();
                                    zzajVar3.zzY();
                                    Preconditions.checkNotNull(zzaoVar);
                                    Preconditions.checkNotEmpty(zzaoVar.zza);
                                    zzku zzkuVar3 = zzajVar3.zzf.zzi;
                                    zzak(zzkuVar3);
                                    byte[] zzbs2 = zzkuVar3.zzj(zzaoVar).zzbs();
                                    contentValues = new ContentValues();
                                    contentValues.put("app_id", zzaoVar.zza);
                                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaoVar.zzb);
                                    contentValues.put("timestamp", Long.valueOf(zzaoVar.zzd));
                                    contentValues.put(str5, Long.valueOf(zzd));
                                    contentValues.put("data", zzbs2);
                                    contentValues.put("realtime", Integer.valueOf(i11));
                                    try {
                                        if (zzajVar3.zzh().insert("raw_events", null, contentValues) != -1) {
                                        }
                                    } catch (SQLiteException e12) {
                                        zzajVar3.zzs.zzay().zzd().zzc("Error storing raw event. appId", zzel.zzn(zzaoVar.zza), e12);
                                    }
                                    zzaj zzajVar17 = this.zze;
                                    zzak(zzajVar17);
                                    zzajVar17.zzD();
                                    zzaj zzajVar18 = this.zze;
                                    zzak(zzajVar18);
                                    zzajVar18.zzy();
                                    zzaf();
                                    zzay().zzj().zzb("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / 1000000));
                                    return;
                                } catch (SQLiteException e13) {
                                    zzajVar2.zzs.zzay().zzd().zzc("Error storing raw event metadata. appId", zzel.zzn(zzfyVar.zzy()), e13);
                                    throw e13;
                                }
                            }
                            if (j11 > 0) {
                                zzay().zzk().zzc("Data lost. Too many events stored on disk, deleted. appId", zzel.zzn(str4), Long.valueOf(j11));
                            }
                            zzaoVar = new zzao(this.zzn, zza.zzc, str4, zza.zza, zza.zzd, 0L, zzc4);
                            zzaj zzajVar132 = this.zze;
                            zzak(zzajVar132);
                            zzn = zzajVar132.zzn(str4, zzaoVar.zzb);
                            if (zzn != null) {
                                zzaj zzajVar19 = this.zze;
                                zzak(zzajVar19);
                                if (zzajVar19.zzf(str4) >= zzg().zzb(str4) && zzah) {
                                    zzay().zzd().zzd("Too many event names used, ignoring event. appId, name, supported count", zzel.zzn(str4), this.zzn.zzj().zzd(zzaoVar.zzb), Integer.valueOf(zzg().zzb(str4)));
                                    zzv().zzM(this.zzC, str4, 8, null, null, 0);
                                    return;
                                }
                                zzc = new zzap(str4, zzaoVar.zzb, 0L, 0L, 0L, zzaoVar.zzd, 0L, null, null, null, null);
                            } else {
                                zzaoVar = zzaoVar.zza(this.zzn, zzn.zzf);
                                zzc = zzn.zzc(zzaoVar.zzd);
                            }
                            zzaj zzajVar142 = this.zze;
                            zzak(zzajVar142);
                            zzajVar142.zzF(zzc);
                            zzaz().zzg();
                            zzB();
                            Preconditions.checkNotNull(zzaoVar);
                            Preconditions.checkNotNull(zzpVar);
                            Preconditions.checkNotEmpty(zzaoVar.zza);
                            Preconditions.checkArgument(zzaoVar.zza.equals(zzpVar.zza));
                            zzu = com.google.android.gms.internal.measurement.zzfy.zzu();
                            zzu.zzaa(1);
                            zzu.zzW("android");
                            if (!TextUtils.isEmpty(zzpVar.zza)) {
                                zzu.zzA(zzpVar.zza);
                            }
                            if (!TextUtils.isEmpty(zzpVar.zzd)) {
                                zzu.zzC(zzpVar.zzd);
                            }
                            if (!TextUtils.isEmpty(zzpVar.zzc)) {
                                zzu.zzD(zzpVar.zzc);
                            }
                            j12 = zzpVar.zzj;
                            if (j12 != -2147483648L) {
                                zzu.zzE((int) j12);
                            }
                            zzu.zzS(zzpVar.zze);
                            if (!TextUtils.isEmpty(zzpVar.zzb)) {
                                zzu.zzR(zzpVar.zzb);
                            }
                            zzu.zzI(zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv)).zzi());
                            zzot.zzc();
                            if (!zzg().zzs(zzpVar.zza, zzdy.zzad)) {
                                if (TextUtils.isEmpty(zzu.zzan()) && !TextUtils.isEmpty(zzpVar.zzu)) {
                                    zzu.zzQ(zzpVar.zzu);
                                }
                                if (TextUtils.isEmpty(zzu.zzan()) && TextUtils.isEmpty(zzu.zzam()) && !TextUtils.isEmpty(zzpVar.zzq)) {
                                    zzu.zzy(zzpVar.zzq);
                                }
                            } else if (TextUtils.isEmpty(zzu.zzan()) && !TextUtils.isEmpty(zzpVar.zzq)) {
                                zzu.zzy(zzpVar.zzq);
                            }
                            j13 = zzpVar.zzf;
                            if (j13 != 0) {
                                zzu.zzJ(j13);
                            }
                            zzu.zzM(zzpVar.zzs);
                            zzku zzkuVar4 = this.zzi;
                            zzak(zzkuVar4);
                            zzc2 = zzdy.zzc(zzkuVar4.zzf.zzn.zzau());
                            if (zzc2 != null && zzc2.size() != 0) {
                                arrayList = new ArrayList();
                                int intValue32 = zzdy.zzO.zza(null).intValue();
                                for (Map.Entry<String, String> entry : zzc2.entrySet()) {
                                    if (entry.getKey().startsWith("measurement.id.")) {
                                        try {
                                            int parseInt = Integer.parseInt(entry.getValue());
                                            if (parseInt != 0) {
                                                arrayList.add(Integer.valueOf(parseInt));
                                                if (arrayList.size() >= intValue32) {
                                                    zzkuVar4.zzs.zzay().zzk().zzb("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                                                    break;
                                                }
                                                continue;
                                            } else {
                                                continue;
                                            }
                                        } catch (NumberFormatException e14) {
                                            zzkuVar4.zzs.zzay().zzk().zzb("Experiment ID NumberFormatException", e14);
                                        }
                                    }
                                }
                            }
                            arrayList = null;
                            if (arrayList != null) {
                                zzu.zzh(arrayList);
                            }
                            zzc3 = zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv));
                            if (zzc3.zzj()) {
                                Pair<String, Boolean> zzd2 = this.zzk.zzd(zzpVar.zza, zzc3);
                                if (!TextUtils.isEmpty((CharSequence) zzd2.first) && zzpVar.zzo) {
                                    zzu.zzab((String) zzd2.first);
                                    Object obj = zzd2.second;
                                    if (obj != null) {
                                        zzu.zzU(((Boolean) obj).booleanValue());
                                    }
                                }
                            }
                            this.zzn.zzg().zzu();
                            zzu.zzK(Build.MODEL);
                            this.zzn.zzg().zzu();
                            zzu.zzV(Build.VERSION.RELEASE);
                            zzu.zzaf((int) this.zzn.zzg().zzb());
                            zzu.zzaj(this.zzn.zzg().zzc());
                            zzg2 = zzg();
                            zzdxVar = zzdy.zzan;
                            if (!zzg2.zzs(null, zzdxVar)) {
                                zzu.zzz(zzpVar.zzl);
                            }
                            if (this.zzn.zzJ()) {
                                zzu.zzal();
                                if (!TextUtils.isEmpty(null)) {
                                    zzu.zzL(null);
                                }
                            }
                            zzaj zzajVar152 = this.zze;
                            zzak(zzajVar152);
                            zzj = zzajVar152.zzj(zzpVar.zza);
                            if (zzj == null) {
                                zzj = new zzg(this.zzn, zzpVar.zza);
                                zzj.zzI(zzw(zzc3));
                                zzj.zzW(zzpVar.zzk);
                                zzj.zzY(zzpVar.zzb);
                                if (zzc3.zzj()) {
                                    zzj.zzag(this.zzk.zzf(zzpVar.zza));
                                }
                                zzj.zzac(0L);
                                zzj.zzad(0L);
                                zzj.zzab(0L);
                                zzj.zzK(zzpVar.zzc);
                                zzj.zzL(zzpVar.zzj);
                                zzj.zzJ(zzpVar.zzd);
                                zzj.zzZ(zzpVar.zze);
                                zzj.zzT(zzpVar.zzf);
                                zzj.zzae(zzpVar.zzh);
                                if (!zzg().zzs(null, zzdxVar)) {
                                    zzj.zzH(zzpVar.zzl);
                                }
                                zzj.zzU(zzpVar.zzs);
                                zzaj zzajVar20 = this.zze;
                                zzak(zzajVar20);
                                zzajVar20.zzE(zzj);
                            }
                            if (zzc3.zzk() && !TextUtils.isEmpty(zzj.zzu())) {
                                zzu.zzB((String) Preconditions.checkNotNull(zzj.zzu()));
                            }
                            if (!TextUtils.isEmpty(zzj.zzx())) {
                                zzu.zzP((String) Preconditions.checkNotNull(zzj.zzx()));
                            }
                            zzaj zzajVar162 = this.zze;
                            zzak(zzajVar162);
                            zzu2 = zzajVar162.zzu(zzpVar.zza);
                            for (i10 = 0; i10 < zzu2.size(); i10++) {
                                com.google.android.gms.internal.measurement.zzgg zzd3 = com.google.android.gms.internal.measurement.zzgh.zzd();
                                zzd3.zzf(zzu2.get(i10).zzc);
                                zzd3.zzg(zzu2.get(i10).zzd);
                                zzku zzkuVar5 = this.zzi;
                                zzak(zzkuVar5);
                                zzkuVar5.zzv(zzd3, zzu2.get(i10).zze);
                                zzu.zzk(zzd3);
                            }
                            try {
                                zzajVar2 = this.zze;
                                zzak(zzajVar2);
                                com.google.android.gms.internal.measurement.zzfy zzfyVar2 = (com.google.android.gms.internal.measurement.zzfy) zzu.zzaA();
                                zzajVar2.zzg();
                                zzajVar2.zzY();
                                Preconditions.checkNotNull(zzfyVar2);
                                Preconditions.checkNotEmpty(zzfyVar2.zzy());
                                byte[] zzbs3 = zzfyVar2.zzbs();
                                zzku zzkuVar22 = zzajVar2.zzf.zzi;
                                zzak(zzkuVar22);
                                long zzd4 = zzkuVar22.zzd(zzbs3);
                                ContentValues contentValues22 = new ContentValues();
                                contentValues22.put("app_id", zzfyVar2.zzy());
                                String str52 = str2;
                                contentValues22.put(str52, Long.valueOf(zzd4));
                                contentValues22.put("metadata", zzbs3);
                                zzajVar2.zzh().insertWithOnConflict("raw_events_metadata", null, contentValues22, 4);
                                zzajVar3 = this.zze;
                                zzak(zzajVar3);
                                zzaqVar = new zzaq(zzaoVar.zzf);
                                while (true) {
                                    if (!zzaqVar.hasNext()) {
                                        if ("_r".equals(zzaqVar.next())) {
                                            break;
                                        }
                                    } else {
                                        zzfm zzfmVar4 = this.zzc;
                                        zzak(zzfmVar4);
                                        boolean zzn2 = zzfmVar4.zzn(zzaoVar.zza, zzaoVar.zzb);
                                        zzaj zzajVar21 = this.zze;
                                        zzak(zzajVar21);
                                        zzah zzl = zzajVar21.zzl(zza(), zzaoVar.zza, false, false, false, false, false);
                                        if (!zzn2 || zzl.zze >= zzg().zze(zzaoVar.zza, zzdy.zzn)) {
                                            i11 = 0;
                                        }
                                    }
                                }
                                zzajVar3.zzg();
                                zzajVar3.zzY();
                                Preconditions.checkNotNull(zzaoVar);
                                Preconditions.checkNotEmpty(zzaoVar.zza);
                                zzku zzkuVar32 = zzajVar3.zzf.zzi;
                                zzak(zzkuVar32);
                                byte[] zzbs22 = zzkuVar32.zzj(zzaoVar).zzbs();
                                contentValues = new ContentValues();
                                contentValues.put("app_id", zzaoVar.zza);
                                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaoVar.zzb);
                                contentValues.put("timestamp", Long.valueOf(zzaoVar.zzd));
                                contentValues.put(str52, Long.valueOf(zzd4));
                                contentValues.put("data", zzbs22);
                                contentValues.put("realtime", Integer.valueOf(i11));
                                if (zzajVar3.zzh().insert("raw_events", null, contentValues) != -1) {
                                    zzajVar3.zzs.zzay().zzd().zzb("Failed to insert raw event (got -1). appId", zzel.zzn(zzaoVar.zza));
                                } else {
                                    this.zza = 0L;
                                }
                            } catch (IOException e15) {
                                zzay().zzd().zzc("Data loss. Failed to insert raw event metadata. appId", zzel.zzn(zzu.zzal()), e15);
                            }
                            zzaj zzajVar172 = this.zze;
                            zzak(zzajVar172);
                            zzajVar172.zzD();
                            zzaj zzajVar182 = this.zze;
                            zzak(zzajVar182);
                            zzajVar182.zzy();
                            zzaf();
                            zzay().zzj().zzb("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / 1000000));
                            return;
                        }
                        z10 = true;
                    }
                    zzg = zza.zzb.zzg("currency");
                    if (!z10) {
                        double doubleValue = zza.zzb.zzd(AppMeasurementSdk.ConditionalUserProperty.VALUE).doubleValue() * 1000000.0d;
                        if (doubleValue == ShadowDrawableWrapper.COS_45) {
                            str = "_err";
                            double longValue2 = zza.zzb.zze(AppMeasurementSdk.ConditionalUserProperty.VALUE).longValue();
                            Double.isNaN(longValue2);
                            doubleValue = longValue2 * 1000000.0d;
                        } else {
                            str = "_err";
                        }
                        if (doubleValue <= 9.223372036854776E18d && doubleValue >= -9.223372036854776E18d) {
                            longValue = Math.round(doubleValue);
                            if ("refund".equals(zza.zza)) {
                                longValue = -longValue;
                            }
                        } else {
                            zzay().zzk().zzc("Data lost. Currency value is too big. appId", zzel.zzn(str4), Double.valueOf(doubleValue));
                            zzaj zzajVar22 = this.zze;
                            zzak(zzajVar22);
                            zzajVar22.zzD();
                            return;
                        }
                    } else {
                        str = "_err";
                        longValue = zza.zzb.zze(AppMeasurementSdk.ConditionalUserProperty.VALUE).longValue();
                    }
                    if (!TextUtils.isEmpty(zzg)) {
                        String upperCase = zzg.toUpperCase(Locale.US);
                        if (upperCase.matches("[A-Z]{3}")) {
                            String concat = upperCase.length() != 0 ? "_ltv_".concat(upperCase) : new String("_ltv_");
                            zzaj zzajVar23 = this.zze;
                            zzak(zzajVar23);
                            zzkx zzp2 = zzajVar23.zzp(str4, concat);
                            if (zzp2 != null) {
                                Object obj2 = zzp2.zze;
                                if (obj2 instanceof Long) {
                                    str2 = "metadata_fingerprint";
                                    str3 = str;
                                    zzkxVar = new zzkx(str4, zza.zzc, concat, zzav().currentTimeMillis(), Long.valueOf(((Long) obj2).longValue() + longValue));
                                    zzajVar = this.zze;
                                    zzak(zzajVar);
                                    if (!zzajVar.zzN(zzkxVar)) {
                                        zzay().zzd().zzd("Too many unique user properties are set. Ignoring user property. appId", zzel.zzn(str4), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                                        zzv().zzM(this.zzC, str4, 9, null, null, 0);
                                    }
                                    boolean zzah2 = zzkz.zzah(zza.zza);
                                    boolean equals2 = str3.equals(zza.zza);
                                    zzv();
                                    zzarVar = zza.zzb;
                                    if (zzarVar == null) {
                                    }
                                    zzaj zzajVar72 = this.zze;
                                    zzak(zzajVar72);
                                    zzah zzm2 = zzajVar72.zzm(zza(), str4, j10 + 1, true, zzah2, false, equals2, false);
                                    long j142 = zzm2.zzb;
                                    zzg();
                                    intValue = j142 - zzdy.zzj.zza(null).intValue();
                                    if (intValue > 0) {
                                    }
                                }
                            }
                            String str6 = str;
                            zzaj zzajVar24 = this.zze;
                            zzak(zzajVar24);
                            int zze = zzg().zze(str4, zzdy.zzD) - 1;
                            Preconditions.checkNotEmpty(str4);
                            zzajVar24.zzg();
                            zzajVar24.zzY();
                            SQLiteDatabase zzh = zzajVar24.zzh();
                            String str7 = str6;
                            String[] strArr = new String[3];
                            strArr[0] = str4;
                            strArr[1] = str4;
                            str2 = "metadata_fingerprint";
                            strArr[2] = String.valueOf(zze);
                            zzh.execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", strArr);
                            str3 = str7;
                            zzkxVar = new zzkx(str4, zza.zzc, concat, zzav().currentTimeMillis(), Long.valueOf(longValue));
                            zzajVar = this.zze;
                            zzak(zzajVar);
                            if (!zzajVar.zzN(zzkxVar)) {
                            }
                            boolean zzah22 = zzkz.zzah(zza.zza);
                            boolean equals22 = str3.equals(zza.zza);
                            zzv();
                            zzarVar = zza.zzb;
                            if (zzarVar == null) {
                            }
                            zzaj zzajVar722 = this.zze;
                            zzak(zzajVar722);
                            zzah zzm22 = zzajVar722.zzm(zza(), str4, j10 + 1, true, zzah22, false, equals22, false);
                            long j1422 = zzm22.zzb;
                            zzg();
                            intValue = j1422 - zzdy.zzj.zza(null).intValue();
                            if (intValue > 0) {
                            }
                        }
                    }
                    str2 = "metadata_fingerprint";
                    str3 = str;
                    boolean zzah222 = zzkz.zzah(zza.zza);
                    boolean equals222 = str3.equals(zza.zza);
                    zzv();
                    zzarVar = zza.zzb;
                    if (zzarVar == null) {
                    }
                    zzaj zzajVar7222 = this.zze;
                    zzak(zzajVar7222);
                    zzah zzm222 = zzajVar7222.zzm(zza(), str4, j10 + 1, true, zzah222, false, equals222, false);
                    long j14222 = zzm222.zzb;
                    zzg();
                    intValue = j14222 - zzdy.zzj.zza(null).intValue();
                    if (intValue > 0) {
                    }
                }
                z10 = true;
                if (!"_iap".equals(zza.zza)) {
                }
                zzg = zza.zzb.zzg("currency");
                if (!z10) {
                }
                if (!TextUtils.isEmpty(zzg)) {
                }
                str2 = "metadata_fingerprint";
                str3 = str;
                boolean zzah2222 = zzkz.zzah(zza.zza);
                boolean equals2222 = str3.equals(zza.zza);
                zzv();
                zzarVar = zza.zzb;
                if (zzarVar == null) {
                }
                zzaj zzajVar72222 = this.zze;
                zzak(zzajVar72222);
                zzah zzm2222 = zzajVar72222.zzm(zza(), str4, j10 + 1, true, zzah2222, false, equals2222, false);
                long j142222 = zzm2222.zzb;
                zzg();
                intValue = j142222 - zzdy.zzj.zza(null).intValue();
                if (intValue > 0) {
                }
            } finally {
                zzaj zzajVar25 = this.zze;
                zzak(zzajVar25);
                zzajVar25.zzy();
            }
        } else {
            zzd(zzpVar);
        }
    }

    @VisibleForTesting
    public final boolean zzX() {
        FileLock fileLock;
        zzaz().zzg();
        if (zzg().zzs(null, zzdy.zzac) && (fileLock = this.zzw) != null && fileLock.isValid()) {
            zzay().zzj().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzs.zzf();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.zzn.zzau().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzx = channel;
            FileLock tryLock = channel.tryLock();
            this.zzw = tryLock;
            if (tryLock != null) {
                zzay().zzj().zza("Storage concurrent access okay");
                return true;
            }
            zzay().zzd().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e10) {
            zzay().zzd().zzb("Failed to acquire storage lock", e10);
            return false;
        } catch (IOException e11) {
            zzay().zzd().zzb("Failed to access storage lock file", e11);
            return false;
        } catch (OverlappingFileLockException e12) {
            zzay().zzk().zzb("Storage lock already acquired", e12);
            return false;
        }
    }

    public final long zza() {
        long currentTimeMillis = zzav().currentTimeMillis();
        zzjp zzjpVar = this.zzk;
        zzjpVar.zzY();
        zzjpVar.zzg();
        long zza = zzjpVar.zze.zza();
        if (zza == 0) {
            zza = zzjpVar.zzs.zzv().zzF().nextInt(86400000) + 1;
            zzjpVar.zze.zzb(zza);
        }
        return ((((currentTimeMillis + zza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Context zzau() {
        return this.zzn.zzau();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Clock zzav() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzaa zzaw() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzel zzay() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzay();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzfs zzaz() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzaz();
    }

    public final zzg zzd(zzp zzpVar) {
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzj = zzajVar.zzj(zzpVar.zza);
        zzag zzc = zzh(zzpVar.zza).zzc(zzag.zzb(zzpVar.zzv));
        String zzf = zzc.zzj() ? this.zzk.zzf(zzpVar.zza) : "";
        if (zzj == null) {
            zzj = new zzg(this.zzn, zzpVar.zza);
            if (zzc.zzk()) {
                zzj.zzI(zzw(zzc));
            }
            if (zzc.zzj()) {
                zzj.zzag(zzf);
            }
        } else if (zzc.zzj() && zzf != null && !zzf.equals(zzj.zzB())) {
            zzj.zzag(zzf);
            zzj.zzI(zzw(zzc));
            zzna.zzc();
            if (zzg().zzs(null, zzdy.zzay) && !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzpVar.zza, zzc).first)) {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                if (zzajVar2.zzp(zzpVar.zza, "_id") != null) {
                    zzaj zzajVar3 = this.zze;
                    zzak(zzajVar3);
                    if (zzajVar3.zzp(zzpVar.zza, "_lair") == null) {
                        zzkx zzkxVar = new zzkx(zzpVar.zza, "auto", "_lair", zzav().currentTimeMillis(), 1L);
                        zzaj zzajVar4 = this.zze;
                        zzak(zzajVar4);
                        zzajVar4.zzN(zzkxVar);
                    }
                }
            }
        } else if (TextUtils.isEmpty(zzj.zzu()) && zzc.zzk()) {
            zzj.zzI(zzw(zzc));
        }
        zzj.zzY(zzpVar.zzb);
        zzj.zzF(zzpVar.zzq);
        zzot.zzc();
        if (zzg().zzs(zzj.zzt(), zzdy.zzad)) {
            zzj.zzX(zzpVar.zzu);
        }
        if (!TextUtils.isEmpty(zzpVar.zzk)) {
            zzj.zzW(zzpVar.zzk);
        }
        long j10 = zzpVar.zze;
        if (j10 != 0) {
            zzj.zzZ(j10);
        }
        if (!TextUtils.isEmpty(zzpVar.zzc)) {
            zzj.zzK(zzpVar.zzc);
        }
        zzj.zzL(zzpVar.zzj);
        String str = zzpVar.zzd;
        if (str != null) {
            zzj.zzJ(str);
        }
        zzj.zzT(zzpVar.zzf);
        zzj.zzae(zzpVar.zzh);
        if (!TextUtils.isEmpty(zzpVar.zzg)) {
            zzj.zzaa(zzpVar.zzg);
        }
        if (!zzg().zzs(null, zzdy.zzan)) {
            zzj.zzH(zzpVar.zzl);
        }
        zzj.zzG(zzpVar.zzo);
        zzj.zzaf(zzpVar.zzr);
        zzj.zzU(zzpVar.zzs);
        if (zzj.zzak()) {
            zzaj zzajVar5 = this.zze;
            zzak(zzajVar5);
            zzajVar5.zzE(zzj);
        }
        return zzj;
    }

    public final zzz zzf() {
        zzz zzzVar = this.zzh;
        zzak(zzzVar);
        return zzzVar;
    }

    public final zzaf zzg() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzf();
    }

    public final zzag zzh(String str) {
        String str2;
        zzaz().zzg();
        zzB();
        zzag zzagVar = this.zzB.get(str);
        if (zzagVar != null) {
            return zzagVar;
        }
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        Preconditions.checkNotNull(str);
        zzajVar.zzg();
        zzajVar.zzY();
        Cursor cursor = null;
        try {
            try {
                cursor = zzajVar.zzh().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursor.moveToFirst()) {
                    str2 = cursor.getString(0);
                    cursor.close();
                } else {
                    cursor.close();
                    str2 = "G1";
                }
                zzag zzb2 = zzag.zzb(str2);
                zzT(str, zzb2);
                return zzb2;
            } catch (SQLiteException e10) {
                zzajVar.zzs.zzay().zzd().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final zzaj zzi() {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        return zzajVar;
    }

    public final zzeg zzj() {
        return this.zzn.zzj();
    }

    public final zzer zzl() {
        zzer zzerVar = this.zzd;
        zzak(zzerVar);
        return zzerVar;
    }

    public final zzet zzm() {
        zzet zzetVar = this.zzf;
        if (zzetVar != null) {
            return zzetVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfm zzo() {
        zzfm zzfmVar = this.zzc;
        zzak(zzfmVar);
        return zzfmVar;
    }

    public final zzfv zzq() {
        return this.zzn;
    }

    public final zzif zzr() {
        zzif zzifVar = this.zzj;
        zzak(zzifVar);
        return zzifVar;
    }

    public final zzjp zzs() {
        return this.zzk;
    }

    public final zzku zzu() {
        zzku zzkuVar = this.zzi;
        zzak(zzkuVar);
        return zzkuVar;
    }

    public final zzkz zzv() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzv();
    }

    public final String zzw(zzag zzagVar) {
        if (!zzagVar.zzk()) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzv().zzF().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final String zzx(zzp zzpVar) {
        try {
            return (String) zzaz().zzh(new zzkn(this, zzpVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            zzay().zzd().zzc("Failed to get app instance id. appId", zzel.zzn(zzpVar.zza), e10);
            return null;
        }
    }

    public final void zzz(Runnable runnable) {
        zzaz().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }
}
