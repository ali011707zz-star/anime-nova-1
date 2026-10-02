package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@ShowFirstParty
@KeepForSdk
@CheckReturnValue
/* loaded from: classes.dex */
public class GoogleSignatureVerifier {

    @Nullable
    private static GoogleSignatureVerifier zza;
    private final Context zzb;
    private volatile String zzc;

    public GoogleSignatureVerifier(@RecentlyNonNull Context context) {
        this.zzb = context.getApplicationContext();
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GoogleSignatureVerifier getInstance(@RecentlyNonNull Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            if (zza == null) {
                zzm.zza(context);
                zza = new GoogleSignatureVerifier(context);
            }
        }
        return zza;
    }

    @Nullable
    public static final zzi zza(PackageInfo packageInfo, zzi... zziVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        zzj zzjVar = new zzj(packageInfo.signatures[0].toByteArray());
        for (int i10 = 0; i10 < zziVarArr.length; i10++) {
            if (zziVarArr[i10].equals(zzjVar)) {
                return zziVarArr[i10];
            }
        }
        return null;
    }

    public static final boolean zzb(@RecentlyNonNull PackageInfo packageInfo, boolean z10) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z10 ? zza(packageInfo, zzl.zza) : zza(packageInfo, zzl.zza[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private final zzw zzc(String str, boolean z10, boolean z11) {
        zzw zzd;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return zzw.zzd("null pkg");
        }
        if (!str.equals(this.zzc)) {
            if (zzm.zzd()) {
                zzd = zzm.zzb(str, GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzb), false, false);
            } else {
                try {
                    PackageInfo packageInfo = this.zzb.getPackageManager().getPackageInfo(str, 64);
                    boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzb);
                    if (packageInfo == null) {
                        zzd = zzw.zzd("null pkg");
                    } else {
                        Signature[] signatureArr = packageInfo.signatures;
                        if (signatureArr != null && signatureArr.length == 1) {
                            zzj zzjVar = new zzj(packageInfo.signatures[0].toByteArray());
                            String str2 = packageInfo.packageName;
                            zzw zzc = zzm.zzc(str2, zzjVar, honorsDebugCertificates, false);
                            zzd = (!zzc.zza || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !zzm.zzc(str2, zzjVar, false, true).zza) ? zzc : zzw.zzd("debuggable release cert app rejected");
                        } else {
                            zzd = zzw.zzd("single cert required");
                        }
                    }
                } catch (PackageManager.NameNotFoundException e10) {
                    return zzw.zze(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e10);
                }
            }
            if (zzd.zza) {
                this.zzc = str;
            }
            return zzd;
        }
        return zzw.zzb();
    }

    @KeepForSdk
    public boolean isGooglePublicSignedPackage(@RecentlyNonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzb(packageInfo, false)) {
            return true;
        }
        return zzb(packageInfo, true) && GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzb);
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isPackageGoogleSigned(@RecentlyNonNull String str) {
        zzw zzc = zzc(str, false, false);
        zzc.zzf();
        return zzc.zza;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isUidGoogleSigned(int i10) {
        zzw zzd;
        int length;
        String[] packagesForUid = this.zzb.getPackageManager().getPackagesForUid(i10);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            zzd = null;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    zzd = zzc(packagesForUid[i11], false, false);
                    if (zzd.zza) {
                        break;
                    }
                    i11++;
                } else {
                    Preconditions.checkNotNull(zzd);
                    break;
                }
            }
        } else {
            zzd = zzw.zzd("no pkgs");
        }
        zzd.zzf();
        return zzd.zza;
    }
}
