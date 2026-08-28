package yc;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rc.s1;

/* compiled from: Dispatcher.kt */
/* loaded from: classes2.dex */
public final class e extends s1 implements j, Executor {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16832m = AtomicIntegerFieldUpdater.newUpdater(e.class, "inFlightTasks");

    /* renamed from: h, reason: collision with root package name */
    public final c f16833h;

    /* renamed from: i, reason: collision with root package name */
    public final int f16834i;

    /* renamed from: j, reason: collision with root package name */
    public final String f16835j;

    /* renamed from: k, reason: collision with root package name */
    public final int f16836k;

    /* renamed from: l, reason: collision with root package name */
    public final ConcurrentLinkedQueue<Runnable> f16837l = new ConcurrentLinkedQueue<>();
    private volatile /* synthetic */ int inFlightTasks = 0;

    public e(c cVar, int i10, String str, int i11) {
        this.f16833h = cVar;
        this.f16834i = i10;
        this.f16835j = str;
        this.f16836k = i11;
    }

    @Override // yc.j
    public int B0() {
        return this.f16836k;
    }

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        L0(runnable, false);
    }

    @Override // rc.l0
    public void I0(ac.g gVar, Runnable runnable) {
        L0(runnable, true);
    }

    @Override // rc.s1
    public Executor K0() {
        return this;
    }

    public final void L0(Runnable runnable, boolean z10) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f16832m;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f16834i) {
                this.f16833h.M0(runnable, this, z10);
                return;
            }
            this.f16837l.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f16834i) {
                return;
            } else {
                runnable = this.f16837l.poll();
            }
        } while (runnable != null);
    }

    @Override // yc.j
    public void R() {
        Runnable poll = this.f16837l.poll();
        if (poll != null) {
            this.f16833h.M0(poll, this, true);
            return;
        }
        f16832m.decrementAndGet(this);
        Runnable poll2 = this.f16837l.poll();
        if (poll2 == null) {
            return;
        }
        L0(poll2, true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        L0(runnable, false);
    }

    @Override // rc.l0
    public String toString() {
        String str = this.f16835j;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + this.f16833h + ']';
    }
}
