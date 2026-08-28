package r7;

import android.os.Process;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import r7.p;

/* compiled from: ActiveResources.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f12879a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12880b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<p7.e, d> f12881c;

    /* renamed from: d, reason: collision with root package name */
    public final ReferenceQueue<p<?>> f12882d;

    /* renamed from: e, reason: collision with root package name */
    public p.a f12883e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f12884f;

    /* renamed from: g, reason: collision with root package name */
    public volatile c f12885g;

    /* compiled from: ActiveResources.java */
    /* renamed from: r7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class ThreadFactoryC0320a implements ThreadFactory {

        /* compiled from: ActiveResources.java */
        /* renamed from: r7.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0321a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Runnable f12886f;

            public RunnableC0321a(Runnable runnable) {
                this.f12886f = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f12886f.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC0321a(runnable), "glide-active-resources");
        }
    }

    /* compiled from: ActiveResources.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b();
        }
    }

    /* compiled from: ActiveResources.java */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    /* compiled from: ActiveResources.java */
    /* loaded from: classes.dex */
    public static final class d extends WeakReference<p<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final p7.e f12889a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f12890b;

        /* renamed from: c, reason: collision with root package name */
        public u<?> f12891c;

        public d(p7.e eVar, p<?> pVar, ReferenceQueue<? super p<?>> referenceQueue, boolean z10) {
            super(pVar, referenceQueue);
            this.f12889a = (p7.e) l8.j.d(eVar);
            this.f12891c = (pVar.f() && z10) ? (u) l8.j.d(pVar.e()) : null;
            this.f12890b = pVar.f();
        }

        public void a() {
            this.f12891c = null;
            clear();
        }
    }

    public a(boolean z10) {
        this(z10, Executors.newSingleThreadExecutor(new ThreadFactoryC0320a()));
    }

    public synchronized void a(p7.e eVar, p<?> pVar) {
        d put = this.f12881c.put(eVar, new d(eVar, pVar, this.f12882d, this.f12879a));
        if (put != null) {
            put.a();
        }
    }

    public void b() {
        while (!this.f12884f) {
            try {
                c((d) this.f12882d.remove());
                c cVar = this.f12885g;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public void c(d dVar) {
        u<?> uVar;
        synchronized (this) {
            this.f12881c.remove(dVar.f12889a);
            if (dVar.f12890b && (uVar = dVar.f12891c) != null) {
                this.f12883e.d(dVar.f12889a, new p<>(uVar, true, false, dVar.f12889a, this.f12883e));
            }
        }
    }

    public synchronized void d(p7.e eVar) {
        d remove = this.f12881c.remove(eVar);
        if (remove != null) {
            remove.a();
        }
    }

    public synchronized p<?> e(p7.e eVar) {
        d dVar = this.f12881c.get(eVar);
        if (dVar == null) {
            return null;
        }
        p<?> pVar = dVar.get();
        if (pVar == null) {
            c(dVar);
        }
        return pVar;
    }

    public void f(p.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f12883e = aVar;
            }
        }
    }

    public a(boolean z10, Executor executor) {
        this.f12881c = new HashMap();
        this.f12882d = new ReferenceQueue<>();
        this.f12879a = z10;
        this.f12880b = executor;
        executor.execute(new b());
    }
}
