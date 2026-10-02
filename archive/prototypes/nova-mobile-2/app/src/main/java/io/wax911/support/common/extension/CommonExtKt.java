package io.wax911.support.common.extension;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.twitter.sdk.android.core.identity.SSOAuthHandler;
import jc.l;

/* compiled from: CommonExt.kt */
/* loaded from: classes.dex */
public final class CommonExtKt {
    public static final String getMetaValue(Context context, int i10) {
        l.f(context, "<this>");
        try {
            String string = context.getString(i10);
            l.e(string, "getString(stringRes)");
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            l.e(applicationInfo, "packageManager.getApplic…ageManager.GET_META_DATA)");
            String str = (String) applicationInfo.metaData.get(string);
            if (str == null) {
                return null;
            }
            int length = str.length() - 1;
            int i11 = 0;
            boolean z10 = false;
            while (i11 <= length) {
                boolean z11 = l.h(str.charAt(!z10 ? i11 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i11++;
                } else {
                    z10 = true;
                }
            }
            return str.subSequence(i11, length + 1).toString();
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static final boolean isFacebookInstalled(Context context) {
        l.f(context, "<this>");
        return context.getApplicationContext().getPackageManager().getLaunchIntentForPackage("com.facebook.katana") != null;
    }

    public static final boolean isTwitterInstalled(Context context) {
        l.f(context, "<this>");
        return context.getApplicationContext().getPackageManager().getLaunchIntentForPackage(SSOAuthHandler.TWITTER_PACKAGE_NAME) != null;
    }
}
