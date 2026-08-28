package n2;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: WorkTimer.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: f, reason: collision with root package name */
    public static final String f11228f = d2.l.f("WorkTimer");

    /* renamed from: a, reason: collision with root package name */
    public final ThreadFactory f11229a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f11230b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, c> f11231c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<String, b> f11232d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f11233e;

    /* compiled from: WorkTimer.java */
    /* loaded from: classes.dex */
    public class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public int f11234a = 0;

        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f11234a);
            this.f11234a = this.f11234a + 1;
            return newThread;
        }
    }

    /* compiled from: WorkTimer.java */
    /* loaded from: classes.dex */
    public interface b {
        void b(String str);
    }

    /* compiled from: WorkTimer.java */
    /* loaded from: classes.dex */
    public static class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final n f11236f;

        /* renamed from: g, reason: collision with root package name */
        public final String f11237g;

        public c(n nVar, String str) {
            this.f11236f = nVar;
            this.f11237g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f11236f.f11233e) {
                if (this.f11236f.f11231c.remove(this.f11237g) != null) {
                    b remove = this.f11236f.f11232d.remove(this.f11237g);
                    if (remove != null) {
                        remove.b(this.f11237g);
                    }
                } else {
                    d2.l.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f11237g), new Throwable[0]);
                }
            }
        }
    }

    public n() {
        a aVar = new a();
        this.f11229a = aVar;
        this.f11231c = new HashMap();
        this.f11232d = new HashMap();
        this.f11233e = new Object();
        this.f11230b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    public void a() {
        if (this.f11230b.isShutdown()) {
            return;
        }
        this.f11230b.shutdownNow();
    }

    public void b(String str, long j10, b bVar) {
        synchronized (this.f11233e) {
            d2.l.c().a(f11228f, String.format("Starting timer for %s", str), new Throwable[0]);
            c(str);
            c cVar = new c(this, str);
            this.f11231c.put(str, cVar);
            this.f11232d.put(str, bVar);
            this.f11230b.schedule(cVar, j10, TimeUnit.MILLISECONDS);
        }
    }

    public void c(String str) {
        synchronized (this.f11233e) {
            if (this.f11231c.remove(str) != null) {
                d2.l.c().a(f11228f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f11232d.remove(str);
            }
        }
    }
}
