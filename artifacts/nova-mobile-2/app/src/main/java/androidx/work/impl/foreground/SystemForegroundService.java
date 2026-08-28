package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.u;
import androidx.work.impl.foreground.a;
import d2.l;

/* loaded from: classes.dex */
public class SystemForegroundService extends u implements a.b {

    /* renamed from: k, reason: collision with root package name */
    public static final String f3376k = l.f("SystemFgService");

    /* renamed from: l, reason: collision with root package name */
    public static SystemForegroundService f3377l = null;

    /* renamed from: g, reason: collision with root package name */
    public Handler f3378g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3379h;

    /* renamed from: i, reason: collision with root package name */
    public androidx.work.impl.foreground.a f3380i;

    /* renamed from: j, reason: collision with root package name */
    public NotificationManager f3381j;

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f3382f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Notification f3383g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f3384h;

        public a(int i10, Notification notification, int i11) {
            this.f3382f = i10;
            this.f3383g = notification;
            this.f3384h = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f3382f, this.f3383g, this.f3384h);
            } else {
                SystemForegroundService.this.startForeground(this.f3382f, this.f3383g);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f3386f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Notification f3387g;

        public b(int i10, Notification notification) {
            this.f3386f = i10;
            this.f3387g = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f3381j.notify(this.f3386f, this.f3387g);
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f3389f;

        public c(int i10) {
            this.f3389f = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f3381j.cancel(this.f3389f);
        }
    }

    @Override // androidx.work.impl.foreground.a.b
    public void b(int i10) {
        this.f3378g.post(new c(i10));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void c(int i10, int i11, Notification notification) {
        this.f3378g.post(new a(i10, notification, i11));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void d(int i10, Notification notification) {
        this.f3378g.post(new b(i10, notification));
    }

    public final void e() {
        this.f3378g = new Handler(Looper.getMainLooper());
        this.f3381j = (NotificationManager) getApplicationContext().getSystemService("notification");
        androidx.work.impl.foreground.a aVar = new androidx.work.impl.foreground.a(getApplicationContext());
        this.f3380i = aVar;
        aVar.k(this);
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public void onCreate() {
        super.onCreate();
        f3377l = this;
        e();
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f3380i.i();
    }

    @Override // androidx.lifecycle.u, android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f3379h) {
            l.c().d(f3376k, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f3380i.i();
            e();
            this.f3379h = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f3380i.j(intent);
        return 3;
    }

    @Override // androidx.work.impl.foreground.a.b
    public void stop() {
        this.f3379h = true;
        l.c().a(f3376k, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f3377l = null;
        stopSelf();
    }
}
