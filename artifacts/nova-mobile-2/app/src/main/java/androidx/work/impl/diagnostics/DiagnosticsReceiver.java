package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import d2.l;
import d2.n;
import d2.v;

/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3375a = l.f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        l.c().a(f3375a, "Requesting diagnostics", new Throwable[0]);
        try {
            v.i(context).d(n.e(DiagnosticsWorker.class));
        } catch (IllegalStateException e10) {
            l.c().b(f3375a, "WorkManager is not initialized", e10);
        }
    }
}
