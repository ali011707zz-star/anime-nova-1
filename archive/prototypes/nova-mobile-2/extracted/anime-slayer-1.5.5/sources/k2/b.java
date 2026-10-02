package k2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import d2.l;

/* compiled from: BatteryNotLowTracker.java */
/* loaded from: classes.dex */
public class b extends c<Boolean> {

    /* renamed from: i, reason: collision with root package name */
    public static final String f9862i = l.f("BatteryNotLowTracker");

    public b(Context context, p2.a aVar) {
        super(context, aVar);
    }

    @Override // k2.c
    public IntentFilter g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // k2.c
    public void h(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        l.c().a(f9862i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            d(Boolean.TRUE);
        } else if (action.equals("android.intent.action.BATTERY_LOW")) {
            d(Boolean.FALSE);
        }
    }

    @Override // k2.d
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Boolean b() {
        Intent registerReceiver = this.f9868b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            l.c().b(f9862i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        return Boolean.valueOf(registerReceiver.getIntExtra("status", -1) == 1 || ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)) > 0.15f);
    }
}
