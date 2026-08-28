package bd;

import android.app.Application;

/* compiled from: AndroidLogcatLogger.kt */
/* loaded from: classes2.dex */
public final class b {
    public static final boolean b(Application application) {
        return (application.getApplicationInfo().flags & 2) != 0;
    }
}
