package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.u;
import androidx.work.impl.background.systemalarm.d;
import d2.l;
import n2.k;

/* loaded from: classes.dex */
public class SystemAlarmService extends u implements d.c {

    /* renamed from: i, reason: collision with root package name */
    public static final String f3334i = l.f("SystemAlarmService");

    /* renamed from: g, reason: collision with root package name */
    public d f3335g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3336h;

    @Override // androidx.work.impl.background.systemalarm.d.c
    public void a() {
        this.f3336h = true;
        l.c().a(f3334i, "All commands completed in dispatcher", new Throwable[0]);
        k.a();
        stopSelf();
    }

    public final void e() {
        d dVar = new d(this);
        this.f3335g = dVar;
        dVar.m(this);
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public void onCreate() {
        super.onCreate();
        e();
        this.f3336h = false;
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f3336h = true;
        this.f3335g.j();
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f3336h) {
            l.c().d(f3334i, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f3335g.j();
            e();
            this.f3336h = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f3335g.b(intent, i11);
        return 3;
    }
}
