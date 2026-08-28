package cd;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout.kt */
/* loaded from: classes2.dex */
public class d0 {
    public static final b Companion = new b(null);
    public static final d0 NONE = new a();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    /* compiled from: Timeout.kt */
    /* loaded from: classes2.dex */
    public static final class a extends d0 {
        @Override // cd.d0
        public d0 deadlineNanoTime(long j10) {
            return this;
        }

        @Override // cd.d0
        public void throwIfReached() {
        }

        @Override // cd.d0
        public d0 timeout(long j10, TimeUnit timeUnit) {
            jc.l.f(timeUnit, "unit");
            return this;
        }
    }

    /* compiled from: Timeout.kt */
    /* loaded from: classes2.dex */
    public static final class b {
        public b() {
        }

        public final long a(long j10, long j11) {
            return (j10 != 0 && (j11 == 0 || j10 < j11)) ? j10 : j11;
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }
    }

    public d0 clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public d0 clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final d0 deadline(long j10, TimeUnit timeUnit) {
        jc.l.f(timeUnit, "unit");
        if (j10 > 0) {
            return deadlineNanoTime(System.nanoTime() + timeUnit.toNanos(j10));
        }
        throw new IllegalArgumentException(("duration <= 0: " + j10).toString());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final void intersectWith(d0 d0Var, ic.a<vb.p> aVar) {
        jc.l.f(d0Var, "other");
        jc.l.f(aVar, "block");
        long timeoutNanos = timeoutNanos();
        long a10 = Companion.a(d0Var.timeoutNanos(), timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(a10, timeUnit);
        if (hasDeadline()) {
            long deadlineNanoTime = deadlineNanoTime();
            if (d0Var.hasDeadline()) {
                deadlineNanoTime(Math.min(deadlineNanoTime(), d0Var.deadlineNanoTime()));
            }
            try {
                aVar.invoke();
                jc.k.b(1);
                timeout(timeoutNanos, timeUnit);
                if (d0Var.hasDeadline()) {
                    deadlineNanoTime(deadlineNanoTime);
                }
                jc.k.a(1);
                return;
            } catch (Throwable th) {
                jc.k.b(1);
                timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (d0Var.hasDeadline()) {
                    deadlineNanoTime(deadlineNanoTime);
                }
                jc.k.a(1);
                throw th;
            }
        }
        if (d0Var.hasDeadline()) {
            deadlineNanoTime(d0Var.deadlineNanoTime());
        }
        try {
            aVar.invoke();
            jc.k.b(1);
            timeout(timeoutNanos, timeUnit);
            if (d0Var.hasDeadline()) {
                clearDeadline();
            }
            jc.k.a(1);
        } catch (Throwable th2) {
            jc.k.b(1);
            timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (d0Var.hasDeadline()) {
                clearDeadline();
            }
            jc.k.a(1);
            throw th2;
        }
    }

    public void throwIfReached() throws IOException {
        Thread currentThread = Thread.currentThread();
        jc.l.e(currentThread, "Thread.currentThread()");
        if (!currentThread.isInterrupted()) {
            if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    public d0 timeout(long j10, TimeUnit timeUnit) {
        jc.l.f(timeUnit, "unit");
        if (j10 >= 0) {
            this.timeoutNanos = timeUnit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j10).toString());
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        jc.l.f(obj, "monitor");
        try {
            boolean hasDeadline = hasDeadline();
            long timeoutNanos = timeoutNanos();
            long j10 = 0;
            if (!hasDeadline && timeoutNanos == 0) {
                obj.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (hasDeadline && timeoutNanos != 0) {
                timeoutNanos = Math.min(timeoutNanos, deadlineNanoTime() - nanoTime);
            } else if (hasDeadline) {
                timeoutNanos = deadlineNanoTime() - nanoTime;
            }
            if (timeoutNanos > 0) {
                long j11 = timeoutNanos / 1000000;
                Long.signum(j11);
                obj.wait(j11, (int) (timeoutNanos - (1000000 * j11)));
                j10 = System.nanoTime() - nanoTime;
            }
            if (j10 >= timeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public d0 deadlineNanoTime(long j10) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j10;
        return this;
    }
}
