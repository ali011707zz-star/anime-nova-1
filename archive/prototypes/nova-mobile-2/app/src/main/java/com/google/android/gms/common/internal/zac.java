package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.base.R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;
import m0.d;
import s.g;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zac {

    @GuardedBy("sCache")
    private static final g<String, String> zaa = new g<>();

    @GuardedBy("sCache")
    private static Locale zab;

    public static String zaa(Context context, int i10) {
        Resources resources = context.getResources();
        switch (i10) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                return zai(context, "common_google_play_services_invalid_account_title");
            case 7:
                return zai(context, "common_google_play_services_network_error_title");
            case 8:
            case 9:
            case 10:
            case 11:
            case 16:
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb2 = new StringBuilder(33);
                sb2.append("Unexpected error code ");
                sb2.append(i10);
                return null;
            case 17:
                return zai(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                return zai(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String zab(Context context, int i10) {
        String zaa2;
        if (i10 == 6) {
            zaa2 = zai(context, "common_google_play_services_resolution_required_title");
        } else {
            zaa2 = zaa(context, i10);
        }
        return zaa2 == null ? context.getResources().getString(R.string.common_google_play_services_notification_ticker) : zaa2;
    }

    public static String zac(Context context, int i10) {
        Resources resources = context.getResources();
        String zaf = zaf(context);
        if (i10 == 1) {
            return resources.getString(R.string.common_google_play_services_install_text, zaf);
        }
        if (i10 == 2) {
            return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, zaf);
        }
        if (i10 == 3) {
            return resources.getString(R.string.common_google_play_services_enable_text, zaf);
        }
        if (i10 == 5) {
            return zah(context, "common_google_play_services_invalid_account_text", zaf);
        }
        if (i10 == 7) {
            return zah(context, "common_google_play_services_network_error_text", zaf);
        }
        if (i10 == 9) {
            return resources.getString(R.string.common_google_play_services_unsupported_text, zaf);
        }
        if (i10 != 20) {
            switch (i10) {
                case 16:
                    return zah(context, "common_google_play_services_api_unavailable_text", zaf);
                case 17:
                    return zah(context, "common_google_play_services_sign_in_failed_text", zaf);
                case 18:
                    return resources.getString(R.string.common_google_play_services_updating_text, zaf);
                default:
                    return resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue, zaf);
            }
        }
        return zah(context, "common_google_play_services_restricted_profile_text", zaf);
    }

    public static String zad(Context context, int i10) {
        if (i10 != 6 && i10 != 19) {
            return zac(context, i10);
        }
        return zah(context, "common_google_play_services_resolution_required_text", zaf(context));
    }

    public static String zae(Context context, int i10) {
        Resources resources = context.getResources();
        if (i10 == 1) {
            return resources.getString(R.string.common_google_play_services_install_button);
        }
        if (i10 == 2) {
            return resources.getString(R.string.common_google_play_services_update_button);
        }
        if (i10 != 3) {
            return resources.getString(android.R.string.ok);
        }
        return resources.getString(R.string.common_google_play_services_enable_button);
    }

    public static String zaf(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String zag(Context context) {
        return context.getResources().getString(R.string.common_google_play_services_notification_channel_name);
    }

    private static String zah(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String zai = zai(context, str);
        if (zai == null) {
            zai = resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, zai, str2);
    }

    private static String zai(Context context, String str) {
        g<String, String> gVar = zaa;
        synchronized (gVar) {
            Locale c10 = d.a(context.getResources().getConfiguration()).c(0);
            if (!c10.equals(zab)) {
                gVar.clear();
                zab = c10;
            }
            String str2 = gVar.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                if (str.length() != 0) {
                    "Missing resource: ".concat(str);
                }
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                if (str.length() != 0) {
                    "Got empty resource: ".concat(str);
                }
                return null;
            }
            gVar.put(str, string);
            return string;
        }
    }
}
