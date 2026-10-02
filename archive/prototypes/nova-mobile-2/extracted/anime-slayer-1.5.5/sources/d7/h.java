package d7;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import jc.l;

/* compiled from: DeviceUtil.kt */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final h f5716a = new h();

    @SuppressLint({"HardwareIds"})
    public final String a(Context context) {
        l.f(context, "context");
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
        } catch (Exception unused) {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
    }
}
