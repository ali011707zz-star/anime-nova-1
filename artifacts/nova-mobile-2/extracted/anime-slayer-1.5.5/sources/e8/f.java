package e8;

import android.content.Context;
import android.util.Log;
import e8.c;

/* compiled from: DefaultConnectivityMonitorFactory.java */
/* loaded from: classes.dex */
public class f implements d {
    @Override // e8.d
    public c a(Context context, c.a aVar) {
        boolean z10 = f0.a.a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        Log.isLoggable("ConnectivityMonitor", 3);
        if (z10) {
            return new e(context, aVar);
        }
        return new j();
    }
}
