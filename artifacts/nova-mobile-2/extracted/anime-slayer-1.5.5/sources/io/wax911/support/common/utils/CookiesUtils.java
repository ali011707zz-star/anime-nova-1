package io.wax911.support.common.utils;

import android.content.Context;
import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

/* compiled from: CookiesUtils.kt */
/* loaded from: classes.dex */
public final class CookiesUtils {
    public static final CookiesUtils INSTANCE = new CookiesUtils();

    private CookiesUtils() {
    }

    public final void clearCookies(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().removeAllCookies(null);
        } else {
            if (context == null) {
                return;
            }
            CookieSyncManager.createInstance(context.getApplicationContext());
            CookieManager.getInstance().removeAllCookie();
        }
    }
}
