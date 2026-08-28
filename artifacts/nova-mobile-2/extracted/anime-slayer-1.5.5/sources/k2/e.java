package k2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import d2.l;

/* compiled from: NetworkStateTracker.java */
/* loaded from: classes.dex */
public class e extends d<i2.b> {

    /* renamed from: j, reason: collision with root package name */
    public static final String f9874j = l.f("NetworkStateTracker");

    /* renamed from: g, reason: collision with root package name */
    public final ConnectivityManager f9875g;

    /* renamed from: h, reason: collision with root package name */
    public b f9876h;

    /* renamed from: i, reason: collision with root package name */
    public a f9877i;

    /* compiled from: NetworkStateTracker.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            l.c().a(e.f9874j, "Network broadcast received", new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }
    }

    /* compiled from: NetworkStateTracker.java */
    /* loaded from: classes.dex */
    public class b extends ConnectivityManager.NetworkCallback {
        public b() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            l.c().a(e.f9874j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            l.c().a(e.f9874j, "Network connection lost", new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }
    }

    public e(Context context, p2.a aVar) {
        super(context, aVar);
        this.f9875g = (ConnectivityManager) this.f9868b.getSystemService("connectivity");
        if (j()) {
            this.f9876h = new b();
        } else {
            this.f9877i = new a();
        }
    }

    public static boolean j() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // k2.d
    public void e() {
        if (j()) {
            try {
                l.c().a(f9874j, "Registering network callback", new Throwable[0]);
                this.f9875g.registerDefaultNetworkCallback(this.f9876h);
                return;
            } catch (IllegalArgumentException | SecurityException e10) {
                l.c().b(f9874j, "Received exception while registering network callback", e10);
                return;
            }
        }
        l.c().a(f9874j, "Registering broadcast receiver", new Throwable[0]);
        this.f9868b.registerReceiver(this.f9877i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // k2.d
    public void f() {
        if (j()) {
            try {
                l.c().a(f9874j, "Unregistering network callback", new Throwable[0]);
                this.f9875g.unregisterNetworkCallback(this.f9876h);
                return;
            } catch (IllegalArgumentException | SecurityException e10) {
                l.c().b(f9874j, "Received exception while unregistering network callback", e10);
                return;
            }
        }
        l.c().a(f9874j, "Unregistering broadcast receiver", new Throwable[0]);
        this.f9868b.unregisterReceiver(this.f9877i);
    }

    public i2.b g() {
        NetworkInfo activeNetworkInfo = this.f9875g.getActiveNetworkInfo();
        return new i2.b(activeNetworkInfo != null && activeNetworkInfo.isConnected(), i(), l0.a.a(this.f9875g), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : true);
    }

    @Override // k2.d
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public i2.b b() {
        return g();
    }

    public boolean i() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = this.f9875g.getNetworkCapabilities(this.f9875g.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (SecurityException e10) {
            l.c().b(f9874j, "Unable to validate active network", e10);
            return false;
        }
    }
}
