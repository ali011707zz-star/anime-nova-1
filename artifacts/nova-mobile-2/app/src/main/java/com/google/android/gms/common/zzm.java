package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@CheckReturnValue
/* loaded from: classes.dex */
public final class zzm {
    private static volatile zzae zze;
    private static Context zzg;
    public static final zzk zza = new zze(zzi.zzf("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    public static final zzk zzb = new zzf(zzi.zzf("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    public static final zzk zzc = new zzg(zzi.zzf("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
    public static final zzk zzd = new zzh(zzi.zzf("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
    private static final Object zzf = new Object();

    public static synchronized void zza(Context context) {
        synchronized (zzm.class) {
            if (zzg == null) {
                if (context != null) {
                    zzg = context.getApplicationContext();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.dynamic.IObjectWrapper, android.os.IBinder] */
    public static zzw zzb(String str, boolean z10, boolean z11, boolean z12) {
        zzw zze2;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzf();
                try {
                    zzq zzf2 = zze.zzf(new zzn(str, z10, false, ObjectWrapper.wrap(zzg), false));
                    if (zzf2.zza()) {
                        zze2 = zzw.zzb();
                    } else {
                        String zzb2 = zzf2.zzb();
                        if (zzb2 == null) {
                            zzb2 = "error checking package certificate";
                        }
                        zze2 = zzf2.zzc() == 4 ? zzw.zze(zzb2, new PackageManager.NameNotFoundException()) : zzw.zzd(zzb2);
                    }
                } catch (RemoteException e10) {
                    zze2 = zzw.zze("module call", e10);
                }
            } catch (DynamiteModule.LoadingException e11) {
                String valueOf = String.valueOf(e11.getMessage());
                zze2 = zzw.zze(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e11);
            }
            return zze2;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static zzw zzc(String str, zzi zziVar, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzg(str, zziVar, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static boolean zzd() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zzf();
            boolean zzg2 = zze.zzg();
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzg2;
        } catch (RemoteException | DynamiteModule.LoadingException unused) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    private static void zzf() throws DynamiteModule.LoadingException {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            if (zze == null) {
                zze = zzad.zzb(DynamiteModule.load(zzg, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }

    private static zzw zzg(final String str, final zzi zziVar, final boolean z10, boolean z11) {
        try {
            zzf();
            Preconditions.checkNotNull(zzg);
            try {
                return zze.zze(new zzs(str, zziVar, z10, z11), ObjectWrapper.wrap(zzg.getPackageManager())) ? zzw.zzb() : zzw.zzc(new Callable(z10, str, zziVar) { // from class: com.google.android.gms.common.zzd
                    private final boolean zza;
                    private final String zzb;
                    private final zzi zzc;

                    {
                        this.zza = z10;
                        this.zzb = str;
                        this.zzc = zziVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        String zzg2;
                        zzg2 = zzw.zzg(this.zzb, this.zzc, this.zza, !r3 && zzm.zzg(r4, r5, true, false).zza);
                        return zzg2;
                    }
                });
            } catch (RemoteException e10) {
                return zzw.zze("module call", e10);
            }
        } catch (DynamiteModule.LoadingException e11) {
            String valueOf = String.valueOf(e11.getMessage());
            return zzw.zze(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e11);
        }
    }
}
