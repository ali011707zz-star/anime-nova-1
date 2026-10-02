package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import d2.l;
import e2.i;
import n2.e;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3328a = l.f("ConstrntProxyUpdtRecvr");

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Intent f3329f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f3330g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ BroadcastReceiver.PendingResult f3331h;

        public a(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f3329f = intent;
            this.f3330g = context;
            this.f3331h = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f3329f.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f3329f.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f3329f.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f3329f.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                l.c().a(ConstraintProxyUpdateReceiver.f3328a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                e.a(this.f3330g, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                e.a(this.f3330g, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                e.a(this.f3330g, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                e.a(this.f3330g, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f3331h.finish();
            }
        }
    }

    public static Intent a(Context context, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z10).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z11).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z12).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z13);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            l.c().a(f3328a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            i.r(context).x().b(new a(intent, context, goAsync()));
        }
    }
}
