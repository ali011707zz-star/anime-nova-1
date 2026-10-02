package rc;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.a1;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public abstract class n1 extends o1 implements a1 {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13302j = AtomicReferenceFieldUpdater.newUpdater(n1.class, Object.class, "_queue");

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13303k = AtomicReferenceFieldUpdater.newUpdater(n1.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    /* compiled from: EventLoop.common.kt */
    /* loaded from: classes2.dex */
    public final class a extends c {

        /* renamed from: i, reason: collision with root package name */
        public final o<vb.p> f13304i;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j10, o<? super vb.p> oVar) {
            super(j10);
            this.f13304i = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13304i.l(n1.this, vb.p.f15031a);
        }

        @Override // rc.n1.c
        public String toString() {
            return jc.l.m(super.toString(), this.f13304i);
        }
    }

    /* compiled from: EventLoop.common.kt */
    /* loaded from: classes2.dex */
    public static final class b extends c {

        /* renamed from: i, reason: collision with root package name */
        public final Runnable f13306i;

        public b(long j10, Runnable runnable) {
            super(j10);
            this.f13306i = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13306i.run();
        }

        @Override // rc.n1.c
        public String toString() {
            return jc.l.m(super.toString(), this.f13306i);
        }
    }

    /* compiled from: EventLoop.common.kt */
    /* loaded from: classes2.dex */
    public static abstract class c implements Runnable, Comparable<c>, i1, wc.g0 {

        /* renamed from: f, reason: collision with root package name */
        public long f13307f;

        /* renamed from: g, reason: collision with root package name */
        public Object f13308g;

        /* renamed from: h, reason: collision with root package name */
        public int f13309h = -1;

        public c(long j10) {
            this.f13307f = j10;
        }

        @Override // wc.g0
        public void a(int i10) {
            this.f13309h = i10;
        }

        @Override // wc.g0
        public int b() {
            return this.f13309h;
        }

        @Override // wc.g0
        public void c(wc.f0<?> f0Var) {
            wc.a0 a0Var;
            Object obj = this.f13308g;
            a0Var = q1.f13322a;
            if (obj != a0Var) {
                this.f13308g = f0Var;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // wc.g0
        public wc.f0<?> d() {
            Object obj = this.f13308g;
            if (obj instanceof wc.f0) {
                return (wc.f0) obj;
            }
            return null;
        }

        @Override // rc.i1
        public final synchronized void e() {
            wc.a0 a0Var;
            wc.a0 a0Var2;
            Object obj = this.f13308g;
            a0Var = q1.f13322a;
            if (obj == a0Var) {
                return;
            }
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                dVar.g(this);
            }
            a0Var2 = q1.f13322a;
            this.f13308g = a0Var2;
        }

        @Override // java.lang.Comparable
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            long j10 = this.f13307f - cVar.f13307f;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        public final synchronized int g(long j10, d dVar, n1 n1Var) {
            wc.a0 a0Var;
            Object obj = this.f13308g;
            a0Var = q1.f13322a;
            if (obj == a0Var) {
                return 2;
            }
            synchronized (dVar) {
                c b10 = dVar.b();
                if (n1Var.e1()) {
                    return 1;
                }
                if (b10 == null) {
                    dVar.f13310b = j10;
                } else {
                    long j11 = b10.f13307f;
                    if (j11 - j10 < 0) {
                        j10 = j11;
                    }
                    if (j10 - dVar.f13310b > 0) {
                        dVar.f13310b = j10;
                    }
                }
                long j12 = this.f13307f;
                long j13 = dVar.f13310b;
                if (j12 - j13 < 0) {
                    this.f13307f = j13;
                }
                dVar.a(this);
                return 0;
            }
        }

        public final boolean h(long j10) {
            return j10 - this.f13307f >= 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f13307f + ']';
        }
    }

    /* compiled from: EventLoop.common.kt */
    /* loaded from: classes2.dex */
    public static final class d extends wc.f0<c> {

        /* renamed from: b, reason: collision with root package name */
        public long f13310b;

        public d(long j10) {
            this.f13310b = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean e1() {
        return this._isCompleted;
    }

    @Override // rc.l0
    public final void H0(ac.g gVar, Runnable runnable) {
        c1(runnable);
    }

    @Override // rc.a1
    public void L(long j10, o<? super vb.p> oVar) {
        long c10 = q1.c(j10);
        if (c10 < 4611686018427387903L) {
            rc.c.a();
            long nanoTime = System.nanoTime();
            a aVar = new a(c10 + nanoTime, oVar);
            r.a(oVar, aVar);
            i1(nanoTime, aVar);
        }
    }

    @Override // rc.m1
    public long O0() {
        wc.a0 a0Var;
        if (super.O0() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof wc.r)) {
                a0Var = q1.f13323b;
                if (obj == a0Var) {
                    return RecyclerView.FOREVER_NS;
                }
                return 0L;
            }
            if (!((wc.r) obj).g()) {
                return 0L;
            }
        }
        d dVar = (d) this._delayed;
        c e10 = dVar == null ? null : dVar.e();
        if (e10 == null) {
            return RecyclerView.FOREVER_NS;
        }
        long j10 = e10.f13307f;
        rc.c.a();
        return nc.g.b(j10 - System.nanoTime(), 0L);
    }

    @Override // rc.m1
    public long T0() {
        c cVar;
        if (U0()) {
            return 0L;
        }
        d dVar = (d) this._delayed;
        if (dVar != null && !dVar.d()) {
            rc.c.a();
            long nanoTime = System.nanoTime();
            do {
                synchronized (dVar) {
                    c b10 = dVar.b();
                    if (b10 != null) {
                        c cVar2 = b10;
                        cVar = cVar2.h(nanoTime) ? d1(cVar2) : false ? dVar.h(0) : null;
                    }
                }
            } while (cVar != null);
        }
        Runnable b12 = b1();
        if (b12 != null) {
            b12.run();
            return 0L;
        }
        return O0();
    }

    public final void a1() {
        wc.a0 a0Var;
        wc.a0 a0Var2;
        if (u0.a() && !e1()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13302j;
                a0Var = q1.f13323b;
                if (ad.c.a(atomicReferenceFieldUpdater, this, null, a0Var)) {
                    return;
                }
            } else if (!(obj instanceof wc.r)) {
                a0Var2 = q1.f13323b;
                if (obj == a0Var2) {
                    return;
                }
                wc.r rVar = new wc.r(8, true);
                rVar.a((Runnable) obj);
                if (ad.c.a(f13302j, this, obj, rVar)) {
                    return;
                }
            } else {
                ((wc.r) obj).d();
                return;
            }
        }
    }

    public final Runnable b1() {
        wc.a0 a0Var;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof wc.r)) {
                a0Var = q1.f13323b;
                if (obj == a0Var) {
                    return null;
                }
                if (ad.c.a(f13302j, this, obj, null)) {
                    return (Runnable) obj;
                }
            } else {
                wc.r rVar = (wc.r) obj;
                Object j10 = rVar.j();
                if (j10 != wc.r.f15528h) {
                    return (Runnable) j10;
                }
                ad.c.a(f13302j, this, obj, rVar.i());
            }
        }
    }

    public final void c1(Runnable runnable) {
        if (d1(runnable)) {
            Y0();
        } else {
            w0.f13346l.c1(runnable);
        }
    }

    public final boolean d1(Runnable runnable) {
        wc.a0 a0Var;
        while (true) {
            Object obj = this._queue;
            if (e1()) {
                return false;
            }
            if (obj == null) {
                if (ad.c.a(f13302j, this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof wc.r)) {
                a0Var = q1.f13323b;
                if (obj == a0Var) {
                    return false;
                }
                wc.r rVar = new wc.r(8, true);
                rVar.a((Runnable) obj);
                rVar.a(runnable);
                if (ad.c.a(f13302j, this, obj, rVar)) {
                    return true;
                }
            } else {
                wc.r rVar2 = (wc.r) obj;
                int a10 = rVar2.a(runnable);
                if (a10 == 0) {
                    return true;
                }
                if (a10 == 1) {
                    ad.c.a(f13302j, this, obj, rVar2.i());
                } else if (a10 == 2) {
                    return false;
                }
            }
        }
    }

    public boolean f1() {
        wc.a0 a0Var;
        if (!S0()) {
            return false;
        }
        d dVar = (d) this._delayed;
        if (dVar != null && !dVar.d()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof wc.r) {
                return ((wc.r) obj).g();
            }
            a0Var = q1.f13323b;
            if (obj != a0Var) {
                return false;
            }
        }
        return true;
    }

    public final void g1() {
        rc.c.a();
        long nanoTime = System.nanoTime();
        while (true) {
            d dVar = (d) this._delayed;
            c i10 = dVar == null ? null : dVar.i();
            if (i10 == null) {
                return;
            } else {
                X0(nanoTime, i10);
            }
        }
    }

    public final void h1() {
        this._queue = null;
        this._delayed = null;
    }

    public final void i1(long j10, c cVar) {
        int j12 = j1(j10, cVar);
        if (j12 == 0) {
            if (m1(cVar)) {
                Y0();
            }
        } else if (j12 == 1) {
            X0(j10, cVar);
        } else if (j12 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    public final int j1(long j10, c cVar) {
        if (e1()) {
            return 1;
        }
        d dVar = (d) this._delayed;
        if (dVar == null) {
            ad.c.a(f13303k, this, null, new d(j10));
            Object obj = this._delayed;
            jc.l.c(obj);
            dVar = (d) obj;
        }
        return cVar.g(j10, dVar, this);
    }

    public final i1 k1(long j10, Runnable runnable) {
        long c10 = q1.c(j10);
        if (c10 < 4611686018427387903L) {
            rc.c.a();
            long nanoTime = System.nanoTime();
            b bVar = new b(c10 + nanoTime, runnable);
            i1(nanoTime, bVar);
            return bVar;
        }
        return p2.f13320f;
    }

    public final void l1(boolean z10) {
        this._isCompleted = z10 ? 1 : 0;
    }

    public final boolean m1(c cVar) {
        d dVar = (d) this._delayed;
        return (dVar == null ? null : dVar.e()) == cVar;
    }

    @Override // rc.m1
    public void shutdown() {
        b3.f13232a.c();
        l1(true);
        a1();
        do {
        } while (T0() <= 0);
        g1();
    }

    @Override // rc.a1
    public i1 w0(long j10, Runnable runnable, ac.g gVar) {
        return a1.a.a(this, j10, runnable, gVar);
    }
}
