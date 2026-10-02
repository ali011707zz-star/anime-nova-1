package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import d2.l;
import e2.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n2.h;
import n2.k;
import n2.n;

/* compiled from: SystemAlarmDispatcher.java */
/* loaded from: classes.dex */
public class d implements e2.b {

    /* renamed from: p, reason: collision with root package name */
    public static final String f3356p = l.f("SystemAlarmDispatcher");

    /* renamed from: f, reason: collision with root package name */
    public final Context f3357f;

    /* renamed from: g, reason: collision with root package name */
    public final p2.a f3358g;

    /* renamed from: h, reason: collision with root package name */
    public final n f3359h;

    /* renamed from: i, reason: collision with root package name */
    public final e2.d f3360i;

    /* renamed from: j, reason: collision with root package name */
    public final i f3361j;

    /* renamed from: k, reason: collision with root package name */
    public final androidx.work.impl.background.systemalarm.a f3362k;

    /* renamed from: l, reason: collision with root package name */
    public final Handler f3363l;

    /* renamed from: m, reason: collision with root package name */
    public final List<Intent> f3364m;

    /* renamed from: n, reason: collision with root package name */
    public Intent f3365n;

    /* renamed from: o, reason: collision with root package name */
    public c f3366o;

    /* compiled from: SystemAlarmDispatcher.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar;
            RunnableC0060d runnableC0060d;
            synchronized (d.this.f3364m) {
                d dVar2 = d.this;
                dVar2.f3365n = dVar2.f3364m.get(0);
            }
            Intent intent = d.this.f3365n;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = d.this.f3365n.getIntExtra("KEY_START_ID", 0);
                l c10 = l.c();
                String str = d.f3356p;
                c10.a(str, String.format("Processing command %s, %s", d.this.f3365n, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock b10 = k.b(d.this.f3357f, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    l.c().a(str, String.format("Acquiring operation wake lock (%s) %s", action, b10), new Throwable[0]);
                    b10.acquire();
                    d dVar3 = d.this;
                    dVar3.f3362k.p(dVar3.f3365n, intExtra, dVar3);
                    l.c().a(str, String.format("Releasing operation wake lock (%s) %s", action, b10), new Throwable[0]);
                    b10.release();
                    dVar = d.this;
                    runnableC0060d = new RunnableC0060d(dVar);
                } catch (Throwable th) {
                    try {
                        l c11 = l.c();
                        String str2 = d.f3356p;
                        c11.b(str2, "Unexpected error in onHandleIntent", th);
                        l.c().a(str2, String.format("Releasing operation wake lock (%s) %s", action, b10), new Throwable[0]);
                        b10.release();
                        dVar = d.this;
                        runnableC0060d = new RunnableC0060d(dVar);
                    } catch (Throwable th2) {
                        l.c().a(d.f3356p, String.format("Releasing operation wake lock (%s) %s", action, b10), new Throwable[0]);
                        b10.release();
                        d dVar4 = d.this;
                        dVar4.k(new RunnableC0060d(dVar4));
                        throw th2;
                    }
                }
                dVar.k(runnableC0060d);
            }
        }
    }

    /* compiled from: SystemAlarmDispatcher.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final d f3368f;

        /* renamed from: g, reason: collision with root package name */
        public final Intent f3369g;

        /* renamed from: h, reason: collision with root package name */
        public final int f3370h;

        public b(d dVar, Intent intent, int i10) {
            this.f3368f = dVar;
            this.f3369g = intent;
            this.f3370h = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3368f.b(this.f3369g, this.f3370h);
        }
    }

    /* compiled from: SystemAlarmDispatcher.java */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    /* compiled from: SystemAlarmDispatcher.java */
    /* renamed from: androidx.work.impl.background.systemalarm.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class RunnableC0060d implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final d f3371f;

        public RunnableC0060d(d dVar) {
            this.f3371f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3371f.d();
        }
    }

    public d(Context context) {
        this(context, null, null);
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        k(new b(this, androidx.work.impl.background.systemalarm.a.d(this.f3357f, str, z10), 0));
    }

    public boolean b(Intent intent, int i10) {
        l c10 = l.c();
        String str = f3356p;
        c10.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i10)), new Throwable[0]);
        c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            l.c().h(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra("KEY_START_ID", i10);
        synchronized (this.f3364m) {
            boolean z10 = this.f3364m.isEmpty() ? false : true;
            this.f3364m.add(intent);
            if (!z10) {
                l();
            }
        }
        return true;
    }

    public final void c() {
        if (this.f3363l.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public void d() {
        l c10 = l.c();
        String str = f3356p;
        c10.a(str, "Checking if commands are complete.", new Throwable[0]);
        c();
        synchronized (this.f3364m) {
            if (this.f3365n != null) {
                l.c().a(str, String.format("Removing command %s", this.f3365n), new Throwable[0]);
                if (this.f3364m.remove(0).equals(this.f3365n)) {
                    this.f3365n = null;
                } else {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
            }
            h c11 = this.f3358g.c();
            if (!this.f3362k.o() && this.f3364m.isEmpty() && !c11.a()) {
                l.c().a(str, "No more commands & intents.", new Throwable[0]);
                c cVar = this.f3366o;
                if (cVar != null) {
                    cVar.a();
                }
            } else if (!this.f3364m.isEmpty()) {
                l();
            }
        }
    }

    public e2.d e() {
        return this.f3360i;
    }

    public p2.a f() {
        return this.f3358g;
    }

    public i g() {
        return this.f3361j;
    }

    public n h() {
        return this.f3359h;
    }

    public final boolean i(String str) {
        c();
        synchronized (this.f3364m) {
            Iterator<Intent> it2 = this.f3364m.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next().getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    public void j() {
        l.c().a(f3356p, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f3360i.h(this);
        this.f3359h.a();
        this.f3366o = null;
    }

    public void k(Runnable runnable) {
        this.f3363l.post(runnable);
    }

    public final void l() {
        c();
        PowerManager.WakeLock b10 = k.b(this.f3357f, "ProcessCommand");
        try {
            b10.acquire();
            this.f3361j.x().b(new a());
        } finally {
            b10.release();
        }
    }

    public void m(c cVar) {
        if (this.f3366o != null) {
            l.c().b(f3356p, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f3366o = cVar;
        }
    }

    public d(Context context, e2.d dVar, i iVar) {
        Context applicationContext = context.getApplicationContext();
        this.f3357f = applicationContext;
        this.f3362k = new androidx.work.impl.background.systemalarm.a(applicationContext);
        this.f3359h = new n();
        iVar = iVar == null ? i.r(context) : iVar;
        this.f3361j = iVar;
        dVar = dVar == null ? iVar.t() : dVar;
        this.f3360i = dVar;
        this.f3358g = iVar.x();
        dVar.c(this);
        this.f3364m = new ArrayList();
        this.f3365n = null;
        this.f3363l = new Handler(Looper.getMainLooper());
    }
}
