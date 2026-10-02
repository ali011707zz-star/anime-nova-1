package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzhu<T> {
    public static final /* synthetic */ int zzc = 0;

    @Nullable
    private static volatile zzhs zze = null;
    private static volatile boolean zzf = false;
    public final zzhr zza;
    public final String zzb;
    private final T zzj;
    private volatile int zzk = -1;
    private volatile T zzl;
    private final boolean zzm;
    private static final Object zzd = new Object();
    private static final AtomicReference<Collection<zzhu<?>>> zzg = new AtomicReference<>();
    private static final zzhw zzh = new zzhw(new Object() { // from class: com.google.android.gms.internal.measurement.zzhl
    }, null);
    private static final AtomicInteger zzi = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzhu(zzhr zzhrVar, String str, Object obj, boolean z10, zzht zzhtVar) {
        if (zzhrVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zza = zzhrVar;
        this.zzb = str;
        this.zzj = obj;
        this.zzm = true;
    }

    @Deprecated
    public static void zzd(final Context context) {
        synchronized (zzd) {
            zzhs zzhsVar = zze;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzhsVar == null || zzhsVar.zza() != context) {
                zzha.zze();
                zzhv.zzc();
                zzhh.zze();
                zze = new zzgx(context, zzif.zza(new zzib() { // from class: com.google.android.gms.internal.measurement.zzhm
                    @Override // com.google.android.gms.internal.measurement.zzib
                    public final Object zza() {
                        zzhz zzc2;
                        zzhz zzc3;
                        Context context2 = context;
                        int i10 = zzhu.zzc;
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
                            return zzhz.zzc();
                        }
                        if (zzgw.zza() && !context2.isDeviceProtectedStorage()) {
                            context2 = context2.createDeviceProtectedStorageContext();
                        }
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            try {
                                File file = new File(context2.getDir("phenotype_hermetic", 0), "overrides.txt");
                                zzc2 = file.exists() ? zzhz.zzd(file) : zzhz.zzc();
                            } catch (RuntimeException unused) {
                                zzc2 = zzhz.zzc();
                            }
                            if (zzc2.zzb()) {
                                File file2 = (File) zzc2.zza();
                                try {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                    try {
                                        HashMap hashMap = new HashMap();
                                        HashMap hashMap2 = new HashMap();
                                        while (true) {
                                            String readLine = bufferedReader.readLine();
                                            if (readLine == null) {
                                                break;
                                            }
                                            String[] split = readLine.split(" ", 3);
                                            if (split.length != 3) {
                                                if (readLine.length() != 0) {
                                                    "Invalid: ".concat(readLine);
                                                }
                                            } else {
                                                String str3 = new String(split[0]);
                                                String decode = Uri.decode(new String(split[1]));
                                                String str4 = (String) hashMap2.get(split[2]);
                                                if (str4 == null) {
                                                    String str5 = new String(split[2]);
                                                    str4 = Uri.decode(str5);
                                                    if (str4.length() < 1024 || str4 == str5) {
                                                        hashMap2.put(str5, str4);
                                                    }
                                                }
                                                if (!hashMap.containsKey(str3)) {
                                                    hashMap.put(str3, new HashMap());
                                                }
                                                ((Map) hashMap.get(str3)).put(decode, str4);
                                            }
                                        }
                                        String valueOf = String.valueOf(file2);
                                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
                                        sb2.append("Parsed ");
                                        sb2.append(valueOf);
                                        zzhi zzhiVar = new zzhi(hashMap);
                                        bufferedReader.close();
                                        zzc3 = zzhz.zzd(zzhiVar);
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Throwable unused2) {
                                        }
                                        throw th;
                                    }
                                } catch (IOException e10) {
                                    throw new RuntimeException(e10);
                                }
                            } else {
                                zzc3 = zzhz.zzc();
                            }
                            return zzc3;
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    }
                }));
                zzi.incrementAndGet();
            }
        }
    }

    public static void zze() {
        zzi.incrementAndGet();
    }

    public abstract T zza(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e7 A[Catch: all -> 0x010f, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0060, B:28:0x00d7, B:30:0x00e7, B:32:0x00fb, B:33:0x00fe, B:34:0x0102, B:35:0x00af, B:37:0x00b5, B:40:0x00c7, B:42:0x00cd, B:44:0x00d5, B:45:0x00c5, B:47:0x0065, B:49:0x006b, B:51:0x0079, B:53:0x009e, B:55:0x00a8, B:57:0x0090, B:58:0x0107, B:59:0x010c, B:60:0x010d), top: B:11:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af A[Catch: all -> 0x010f, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0060, B:28:0x00d7, B:30:0x00e7, B:32:0x00fb, B:33:0x00fe, B:34:0x0102, B:35:0x00af, B:37:0x00b5, B:40:0x00c7, B:42:0x00cd, B:44:0x00d5, B:45:0x00c5, B:47:0x0065, B:49:0x006b, B:51:0x0079, B:53:0x009e, B:55:0x00a8, B:57:0x0090, B:58:0x0107, B:59:0x010c, B:60:0x010d), top: B:11:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5 A[Catch: all -> 0x010f, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0060, B:28:0x00d7, B:30:0x00e7, B:32:0x00fb, B:33:0x00fe, B:34:0x0102, B:35:0x00af, B:37:0x00b5, B:40:0x00c7, B:42:0x00cd, B:44:0x00d5, B:45:0x00c5, B:47:0x0065, B:49:0x006b, B:51:0x0079, B:53:0x009e, B:55:0x00a8, B:57:0x0090, B:58:0x0107, B:59:0x010c, B:60:0x010d), top: B:11:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final T zzb() {
        zzhe zza;
        Object zzb;
        T zza2;
        zzhz<zzhi> zza3;
        if (!this.zzm && this.zzb == null) {
            throw new NullPointerException("flagName must not be null");
        }
        int i10 = zzi.get();
        if (this.zzk < i10) {
            synchronized (this) {
                if (this.zzk < i10) {
                    zzhs zzhsVar = zze;
                    if (zzhsVar != null) {
                        boolean z10 = this.zza.zzf;
                        String zzb2 = zzhh.zza(zzhsVar.zza()).zzb("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
                        if (zzb2 != null && zzgv.zzc.matcher(zzb2).matches()) {
                            if (Log.isLoggable("PhenotypeFlag", 3)) {
                                String valueOf = String.valueOf(zzc());
                                if (valueOf.length() != 0) {
                                    "Bypass reading Phenotype values for flag: ".concat(valueOf);
                                }
                            }
                        } else {
                            if (this.zza.zzb != null) {
                                if (zzhj.zza(zzhsVar.zza(), this.zza.zzb)) {
                                    boolean z11 = this.zza.zzh;
                                    zza = zzha.zza(zzhsVar.zza().getContentResolver(), this.zza.zzb);
                                } else {
                                    zza = null;
                                }
                            } else {
                                Context zza4 = zzhsVar.zza();
                                String str = this.zza.zza;
                                zza = zzhv.zza(zza4, null);
                            }
                            if (zza != null && (zzb = zza.zzb(zzc())) != null) {
                                zza2 = zza(zzb);
                                if (zza2 == null) {
                                    if (!this.zza.zze) {
                                        String zzb3 = zzhh.zza(zzhsVar.zza()).zzb(this.zza.zze ? null : this.zzb);
                                        if (zzb3 != null) {
                                            zza2 = zza(zzb3);
                                            if (zza2 == null) {
                                                zza2 = this.zzj;
                                            }
                                        }
                                    }
                                    zza2 = null;
                                    if (zza2 == null) {
                                    }
                                }
                                zza3 = zzhsVar.zzb().zza();
                                if (zza3.zzb()) {
                                    zzhi zza5 = zza3.zza();
                                    zzhr zzhrVar = this.zza;
                                    String zza6 = zza5.zza(zzhrVar.zzb, null, zzhrVar.zzd, this.zzb);
                                    zza2 = zza6 == null ? this.zzj : zza(zza6);
                                }
                                this.zzl = zza2;
                                this.zzk = i10;
                            }
                        }
                        zza2 = null;
                        if (zza2 == null) {
                        }
                        zza3 = zzhsVar.zzb().zza();
                        if (zza3.zzb()) {
                        }
                        this.zzl = zza2;
                        this.zzk = i10;
                    } else {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                }
            }
        }
        return this.zzl;
    }

    public final String zzc() {
        String str = this.zza.zzd;
        return this.zzb;
    }
}
