package k2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import d2.l;

/* compiled from: BroadcastReceiverConstraintTracker.java */
/* loaded from: classes.dex */
public abstract class c<T> extends d<T> {

    /* renamed from: h, reason: collision with root package name */
    public static final String f9863h = l.f("BrdcstRcvrCnstrntTrckr");

    /* renamed from: g, reason: collision with root package name */
    public final BroadcastReceiver f9864g;

    /* compiled from: BroadcastReceiverConstraintTracker.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                c.this.h(context, intent);
            }
        }
    }

    public c(Context context, p2.a aVar) {
        super(context, aVar);
        this.f9864g = new a();
    }

    @Override // k2.d
    public void e() {
        l.c().a(f9863h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f9868b.registerReceiver(this.f9864g, g());
    }

    @Override // k2.d
    public void f() {
        l.c().a(f9863h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f9868b.unregisterReceiver(this.f9864g);
    }

    public abstract IntentFilter g();

    public abstract void h(Context context, Intent intent);
}
