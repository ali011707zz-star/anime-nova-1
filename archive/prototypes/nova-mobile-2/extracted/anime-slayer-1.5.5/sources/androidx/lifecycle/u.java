package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: LifecycleService.java */
/* loaded from: classes.dex */
public class u extends Service implements q {

    /* renamed from: f, reason: collision with root package name */
    public final h0 f2535f = new h0(this);

    @Override // androidx.lifecycle.q
    public k getLifecycle() {
        return this.f2535f.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f2535f.b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2535f.c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f2535f.d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i10) {
        this.f2535f.e();
        super.onStart(intent, i10);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        return super.onStartCommand(intent, i10, i11);
    }
}
