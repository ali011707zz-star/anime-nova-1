package rc;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public final class t1 extends s1 implements a1 {

    /* renamed from: h, reason: collision with root package name */
    public final Executor f13335h;

    public t1(Executor executor) {
        this.f13335h = executor;
        wc.e.a(K0());
    }

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        try {
            Executor K0 = K0();
            c.a();
            K0.execute(runnable);
        } catch (RejectedExecutionException e10) {
            c.a();
            L0(gVar, e10);
            g1.b().H0(gVar, runnable);
        }
    }

    @Override // rc.s1
    public Executor K0() {
        return this.f13335h;
    }

    @Override // rc.a1
    public void L(long j10, o<? super vb.p> oVar) {
        Executor K0 = K0();
        ScheduledExecutorService scheduledExecutorService = K0 instanceof ScheduledExecutorService ? (ScheduledExecutorService) K0 : null;
        ScheduledFuture<?> M0 = scheduledExecutorService != null ? M0(scheduledExecutorService, new v2(this, oVar), oVar.getContext(), j10) : null;
        if (M0 != null) {
            f2.f(oVar, M0);
        } else {
            w0.f13346l.L(j10, oVar);
        }
    }

    public final void L0(ac.g gVar, RejectedExecutionException rejectedExecutionException) {
        f2.c(gVar, r1.a("The task was rejected", rejectedExecutionException));
    }

    public final ScheduledFuture<?> M0(ScheduledExecutorService scheduledExecutorService, Runnable runnable, ac.g gVar, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            L0(gVar, e10);
            return null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor K0 = K0();
        ExecutorService executorService = K0 instanceof ExecutorService ? (ExecutorService) K0 : null;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    public boolean equals(Object obj) {
        return (obj instanceof t1) && ((t1) obj).K0() == K0();
    }

    public int hashCode() {
        return System.identityHashCode(K0());
    }

    @Override // rc.l0
    public String toString() {
        return K0().toString();
    }

    @Override // rc.a1
    public i1 w0(long j10, Runnable runnable, ac.g gVar) {
        Executor K0 = K0();
        ScheduledExecutorService scheduledExecutorService = K0 instanceof ScheduledExecutorService ? (ScheduledExecutorService) K0 : null;
        ScheduledFuture<?> M0 = scheduledExecutorService != null ? M0(scheduledExecutorService, runnable, gVar, j10) : null;
        if (M0 != null) {
            return new h1(M0);
        }
        return w0.f13346l.w0(j10, runnable, gVar);
    }
}
