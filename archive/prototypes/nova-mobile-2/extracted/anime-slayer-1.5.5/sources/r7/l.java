package r7;

import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import m8.a;
import r7.h;
import r7.p;

/* compiled from: EngineJob.java */
/* loaded from: classes.dex */
public class l<R> implements h.b<R>, a.f {
    public static final c D = new c();
    public p<?> A;
    public h<R> B;
    public volatile boolean C;

    /* renamed from: f, reason: collision with root package name */
    public final e f13003f;

    /* renamed from: g, reason: collision with root package name */
    public final m8.c f13004g;

    /* renamed from: h, reason: collision with root package name */
    public final p.a f13005h;

    /* renamed from: i, reason: collision with root package name */
    public final p0.f<l<?>> f13006i;

    /* renamed from: j, reason: collision with root package name */
    public final c f13007j;

    /* renamed from: k, reason: collision with root package name */
    public final m f13008k;

    /* renamed from: l, reason: collision with root package name */
    public final u7.a f13009l;

    /* renamed from: m, reason: collision with root package name */
    public final u7.a f13010m;

    /* renamed from: n, reason: collision with root package name */
    public final u7.a f13011n;

    /* renamed from: o, reason: collision with root package name */
    public final u7.a f13012o;

    /* renamed from: p, reason: collision with root package name */
    public final AtomicInteger f13013p;

    /* renamed from: q, reason: collision with root package name */
    public p7.e f13014q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f13015r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13016s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f13017t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f13018u;

    /* renamed from: v, reason: collision with root package name */
    public u<?> f13019v;

    /* renamed from: w, reason: collision with root package name */
    public p7.a f13020w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f13021x;

    /* renamed from: y, reason: collision with root package name */
    public GlideException f13022y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f13023z;

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final h8.i f13024f;

