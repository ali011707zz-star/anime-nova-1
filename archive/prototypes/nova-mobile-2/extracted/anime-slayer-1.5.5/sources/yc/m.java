package yc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.u0;

/* compiled from: WorkQueue.kt */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f16850b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16851c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16852d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16853e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray<i> f16854a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public static /* synthetic */ i b(m mVar, i iVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return mVar.a(iVar, z10);
    }

    public final i a(i iVar, boolean z10) {
        if (z10) {
            return c(iVar);
        }
        i iVar2 = (i) f16850b.getAndSet(this, iVar);
        if (iVar2 == null) {
            return null;
        }
        return c(iVar2);
    }

    public final i c(i iVar) {
        if (iVar.f16842g.B0() == 1) {
            f16853e.incrementAndGet(this);
        }
        if (e() == 127) {
            return iVar;
        }
        int i10 = this.producerIndex & 127;
        while (this.f16854a.get(i10) != null) {
            Thread.yield();
        }
        this.f16854a.lazySet(i10, iVar);
        f16851c.incrementAndGet(this);
        return null;
    }

    public final void d(i iVar) {
        if (iVar != null) {
            if (iVar.f16842g.B0() == 1) {
                int decrementAndGet = f16853e.decrementAndGet(this);
                if (u0.a()) {
                    if (!(decrementAndGet >= 0)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    public final int e() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int f() {
        return this.lastScheduledTask != null ? e() + 1 : e();
    }

    public final void g(d dVar) {
        i iVar = (i) f16850b.getAndSet(this, null);
        if (iVar != null) {
            dVar.a(iVar);
        }
        do {
        } while (j(dVar));
    }

    public final i h() {
        i iVar = (i) f16850b.getAndSet(this, null);
        return iVar == null ? i() : iVar;
    }

    public final i i() {
        i andSet;
        while (true) {
            int i10 = this.consumerIndex;
            if (i10 - this.producerIndex == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f16852d.compareAndSet(this, i10, i10 + 1) && (andSet = this.f16854a.getAndSet(i11, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    public final boolean j(d dVar) {
        i i10 = i();
        if (i10 == null) {
            return false;
        }
        dVar.a(i10);
        return true;
    }

    public final long k(m mVar) {
        if (u0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        int i10 = mVar.producerIndex;
        AtomicReferenceArray<i> atomicReferenceArray = mVar.f16854a;
        for (int i11 = mVar.consumerIndex; i11 != i10; i11++) {
            int i12 = i11 & 127;
            if (mVar.blockingTasksInBuffer == 0) {
                break;
            }
            i iVar = atomicReferenceArray.get(i12);
            if (iVar != null) {
                if ((iVar.f16842g.B0() == 1) && atomicReferenceArray.compareAndSet(i12, iVar, null)) {
                    f16853e.decrementAndGet(mVar);
                    b(this, iVar, false, 2, null);
                    return -1L;
                }
            }
        }
        return m(mVar, true);
    }

    public final long l(m mVar) {
        if (u0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        i i10 = mVar.i();
        if (i10 != null) {
            i b10 = b(this, i10, false, 2, null);
            if (!u0.a()) {
                return -1L;
            }
            if (b10 == null) {
                return -1L;
            }
            throw new AssertionError();
        }
        return m(mVar, false);
    }

    public final long m(m mVar, boolean z10) {
        i iVar;
        do {
            iVar = (i) mVar.lastScheduledTask;
            if (iVar == null) {
                return -2L;
            }
            if (z10) {
                if (!(iVar.f16842g.B0() == 1)) {
                    return -2L;
                }
            }
            long a10 = l.f16849f.a() - iVar.f16841f;
            long j10 = l.f16844a;
            if (a10 < j10) {
                return j10 - a10;
            }
        } while (!ad.c.a(f16850b, mVar, iVar, null));
        b(this, iVar, false, 2, null);
        return -1L;
    }
}
