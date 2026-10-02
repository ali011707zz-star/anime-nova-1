package rc;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* compiled from: DefaultExecutor.kt */
/* loaded from: classes2.dex */
public final class w0 extends n1 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: l, reason: collision with root package name */
    public static final w0 f13346l;

    /* renamed from: m, reason: collision with root package name */
    public static final long f13347m;

    static {
        Long l10;
        w0 w0Var = new w0();
        f13346l = w0Var;
        m1.Q0(w0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f13347m = timeUnit.toNanos(l10.longValue());
    }

    @Override // rc.o1
    public Thread W0() {
        Thread thread = _thread;
        return thread == null ? o1() : thread;
    }

    public final synchronized void n1() {
        if (p1()) {
            debugStatus = 3;
            h1();
            notifyAll();
        }
    }

    public final synchronized Thread o1() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    public final boolean p1() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    public final synchronized boolean q1() {
        if (p1()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean f12;
        b3.f13232a.d(this);
        c.a();
        try {
            if (!q1()) {
                if (f12) {
                    return;
                } else {
                    return;
                }
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long T0 = T0();
                if (T0 == RecyclerView.FOREVER_NS) {
                    c.a();
                    long nanoTime = System.nanoTime();
                    if (j10 == RecyclerView.FOREVER_NS) {
                        j10 = f13347m + nanoTime;
                    }
                    long j11 = j10 - nanoTime;
                    if (j11 <= 0) {
                        _thread = null;
                        n1();
                        c.a();
                        if (f1()) {
                            return;
                        }
                        W0();
                        return;
                    }
                    T0 = nc.g.d(T0, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (T0 > 0) {
                    if (p1()) {
                        _thread = null;
                        n1();
                        c.a();
                        if (f1()) {
                            return;
                        }
                        W0();
                        return;
                    }
                    c.a();
                    LockSupport.parkNanos(this, T0);
                }
            }
        } finally {
            _thread = null;
            n1();
            c.a();
            if (!f1()) {
                W0();
            }
        }
    }

    @Override // rc.n1, rc.a1
    public i1 w0(long j10, Runnable runnable, ac.g gVar) {
        return k1(j10, runnable);
    }
}
