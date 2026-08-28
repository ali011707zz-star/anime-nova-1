package cd;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes2.dex */
public class d extends d0 {
    public static final a Companion = new a(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static d head;
    private boolean inQueue;
    private d next;
    private long timeoutAt;

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public final d c() throws InterruptedException {
            d dVar = d.head;
            jc.l.c(dVar);
            d dVar2 = dVar.next;
            if (dVar2 != null) {
                long remainingNanos = dVar2.remainingNanos(System.nanoTime());
                if (remainingNanos <= 0) {
                    d dVar3 = d.head;
                    jc.l.c(dVar3);
                    dVar3.next = dVar2.next;
                    dVar2.next = null;
                    return dVar2;
                }
                long j10 = remainingNanos / 1000000;
                d.class.wait(j10, (int) (remainingNanos - (1000000 * j10)));
                return null;
            }
            long nanoTime = System.nanoTime();
            d.class.wait(d.IDLE_TIMEOUT_MILLIS);
            d dVar4 = d.head;
            jc.l.c(dVar4);
            if (dVar4.next != null || System.nanoTime() - nanoTime < d.IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return d.head;
        }

        public final boolean d(d dVar) {
            synchronized (d.class) {
                if (!dVar.inQueue) {
                    return false;
                }
                dVar.inQueue = false;
                for (d dVar2 = d.head; dVar2 != null; dVar2 = dVar2.next) {
                    if (dVar2.next == dVar) {
                        dVar2.next = dVar.next;
                        dVar.next = null;
                        return false;
                    }
                }
                return true;
            }
        }

        public final void e(d dVar, long j10, boolean z10) {
            synchronized (d.class) {
                if (!dVar.inQueue) {
                    dVar.inQueue = true;
                    if (d.head == null) {
                        d.head = new d();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (j10 != 0 && z10) {
                        dVar.timeoutAt = Math.min(j10, dVar.deadlineNanoTime() - nanoTime) + nanoTime;
                    } else if (j10 != 0) {
                        dVar.timeoutAt = j10 + nanoTime;
                    } else if (z10) {
                        dVar.timeoutAt = dVar.deadlineNanoTime();
                    } else {
                        throw new AssertionError();
                    }
                    long remainingNanos = dVar.remainingNanos(nanoTime);
                    d dVar2 = d.head;
                    jc.l.c(dVar2);
                    while (dVar2.next != null) {
                        d dVar3 = dVar2.next;
                        jc.l.c(dVar3);
                        if (remainingNanos < dVar3.remainingNanos(nanoTime)) {
                            break;
                        }
                        dVar2 = dVar2.next;
                        jc.l.c(dVar2);
                    }
                    dVar.next = dVar2.next;
                    dVar2.next = dVar;
                    if (dVar2 == d.head) {
                        d.class.notify();
                    }
                    vb.p pVar = vb.p.f15031a;
                } else {
                    throw new IllegalStateException("Unbalanced enter/exit".toString());
                }
            }
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes2.dex */
    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            d c10;
            while (true) {
                try {
                    synchronized (d.class) {
                        try {
                            c10 = d.Companion.c();
                            if (c10 == d.head) {
                                d.head = null;
                                return;
                            }
                            vb.p pVar = vb.p.f15031a;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (c10 != null) {
                        c10.timedOut();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes2.dex */
    public static final class c implements a0 {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ a0 f3903g;

        public c(a0 a0Var) {
            this.f3903g = a0Var;
        }

        @Override // cd.a0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public d timeout() {
            return d.this;
        }

        @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            d dVar = d.this;
            dVar.enter();
            try {
                this.f3903g.close();
                vb.p pVar = vb.p.f15031a;
                if (dVar.exit()) {
                    throw dVar.access$newTimeoutException(null);
                }
            } catch (IOException e10) {
                if (!dVar.exit()) {
                    throw e10;
                }
                throw dVar.access$newTimeoutException(e10);
            } finally {
                dVar.exit();
            }
        }

        @Override // cd.a0, java.io.Flushable
        public void flush() {
            d dVar = d.this;
            dVar.enter();
            try {
                this.f3903g.flush();
                vb.p pVar = vb.p.f15031a;
                if (dVar.exit()) {
                    throw dVar.access$newTimeoutException(null);
                }
            } catch (IOException e10) {
                if (!dVar.exit()) {
                    throw e10;
                }
                throw dVar.access$newTimeoutException(e10);
            } finally {
                dVar.exit();
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f3903g + ')';
        }

        @Override // cd.a0
        public void write(f fVar, long j10) {
            jc.l.f(fVar, "source");
            cd.c.b(fVar.N0(), 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                x xVar = fVar.f3906f;
                jc.l.c(xVar);
                while (true) {
                    if (j11 >= d.TIMEOUT_WRITE_SIZE) {
                        break;
                    }
                    j11 += xVar.f3956c - xVar.f3955b;
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    } else {
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                    }
                }
                d dVar = d.this;
                dVar.enter();
                try {
                    this.f3903g.write(fVar, j11);
                    vb.p pVar = vb.p.f15031a;
                    if (dVar.exit()) {
                        throw dVar.access$newTimeoutException(null);
                    }
                    j10 -= j11;
                } catch (IOException e10) {
                    if (!dVar.exit()) {
                        throw e10;
                    }
                    throw dVar.access$newTimeoutException(e10);
                } finally {
                    dVar.exit();
                }
            }
        }
    }

    /* compiled from: AsyncTimeout.kt */
    /* renamed from: cd.d$d, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0079d implements c0 {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ c0 f3905g;

        public C0079d(c0 c0Var) {
            this.f3905g = c0Var;
        }

        @Override // cd.c0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public d timeout() {
            return d.this;
        }

        @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            d dVar = d.this;
            dVar.enter();
            try {
                this.f3905g.close();
                vb.p pVar = vb.p.f15031a;
                if (dVar.exit()) {
                    throw dVar.access$newTimeoutException(null);
                }
            } catch (IOException e10) {
                if (!dVar.exit()) {
                    throw e10;
                }
                throw dVar.access$newTimeoutException(e10);
            } finally {
                dVar.exit();
            }
        }

        @Override // cd.c0
        public long read(f fVar, long j10) {
            jc.l.f(fVar, "sink");
            d dVar = d.this;
            dVar.enter();
            try {
                long read = this.f3905g.read(fVar, j10);
                if (dVar.exit()) {
                    throw dVar.access$newTimeoutException(null);
                }
                return read;
            } catch (IOException e10) {
                if (dVar.exit()) {
                    throw dVar.access$newTimeoutException(e10);
                }
                throw e10;
            } finally {
                dVar.exit();
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f3905g + ')';
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long remainingNanos(long j10) {
        return this.timeoutAt - j10;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            Companion.e(this, timeoutNanos, hasDeadline);
        }
    }

    public final boolean exit() {
        return Companion.d(this);
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final a0 sink(a0 a0Var) {
        jc.l.f(a0Var, "sink");
        return new c(a0Var);
    }

    public final c0 source(c0 c0Var) {
        jc.l.f(c0Var, "source");
        return new C0079d(c0Var);
    }

    public void timedOut() {
    }

    public final <T> T withTimeout(ic.a<? extends T> aVar) {
        jc.l.f(aVar, "block");
        enter();
        try {
            try {
                T invoke = aVar.invoke();
                jc.k.b(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                jc.k.a(1);
                return invoke;
            } catch (IOException e10) {
                if (exit()) {
                    throw access$newTimeoutException(e10);
                }
                throw e10;
            }
        } catch (Throwable th) {
            jc.k.b(1);
            exit();
            jc.k.a(1);
            throw th;
        }
    }
}