        public a(h8.i iVar) {
            this.f13024f = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f13024f.e()) {
                synchronized (l.this) {
                    if (l.this.f13003f.b(this.f13024f)) {
                        l.this.f(this.f13024f);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final h8.i f13026f;

        public b(h8.i iVar) {
            this.f13026f = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f13026f.e()) {
                synchronized (l.this) {
                    if (l.this.f13003f.b(this.f13026f)) {
                        l.this.A.d();
                        l.this.g(this.f13026f);
                        l.this.r(this.f13026f);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static class c {
        public <R> p<R> a(u<R> uVar, boolean z10, p7.e eVar, p.a aVar) {
            return new p<>(uVar, z10, true, eVar, aVar);
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public final h8.i f13028a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f13029b;

        public d(h8.i iVar, Executor executor) {
            this.f13028a = iVar;
            this.f13029b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f13028a.equals(((d) obj).f13028a);
            }
            return false;
        }

        public int hashCode() {
            return this.f13028a.hashCode();
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class e implements Iterable<d> {

        /* renamed from: f, reason: collision with root package name */
        public final List<d> f13030f;

        public e() {
            this(new ArrayList(2));
        }

        public static d d(h8.i iVar) {
            return new d(iVar, l8.e.a());
        }

        public void a(h8.i iVar, Executor executor) {
            this.f13030f.add(new d(iVar, executor));
        }

        public boolean b(h8.i iVar) {
            return this.f13030f.contains(d(iVar));
        }

        public e c() {
            return new e(new ArrayList(this.f13030f));
        }

        public void clear() {
            this.f13030f.clear();
        }

        public void e(h8.i iVar) {
            this.f13030f.remove(d(iVar));
        }

        public boolean isEmpty() {
            return this.f13030f.isEmpty();
        }

        @Override // java.lang.Iterable
        public Iterator<d> iterator() {
            return this.f13030f.iterator();
        }

        public int size() {
            return this.f13030f.size();
        }

        public e(List<d> list) {
            this.f13030f = list;
        }
    }

    public l(u7.a aVar, u7.a aVar2, u7.a aVar3, u7.a aVar4, m mVar, p.a aVar5, p0.f<l<?>> fVar) {
        this(aVar, aVar2, aVar3, aVar4, mVar, aVar5, fVar, D);
    }

    @Override // r7.h.b
    public void a(GlideException glideException) {
        synchronized (this) {
            this.f13022y = glideException;
        }
        n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // r7.h.b
    public void b(u<R> uVar, p7.a aVar) {
        synchronized (this) {
            this.f13019v = uVar;
            this.f13020w = aVar;
        }
        o();
    }

    @Override // r7.h.b
    public void c(h<?> hVar) {
        j().execute(hVar);
    }

    @Override // m8.a.f
    public m8.c d() {
        return this.f13004g;
    }

    public synchronized void e(h8.i iVar, Executor executor) {
        this.f13004g.c();
        this.f13003f.a(iVar, executor);
        boolean z10 = true;
        if (this.f13021x) {
            k(1);
            executor.execute(new b(iVar));
        } else if (this.f13023z) {
            k(1);
            executor.execute(new a(iVar));
        } else {
            if (this.C) {
                z10 = false;
            }
            l8.j.a(z10, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    public void f(h8.i iVar) {
        try {
            iVar.a(this.f13022y);
        } catch (Throwable th) {
            throw new r7.b(th);
        }
    }

    public void g(h8.i iVar) {
        try {
            iVar.b(this.A, this.f13020w);
        } catch (Throwable th) {
            throw new r7.b(th);
        }
    }

    public void h() {
        if (m()) {
            return;
        }
        this.C = true;
        this.B.e();
        this.f13008k.c(this, this.f13014q);
    }

    public void i() {
        p<?> pVar;
        synchronized (this) {
            this.f13004g.c();
            l8.j.a(m(), "Not yet complete!");
            int decrementAndGet = this.f13013p.decrementAndGet();
            l8.j.a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                pVar = this.A;
                q();
            } else {
                pVar = null;
            }
        }
        if (pVar != null) {
            pVar.g();
        }
    }

    public final u7.a j() {
        if (this.f13016s) {
            return this.f13011n;
        }
        return this.f13017t ? this.f13012o : this.f13010m;
    }

    public synchronized void k(int i10) {
        p<?> pVar;
        l8.j.a(m(), "Not yet complete!");
        if (this.f13013p.getAndAdd(i10) == 0 && (pVar = this.A) != null) {
            pVar.d();
        }
    }

    public synchronized l<R> l(p7.e eVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f13014q = eVar;
        this.f13015r = z10;
        this.f13016s = z11;
        this.f13017t = z12;
        this.f13018u = z13;
        return this;
    }

    public final boolean m() {
        return this.f13023z || this.f13021x || this.C;
    }

    public void n() {
        synchronized (this) {
            this.f13004g.c();
            if (this.C) {
                q();
                return;
            }
            if (!this.f13003f.isEmpty()) {
                if (!this.f13023z) {
                    this.f13023z = true;
                    p7.e eVar = this.f13014q;
                    e c10 = this.f13003f.c();
                    k(c10.size() + 1);
                    this.f13008k.b(this, eVar, null);
                    Iterator<d> it2 = c10.iterator();
                    while (it2.hasNext()) {
                        d next = it2.next();
                        next.f13029b.execute(new a(next.f13028a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already failed once");
            }
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
    }

    public void o() {
        synchronized (this) {
            this.f13004g.c();
            if (this.C) {
                this.f13019v.b();
                q();
                return;
            }
            if (!this.f13003f.isEmpty()) {
                if (!this.f13021x) {
                    this.A = this.f13007j.a(this.f13019v, this.f13015r, this.f13014q, this.f13005h);
                    this.f13021x = true;
                    e c10 = this.f13003f.c();
                    k(c10.size() + 1);
                    this.f13008k.b(this, this.f13014q, this.A);
                    Iterator<d> it2 = c10.iterator();
                    while (it2.hasNext()) {
                        d next = it2.next();
                        next.f13029b.execute(new b(next.f13028a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already have resource");
            }
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
    }

    public boolean p() {
        return this.f13018u;
    }

    public final synchronized void q() {
        if (this.f13014q != null) {
            this.f13003f.clear();
            this.f13014q = null;
            this.A = null;
            this.f13019v = null;
            this.f13023z = false;
            this.C = false;
            this.f13021x = false;
            this.B.w(false);
            this.B = null;
            this.f13022y = null;
            this.f13020w = null;
            this.f13006i.a(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void r(h8.i iVar) {
        boolean z10;
        this.f13004g.c();
        this.f13003f.e(iVar);
        if (this.f13003f.isEmpty()) {
            h();
            if (!this.f13021x && !this.f13023z) {
                z10 = false;
                if (z10 && this.f13013p.get() == 0) {
                    q();
                }
            }
            z10 = true;
            if (z10) {
                q();
            }
        }
    }

    public synchronized void s(h<R> hVar) {
        this.B = hVar;
        (hVar.C() ? this.f13009l : j()).execute(hVar);
    }

    public l(u7.a aVar, u7.a aVar2, u7.a aVar3, u7.a aVar4, m mVar, p.a aVar5, p0.f<l<?>> fVar, c cVar) {
        this.f13003f = new e();
        this.f13004g = m8.c.a();
        this.f13013p = new AtomicInteger();
        this.f13009l = aVar;
        this.f13010m = aVar2;
        this.f13011n = aVar3;
        this.f13012o = aVar4;
        this.f13008k = mVar;
        this.f13005h = aVar5;
        this.f13006i = fVar;
        this.f13007j = cVar;
    }
}
