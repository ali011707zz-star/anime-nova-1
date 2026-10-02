package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import o7.e;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class GooglePlayServicesUtilLight {

    @KeepForSdk
    public static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;

    @KeepForSdk
    public static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;

    @RecentlyNonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = "com.google.android.play.games";

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @KeepForSdk
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;

    @RecentlyNonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    @VisibleForTesting
    public static boolean zza = false;
    private static boolean zzb = false;

    @VisibleForTesting
    @KeepForSdk
    public static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    @KeepForSdk
    public GooglePlayServicesUtilLight() {
    }

    @KeepForSdk
    @Deprecated
    public static void cancelAvailabilityErrorNotifications(@RecentlyNonNull Context context) {
        if (sCanceledAvailabilityNotification.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
            }
        } catch (SecurityException unused) {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @KeepForSdk
    @Deprecated
    public static void ensurePlayServicesAvailable(@RecentlyNonNull Context context, int i10) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i10);
        if (isGooglePlayServicesAvailable != 0) {
            Intent errorResolutionIntent = GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(context, isGooglePlayServicesAvailable, e.f11821u);
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("GooglePlayServices not available due to error ");
            sb2.append(isGooglePlayServicesAvailable);
            if (errorResolutionIntent == null) {
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
            }
            throw new GooglePlayServicesRepairableException(isGooglePlayServicesAvailable, "Google Play Services not available", errorResolutionIntent);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getApkVersion(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getClientVersion(@RecentlyNonNull Context context) {
        Preconditions.checkState(true);
        return ClientLibraryUtils.getClientVersion(context, context.getPackageName());
    }

    @RecentlyNullable
    @KeepForSdk
    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i10, @RecentlyNonNull Context context, int i11) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, i10, i11);
    }

    @VisibleForTesting
    @KeepForSdk
    @Deprecated
    public static String getErrorString(int i10) {
        return ConnectionResult.zza(i10);
    }

    @RecentlyNullable
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i10) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, i10, null);
    }

    @RecentlyNullable
    @KeepForSdk
    public static Context getRemoteContext(@RecentlyNonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @RecentlyNullable
    @KeepForSdk
    public static Resources getRemoteResource(@RecentlyNonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static boolean honorsDebugCertificates(@RecentlyNonNull Context context) {
        if (!zza) {
            try {
                PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo("com.google.android.gms", 64);
                GoogleSignatureVerifier.getInstance(context);
                if (packageInfo == null || GoogleSignatureVerifier.zzb(packageInfo, false) || !GoogleSignatureVerifier.zzb(packageInfo, true)) {
                    zzb = false;
                } else {
                    zzb = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } finally {
                zza = true;
            }
        }
        return zzb || !DeviceProperties.isUserBuild();
    }

    @HideFirstParty
    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@RecentlyNonNull Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @KeepForSdk
    @Deprecated
    public static boolean isGooglePlayServicesUid(@RecentlyNonNull Context context, int i10) {
        return UidVerifier.isGooglePlayServicesUid(context, i10);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(@RecentlyNonNull Context context, int i10) {
        if (i10 == 18) {
            return true;
        }
        if (i10 == 1) {
            return zza(context, "com.google.android.gms");
        }
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(@RecentlyNonNull Context context, int i10) {
        if (i10 == 9) {
            return zza(context, "com.android.vending");
        }
        return false;
    }

    @KeepForSdk
    @TargetApi(18)
    public static boolean isRestrictedUserProfile(@RecentlyNonNull Context context) {
        if (!PlatformVersion.isAtLeastJellyBeanMR2()) {
            return false;
        }
        Object systemService = context.getSystemService("user");
        Preconditions.checkNotNull(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @VisibleForTesting
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static boolean isSidewinderDevice(@RecentlyNonNull Context context) {
        return DeviceProperties.isSidewinder(context);
    }

    @KeepForSdk
    @Deprecated
    public static boolean isUserRecoverableError(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 9;
    }

    @KeepForSdk
    @TargetApi(19)
    @Deprecated
    public static boolean uidHasPackageName(@RecentlyNonNull Context context, int i10, @RecentlyNonNull String str) {
        return UidVerifier.uidHasPackageName(context, i10, str);
    }

    @TargetApi(21)
    public static boolean zza(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        if (PlatformVersion.isAtLeastLollipop()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it2 = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it2.hasNext()) {
                    if (str.equals(it2.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        return applicationInfo.enabled && !isRestrictedUserProfile(context);
    }

    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@RecentlyNonNull Context context, int i10) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !zzc.get()) {
            int zzb2 = zzaf.zzb(context);
            if (zzb2 != 0) {
                if (zzb2 != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                    throw new GooglePlayServicesIncorrectManifestValueException(zzb2);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        boolean z10 = (DeviceProperties.isWearableWithoutPlayStore(context) || DeviceProperties.zzb(context)) ? false : true;
        Preconditions.checkArgument(i10 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z10) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing.");
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            GoogleSignatureVerifier.getInstance(context);
            if (!GoogleSignatureVerifier.zzb(packageInfo2, true)) {
                String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid.");
            } else {
                if (z10) {
                    Preconditions.checkNotNull(packageInfo);
                    if (!GoogleSignatureVerifier.zzb(packageInfo, true)) {
                        String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid.");
                    }
                }
                if (z10 && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services.");
                } else {
                    if (com.google.android.gms.common.util.zza.zza(packageInfo2.versionCode) < com.google.android.gms.common.util.zza.zza(i10)) {
                        int i11 = packageInfo2.versionCode;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(packageName).length() + 82);
                        sb2.append("Google Play services out of date for ");
                        sb2.append(packageName);
                        sb2.append(".  Requires ");
                        sb2.append(i10);
                        sb2.append(" but found ");
                        sb2.append(i11);
                        return 2;
                    }
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e10) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e10);
                            return 1;
                        }
                    }
                    return !applicationInfo.enabled ? 3 : 0;
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            String.valueOf(packageName).concat(" requires Google Play services, but they are missing.");
            return 1;
        }
    }
}
