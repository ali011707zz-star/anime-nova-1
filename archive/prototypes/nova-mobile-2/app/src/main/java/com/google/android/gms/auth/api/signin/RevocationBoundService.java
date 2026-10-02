package com.google.android.gms.auth.api.signin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.zzw;

/* loaded from: classes.dex */
public final class RevocationBoundService extends Service {
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (!"com.google.android.gms.auth.api.signin.RevocationBoundService.disconnect".equals(intent.getAction()) && !"com.google.android.gms.auth.api.signin.RevocationBoundService.clearClientState".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() == 0) {
                return null;
            }
            "Unknown action sent to RevocationBoundService: ".concat(valueOf);
            return null;
        }
        if (Log.isLoggable("RevocationService", 2)) {
            String valueOf2 = String.valueOf(intent.getAction());
            if (valueOf2.length() != 0) {
                "RevocationBoundService handling ".concat(valueOf2);
            }
        }
        return new zzw(this);
    }
}
