package yc;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import rc.u0;
import rc.v0;
import vb.p;
import wc.a0;

/* compiled from: CoroutineScheduler.kt */
/* loaded from: classes2.dex */
public final class a implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;
    public volatile /* synthetic */ long controlState;

    /* renamed from: f, reason: collision with root package name */
    public final int f16803f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16804g;

    /* renamed from: h, reason: collision with root package name */
    public final long f16805h;

    /* renamed from: i, reason: collision with root package name */
    public final String f16806i;

    /* renamed from: j, reason: collision with root package name */
    public final yc.d f16807j;

    /* renamed from: k, reason: collision with root package name */
    public final yc.d f16808k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicReferenceArray<c> f16809l;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* renamed from: m, reason: collision with root package name */
    public static final C0434a f16798m = new C0434a(null);

    /* renamed from: q, reason: collision with root package name */
    public static final a0 f16802q = new a0("NOT_IN_STACK");

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f16799n = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack");

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f16800o = AtomicLongFieldUpdater.newUpdater(a.class, "controlState");

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16801p = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated");

    /* compiled from: CoroutineScheduler.kt */
    /* renamed from: yc.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0434a {
        public C0434a() {
        }

        public /* synthetic */ C0434a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    /* loaded from: classes2.dex */
    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f16810a;

        static {
            int[] iArr = new int[d.values().length];
            iArr[d.PARKING.ordinal()] = 1;
            iArr[d.BLOCKING.ordinal()] = 2;
            iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            iArr[d.DORMANT.ordinal()] = 4;
            iArr[d.TERMINATED.ordinal()] = 5;
            f16810a = iArr;
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    /* loaded from: classes2.dex */
    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public a(int i10, int i11, long j10, String str) {
        this.f16803f = i10;
        this.f16804g = i11;
        this.f16805h = j10;
        this.f16806i = str;
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (!(i11 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j10 > 0) {
            this.f16807j = new yc.d();
            this.f16808k = new yc.d();
            this.parkedWorkersStack = 0L;
            this.f16809l = new AtomicReferenceArray<>(i11 + 1);
            this.controlState = i10 << 42;
            this._isTerminated = 0;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
    }

    public static /* synthetic */ boolean k0(a aVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = aVar.controlState;
        }
        return aVar.h0(j10);
    }

    public static /* synthetic */ void z(a aVar, Runnable runnable, j jVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            jVar = g.f16839f;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        aVar.x(runnable, jVar, z10);
    }

    public final int F(c cVar) {
        Object g10 = cVar.g();
        while (g10 != f16802q) {
            if (g10 == null) {
                return 0;
            }
            c cVar2 = (c) g10;
            int f10 = cVar2.f();
            if (f10 != 0) {
                return f10;
            }
            g10 = cVar2.g();
        }
        return -1;
    }

    public final c G() {
        while (true) {
            long j10 = this.parkedWorkersStack;
            c cVar = this.f16809l.get((int) (2097151 & j10));
            if (cVar == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int F = F(cVar);
            if (F >= 0 && f16799n.compareAndSet(this, j10, F | j11)) {
                cVar.o(f16802q);
                return cVar;
            }
        }
    }

    public final boolean L(c cVar) {
        long j10;
        long j11;
        int f10;
        if (cVar.g() != f16802q) {
            return false;
        }
        do {
            j10 = this.parkedWorkersStack;
            int i10 = (int) (2097151 & j10);
            j11 = (2097152 + j10) & (-2097152);
            f10 = cVar.f();
            if (u0.a()) {
                if (!(f10 != 0)) {
                    throw new AssertionError();
                }
            }
            cVar.o(this.f16809l.get(i10));
        } while (!f16799n.compareAndSet(this, j10, f10 | j11));
        return true;
    }

    public final void N(c cVar, int i10, int i11) {
        while (true) {
            long j10 = this.parkedWorkersStack;
            int i12 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (i12 == i10) {
                i12 = i11 == 0 ? F(cVar) : i11;
            }
            if (i12 >= 0 && f16799n.compareAndSet(this, j10, j11 | i12)) {
                return;
            }
        }
    }

    public final void R(i iVar) {
        try {
            iVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void U(long j10) {
        int i10;
        if (f16801p.compareAndSet(this, 0, 1)) {
            c k10 = k();
            synchronized (this.f16809l) {
                i10 = (int) (this.controlState & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    int i12 = i11 + 1;
                    c cVar = this.f16809l.get(i11);
                    jc.l.c(cVar);
                    c cVar2 = cVar;
                    if (cVar2 != k10) {
                        while (cVar2.isAlive()) {
                            LockSupport.unpark(cVar2);
                            cVar2.join(j10);
                        }
                        d dVar = cVar2.f16813g;
                        if (u0.a()) {
                            if (!(dVar == d.TERMINATED)) {
                                throw new AssertionError();
                            }
                        }
                        cVar2.f16812f.g(this.f16808k);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11 = i12;
                    }
                }
            }
            this.f16808k.b();
            this.f16807j.b();
            while (true) {
                i e10 = k10 == null ? null : k10.e(true);
                if (e10 == null && (e10 = this.f16807j.d()) == null && (e10 = this.f16808k.d()) == null) {
                    break;
                } else {
                    R(e10);
                }
            }
            if (k10 != null) {
                k10.r(d.TERMINATED);
            }
            if (u0.a()) {
                if (!(((int) ((this.controlState & 9223367638808264704L) >> 42)) == this.f16803f)) {
                    throw new AssertionError();
                }
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void V(boolean z10) {
        long addAndGet = f16800o.addAndGet(this, 2097152L);
        if (z10 || w0() || h0(addAndGet)) {
            return;
        }
        w0();
    }

    public final void a0() {
        if (w0() || k0(this, 0L, 1, null)) {
            return;
        }
        w0();
    }

    public final boolean b(i iVar) {
        if (iVar.f16842g.B0() == 1) {
            return this.f16808k.a(iVar);
        }
        return this.f16807j.a(iVar);
    }

    public final i c0(c cVar, i iVar, boolean z10) {
        if (cVar == null || cVar.f16813g == d.TERMINATED) {
            return iVar;
        }
        if (iVar.f16842g.B0() == 0 && cVar.f16813g == d.BLOCKING) {
            return iVar;
        }
        cVar.f16817k = true;
        return cVar.f16812f.a(iVar, z10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        U(10000L);
    }

    public final int d() {
        synchronized (this.f16809l) {
            if (isTerminated()) {
                return -1;
            }
            long j10 = this.controlState;
            int i10 = (int) (j10 & 2097151);
            int a10 = nc.g.a(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
            if (a10 >= this.f16803f) {
                return 0;
            }
            if (i10 >= this.f16804g) {
                return 0;
            }
            int i11 = ((int) (this.controlState & 2097151)) + 1;
            if (i11 > 0 && this.f16809l.get(i11) == null) {
                c cVar = new c(i11);
                this.f16809l.set(i11, cVar);
                if (i11 == ((int) (2097151 & f16800o.incrementAndGet(this)))) {
                    cVar.start();
                    return a10 + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        z(this, runnable, null, false, 6, null);
    }

    public final i h(Runnable runnable, j jVar) {
        long a10 = l.f16849f.a();
        if (runnable instanceof i) {
            i iVar = (i) runnable;
            iVar.f16841f = a10;
            iVar.f16842g = jVar;
            return iVar;
        }
        return new k(runnable, a10, jVar);
    }

    public final boolean h0(long j10) {
        if (nc.g.a(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0) < this.f16803f) {
            int d10 = d();
            if (d10 == 1 && this.f16803f > 1) {
                d();
            }
            if (d10 > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final c k() {
        Thread currentThread = Thread.currentThread();
        c cVar = currentThread instanceof c ? (c) currentThread : null;
        if (cVar != null && jc.l.a(a.this, this)) {
            return cVar;
        }
        return null;
    }

    public String toString() {
        int i10;
        int i11;
        int i12;
        int i13;
        ArrayList arrayList = new ArrayList();
        int length = this.f16809l.length();
        int i14 = 0;
        if (1 < length) {
            i11 = 0;
            int i15 = 0;
            i12 = 0;
            i13 = 0;
            int i16 = 1;
            while (true) {
                int i17 = i16 + 1;
                c cVar = this.f16809l.get(i16);
                if (cVar != null) {
                    int f10 = cVar.f16812f.f();
                    int i18 = b.f16810a[cVar.f16813g.ordinal()];
                    if (i18 == 1) {
                        i14++;
                    } else if (i18 == 2) {
                        i11++;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(f10);
                        sb2.append('b');
                        arrayList.add(sb2.toString());
                    } else if (i18 == 3) {
                        i15++;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(f10);
                        sb3.append('c');
                        arrayList.add(sb3.toString());
                    } else if (i18 == 4) {
                        i12++;
                        if (f10 > 0) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(f10);
                            sb4.append('d');
                            arrayList.add(sb4.toString());
                        }
                    } else if (i18 == 5) {
                        i13++;
                    }
                }
                if (i17 >= length) {
                    break;
                }
                i16 = i17;
            }
            i10 = i14;
            i14 = i15;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
        }
        long j10 = this.controlState;
        return this.f16806i + '@' + v0.b(this) + "[Pool Size {core = " + this.f16803f + ", max = " + this.f16804g + "}, Worker States {CPU = " + i14 + ", blocking = " + i11 + ", parked = " + i10 + ", dormant = " + i12 + ", terminated = " + i13 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f16807j.c() + ", global blocking queue size = " + this.f16808k.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f16803f - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    public final boolean w0() {
        c G;
        do {
            G = G();
            if (G == null) {
                return false;
            }
        } while (!c.f16811m.compareAndSet(G, -1, 0));
        LockSupport.unpark(G);
        return true;
    }

    public final void x(Runnable runnable, j jVar, boolean z10) {
        rc.c.a();
        i h10 = h(runnable, jVar);
        c k10 = k();
        i c02 = c0(k10, h10, z10);
        if (c02 != null && !b(c02)) {
            throw new RejectedExecutionException(jc.l.m(this.f16806i, " was terminated"));
        }
        boolean z11 = z10 && k10 != null;
        if (h10.f16842g.B0() != 0) {
            V(z11);
        } else {
            if (z11) {
                return;
            }
            a0();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    /* loaded from: classes2.dex */
    public final class c extends Thread {

        /* renamed from: m, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f16811m = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");

        /* renamed from: f, reason: collision with root package name */
        public final m f16812f;

        /* renamed from: g, reason: collision with root package name */
        public d f16813g;

        /* renamed from: h, reason: collision with root package name */
        public long f16814h;

        /* renamed from: i, reason: collision with root package name */
        public long f16815i;
        private volatile int indexInArray;

        /* renamed from: j, reason: collision with root package name */
        public int f16816j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f16817k;
        private volatile Object nextParkedWorker;
        public volatile /* synthetic */ int workerCtl;

        public c() {
            setDaemon(true);
            this.f16812f = new m();
            this.f16813g = d.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = a.f16802q;
            this.f16816j = lc.c.f10629f.b();
        }

        public final void a(int i10) {
            if (i10 == 0) {
                return;
            }
            a.f16800o.addAndGet(a.this, -2097152L);
            d dVar = this.f16813g;
            if (dVar != d.TERMINATED) {
                if (u0.a()) {
                    if (!(dVar == d.BLOCKING)) {
                        throw new AssertionError();
                    }
                }
                this.f16813g = d.DORMANT;
            }
        }

        public final void b(int i10) {
            if (i10 != 0 && r(d.BLOCKING)) {
                a.this.a0();
            }
        }

        public final void c(i iVar) {
            int B0 = iVar.f16842g.B0();
            h(B0);
            b(B0);
            a.this.R(iVar);
            a(B0);
        }

        public final i d(boolean z10) {
            i l10;
            i l11;
            if (z10) {
                boolean z11 = j(a.this.f16803f * 2) == 0;
                if (z11 && (l11 = l()) != null) {
                    return l11;
                }
                i h10 = this.f16812f.h();
                if (h10 != null) {
                    return h10;
                }
                if (!z11 && (l10 = l()) != null) {
                    return l10;
                }
            } else {
                i l12 = l();
                if (l12 != null) {
                    return l12;
                }
            }
            return s(false);
        }

        public final i e(boolean z10) {
            i d10;
            if (p()) {
                return d(z10);
            }
            if (z10) {
                d10 = this.f16812f.h();
                if (d10 == null) {
                    d10 = a.this.f16808k.d();
                }
            } else {
                d10 = a.this.f16808k.d();
            }
            return d10 == null ? s(true) : d10;
        }

        public final int f() {
            return this.indexInArray;
        }

        public final Object g() {
            return this.nextParkedWorker;
        }

        public final void h(int i10) {
            this.f16814h = 0L;
            if (this.f16813g == d.PARKING) {
                if (u0.a()) {
                    if (!(i10 == 1)) {
                        throw new AssertionError();
                    }
                }
                this.f16813g = d.BLOCKING;
            }
        }

        public final boolean i() {
            return this.nextParkedWorker != a.f16802q;
        }

        public final int j(int i10) {
            int i11 = this.f16816j;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f16816j = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Api.BaseClientBuilder.API_PRIORITY_OTHER) % i10;
        }

        public final void k() {
            if (this.f16814h == 0) {
                this.f16814h = System.nanoTime() + a.this.f16805h;
            }
            LockSupport.parkNanos(a.this.f16805h);
            if (System.nanoTime() - this.f16814h >= 0) {
                this.f16814h = 0L;
                t();
            }
        }

        public final i l() {
            if (j(2) == 0) {
                i d10 = a.this.f16807j.d();
                return d10 == null ? a.this.f16808k.d() : d10;
            }
            i d11 = a.this.f16808k.d();
            return d11 == null ? a.this.f16807j.d() : d11;
        }

        public final void m() {
            loop0: while (true) {
                boolean z10 = false;
                while (!a.this.isTerminated() && this.f16813g != d.TERMINATED) {
                    i e10 = e(this.f16817k);
                    if (e10 != null) {
                        this.f16815i = 0L;
                        c(e10);
                    } else {
                        this.f16817k = false;
                        if (this.f16815i == 0) {
                            q();
                        } else if (z10) {
                            r(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f16815i);
                            this.f16815i = 0L;
                        } else {
                            z10 = true;
                        }
                    }
                }
            }
            r(d.TERMINATED);
        }

        public final void n(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a.this.f16806i);
            sb2.append("-worker-");
            sb2.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void o(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean p() {
            boolean z10;
            if (this.f16813g != d.CPU_ACQUIRED) {
                a aVar = a.this;
                while (true) {
                    long j10 = aVar.controlState;
                    if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                        z10 = false;
                        break;
                    }
                    if (a.f16800o.compareAndSet(aVar, j10, j10 - 4398046511104L)) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    return false;
                }
                this.f16813g = d.CPU_ACQUIRED;
            }
            return true;
        }

        public final void q() {
            if (!i()) {
                a.this.L(this);
                return;
            }
            if (u0.a()) {
                if (!(this.f16812f.f() == 0)) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (i() && this.workerCtl == -1 && !a.this.isTerminated() && this.f16813g != d.TERMINATED) {
                r(d.PARKING);
                Thread.interrupted();
                k();
            }
        }

        public final boolean r(d dVar) {
            d dVar2 = this.f16813g;
            boolean z10 = dVar2 == d.CPU_ACQUIRED;
            if (z10) {
                a.f16800o.addAndGet(a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f16813g = dVar;
            }
            return z10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m();
        }

        public final i s(boolean z10) {
            long l10;
            if (u0.a()) {
                if (!(this.f16812f.f() == 0)) {
                    throw new AssertionError();
                }
            }
            int i10 = (int) (a.this.controlState & 2097151);
            if (i10 < 2) {
                return null;
            }
            int j10 = j(i10);
            a aVar = a.this;
            long j11 = Long.MAX_VALUE;
            for (int i11 = 0; i11 < i10; i11++) {
                j10++;
                if (j10 > i10) {
                    j10 = 1;
                }
                c cVar = aVar.f16809l.get(j10);
                if (cVar != null && cVar != this) {
                    if (u0.a()) {
                        if (!(this.f16812f.f() == 0)) {
                            throw new AssertionError();
                        }
                    }
                    if (z10) {
                        l10 = this.f16812f.k(cVar.f16812f);
                    } else {
                        l10 = this.f16812f.l(cVar.f16812f);
                    }
                    if (l10 == -1) {
                        return this.f16812f.h();
                    }
                    if (l10 > 0) {
                        j11 = Math.min(j11, l10);
                    }
                }
            }
            if (j11 == RecyclerView.FOREVER_NS) {
                j11 = 0;
            }
            this.f16815i = j11;
            return null;
        }

        public final void t() {
            a aVar = a.this;
            synchronized (aVar.f16809l) {
                if (aVar.isTerminated()) {
                    return;
                }
                if (((int) (aVar.controlState & 2097151)) <= aVar.f16803f) {
                    return;
                }
                if (f16811m.compareAndSet(this, -1, 1)) {
                    int f10 = f();
                    n(0);
                    aVar.N(this, f10, 0);
                    int andDecrement = (int) (2097151 & a.f16800o.getAndDecrement(aVar));
                    if (andDecrement != f10) {
                        c cVar = aVar.f16809l.get(andDecrement);
                        jc.l.c(cVar);
                        c cVar2 = cVar;
                        aVar.f16809l.set(f10, cVar2);
                        cVar2.n(f10);
                        aVar.N(cVar2, andDecrement, f10);
                    }
                    aVar.f16809l.set(andDecrement, null);
                    p pVar = p.f15031a;
                    this.f16813g = d.TERMINATED;
                }
            }
        }

        public c(int i10) {
            this();
            n(i10);
        }
    }
}
