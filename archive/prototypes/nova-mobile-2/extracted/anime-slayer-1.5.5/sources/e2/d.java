package e2;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import d2.l;
import e2.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* compiled from: Processor.java */
/* loaded from: classes.dex */
public class d implements b, l2.a {

    /* renamed from: q, reason: collision with root package name */
    public static final String f5930q = l.f("Processor");

    /* renamed from: g, reason: collision with root package name */
    public Context f5932g;

    /* renamed from: h, reason: collision with root package name */
    public d2.b f5933h;

    /* renamed from: i, reason: collision with root package name */
    public p2.a f5934i;

    /* renamed from: j, reason: collision with root package name */
    public WorkDatabase f5935j;

    /* renamed from: m, reason: collision with root package name */
    public List<e> f5938m;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, j> f5937l = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public Map<String, j> f5936k = new HashMap();

    /* renamed from: n, reason: collision with root package name */
    public Set<String> f5939n = new HashSet();

    /* renamed from: o, reason: collision with root package name */
    public final List<b> f5940o = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public PowerManager.WakeLock f5931f = null;

    /* renamed from: p, reason: collision with root package name */
    public final Object f5941p = new Object();

    /* compiled from: Processor.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public b f5942f;

        /* renamed from: g, reason: collision with root package name */
        public String f5943g;

        /* renamed from: h, reason: collision with root package name */
        public w9.a<Boolean> f5944h;

        public a(b bVar, String str, w9.a<Boolean> aVar) {
            this.f5942f = bVar;
            this.f5943g = str;
            this.f5944h = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                z10 = this.f5944h.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z10 = true;
            }
            this.f5942f.a(this.f5943g, z10);
        }
    }

    public d(Context context, d2.b bVar, p2.a aVar, WorkDatabase workDatabase, List<e> list) {
        this.f5932g = context;
        this.f5933h = bVar;
        this.f5934i = aVar;
        this.f5935j = workDatabase;
        this.f5938m = list;
    }

    public static boolean d(String str, j jVar) {
        if (jVar != null) {
            jVar.d();
            l.c().a(f5930q, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
            return true;
        }
        l.c().a(f5930q, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
        return false;
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        synchronized (this.f5941p) {
            this.f5937l.remove(str);
            l.c().a(f5930q, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z10)), new Throwable[0]);
            Iterator<b> it2 = this.f5940o.iterator();
            while (it2.hasNext()) {
                it2.next().a(str, z10);
            }
        }
    }

    @Override // l2.a
    public void b(String str) {
        synchronized (this.f5941p) {
            this.f5936k.remove(str);
            l();
        }
    }

    public void c(b bVar) {
        synchronized (this.f5941p) {
            this.f5940o.add(bVar);
        }
    }

    public boolean e(String str) {
        boolean contains;
        synchronized (this.f5941p) {
            contains = this.f5939n.contains(str);
        }
        return contains;
    }

    public boolean f(String str) {
        boolean z10;
        synchronized (this.f5941p) {
            z10 = this.f5937l.containsKey(str) || this.f5936k.containsKey(str);
        }
        return z10;
    }

    public boolean g(String str) {
        boolean containsKey;
        synchronized (this.f5941p) {
            containsKey = this.f5936k.containsKey(str);
        }
        return containsKey;
    }

    public void h(b bVar) {
        synchronized (this.f5941p) {
            this.f5940o.remove(bVar);
        }
    }

    public boolean i(String str) {
        return j(str, null);
    }

    public boolean j(String str, WorkerParameters.a aVar) {
        synchronized (this.f5941p) {
            if (f(str)) {
                l.c().a(f5930q, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            j a10 = new j.c(this.f5932g, this.f5933h, this.f5934i, this, this.f5935j, str).c(this.f5938m).b(aVar).a();
            w9.a<Boolean> b10 = a10.b();
            b10.g(new a(this, str, b10), this.f5934i.a());
            this.f5937l.put(str, a10);
            this.f5934i.c().execute(a10);
            l.c().a(f5930q, String.format("%s: processing %s", getClass().getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    public boolean k(String str) {
        boolean d10;
        synchronized (this.f5941p) {
            boolean z10 = true;
            l.c().a(f5930q, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.f5939n.add(str);
            j remove = this.f5936k.remove(str);
            if (remove == null) {
                z10 = false;
            }
            if (remove == null) {
                remove = this.f5937l.remove(str);
            }
            d10 = d(str, remove);
            if (z10) {
                l();
            }
        }
        return d10;
    }

    public final void l() {
        synchronized (this.f5941p) {
            if (!(!this.f5936k.isEmpty())) {
                try {
                    this.f5932g.startService(androidx.work.impl.foreground.a.b(this.f5932g));
                } catch (Throwable th) {
                    l.c().b(f5930q, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.f5931f;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f5931f = null;
                }
            }
        }
    }

    public boolean m(String str) {
        boolean d10;
        synchronized (this.f5941p) {
            l.c().a(f5930q, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            d10 = d(str, this.f5936k.remove(str));
        }
        return d10;
    }

    public boolean n(String str) {
        boolean d10;
        synchronized (this.f5941p) {
            l.c().a(f5930q, String.format("Processor stopping background work %s", str), new Throwable[0]);
            d10 = d(str, this.f5937l.remove(str));
        }
        return d10;
    }
}
