package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.common.zzi;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class AndroidUtilsLight {
    private static volatile int zza = -1;

    @RecentlyNonNull
    @Deprecated
    @KeepForSdk
    @TargetApi(24)
    public static Context getDeviceProtectedStorageContext(@RecentlyNonNull Context context) {
        return (!zzi.zza() || context.isDeviceProtectedStorage()) ? context : context.createDeviceProtectedStorageContext();
    }

    @RecentlyNullable
    @KeepForSdk
    @Deprecated
    public static byte[] getPackageCertificateHashBytes(@RecentlyNonNull Context context, @RecentlyNonNull String str) throws PackageManager.NameNotFoundException {
        MessageDigest zza2;
        PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (zza2 = zza("SHA1")) == null) {
            return null;
        }
        return zza2.digest(packageInfo.signatures[0].toByteArray());
    }

    @RecentlyNullable
    public static MessageDigest zza(@RecentlyNonNull String str) {
        MessageDigest messageDigest;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
