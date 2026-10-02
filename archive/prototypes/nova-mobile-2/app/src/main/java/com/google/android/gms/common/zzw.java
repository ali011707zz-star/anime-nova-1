package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@CheckReturnValue
/* loaded from: classes.dex */
public class zzw {
    private static final zzw zzd = new zzw(true, null, null);
    public final boolean zza;

    @Nullable
    public final String zzb;

    @Nullable
    public final Throwable zzc;

    public zzw(boolean z10, @Nullable String str, @Nullable Throwable th) {
        this.zza = z10;
        this.zzb = str;
        this.zzc = th;
    }

    public static zzw zzb() {
        return zzd;
    }

    public static zzw zzc(Callable<String> callable) {
        return new zzv(callable, null);
    }

    public static zzw zzd(String str) {
        return new zzw(false, str, null);
    }

    public static zzw zze(String str, Throwable th) {
        return new zzw(false, str, th);
    }

    public static String zzg(String str, zzi zziVar, boolean z10, boolean z11) {
        String str2 = true != z11 ? "not allowed" : "debug cert rejected";
        MessageDigest zza = AndroidUtilsLight.zza("SHA-1");
        Preconditions.checkNotNull(zza);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza.digest(zziVar.zzc())), Boolean.valueOf(z10), "12451000.false");
    }

    @Nullable
    public String zza() {
        return this.zzb;
    }

    public final void zzf() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            zza();
        } else {
            zza();
        }
    }
}
