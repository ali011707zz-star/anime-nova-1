package m0;

import android.content.res.Configuration;
import android.os.Build;

/* compiled from: ConfigurationCompat.java */
/* loaded from: classes.dex */
public final class d {
    public static g a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? g.d(configuration.getLocales()) : g.a(configuration.locale);
    }
}
