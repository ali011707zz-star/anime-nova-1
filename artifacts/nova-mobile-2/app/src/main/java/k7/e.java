package k7;

import android.content.Context;
import android.webkit.CookieManager;
import jc.l;

/* compiled from: WebViewUtil.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final e f10055a = new e();

    public final boolean a(Context context) {
        l.f(context, "context");
        try {
            CookieManager.getInstance();
            return context.getPackageManager().hasSystemFeature("android.software.webview");
        } catch (Exception unused) {
            return false;
        }
    }
}
