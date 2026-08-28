package e8;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import e8.c;

/* compiled from: DefaultConnectivityMonitor.java */
/* loaded from: classes.dex */
public final class e implements c {

    /* renamed from: f, reason: collision with root package name */
    public final Context f6200f;

    /* renamed from: g, reason: collision with root package name */
    public final c.a f6201g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6202h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6203i;

    /* renamed from: j, reason: collision with root package name */
    public final BroadcastReceiver f6204j = new a();

    /* compiled from: DefaultConnectivityMonitor.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            e eVar = e.this;
            boolean z10 = eVar.f6202h;
            eVar.f6202h = eVar.a(context);
            if (z10 != e.this.f6202h) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("connectivity changed, isConnected: ");
                    sb2.append(e.this.f6202h);
                }
                e eVar2 = e.this;
                eVar2.f6201g.a(eVar2.f6202h);
            }
        }
    }

    public e(Context context, c.a aVar) {
        this.f6200f = context.getApplicationContext();
        this.f6201g = aVar;
    }

    @SuppressLint({"MissingPermission"})
    public boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) l8.j.d((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException unused) {
            return true;
        }
    }

    public final void d() {
        if (this.f6203i) {
            return;
        }
        this.f6202h = a(this.f6200f);
        try {
            this.f6200f.registerReceiver(this.f6204j, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f6203i = true;
        } catch (SecurityException unused) {
        }
    }

    public final void g() {
        if (this.f6203i) {
            this.f6200f.unregisterReceiver(this.f6204j);
            this.f6203i = false;
        }
    }

    @Override // e8.i
    public void onDestroy() {
    }

    @Override // e8.i
    public void onStart() {
        d();
    }

    @Override // e8.i
    public void onStop() {
        g();
    }
}
