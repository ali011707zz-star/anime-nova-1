package rc;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CommonPool.kt */
/* loaded from: classes2.dex */
public final class z extends s1 {

    /* renamed from: h, reason: collision with root package name */
    public static final z f13355h = new z();

    /* renamed from: i, reason: collision with root package name */
    public static final int f13356i;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f13357j;
    private static volatile Executor pool;

    static {
        String str;
        int intValue;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable unused) {
            str = null;
        }
        if (str == null) {
            intValue = -1;
        } else {
            Integer j10 = qc.s.j(str);
            if (j10 != null && j10.intValue() >= 1) {
                intValue = j10.intValue();
            } else {
                throw new IllegalStateException(jc.l.m("Expected positive number in kotlinx.coroutines.default.parallelism, but has ", str).toString());
            }
        }
        f13356i = intValue;
    }

    public static final Thread O0(AtomicInteger atomicInteger, Runnable runnable) {
        Thread thread = new Thread(runnable, jc.l.m("CommonPool-worker-", Integer.valueOf(atomicInteger.incrementAndGet())));
        thread.setDaemon(true);
        return thread;
    }

    public static final void T0() {
    }

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        try {
            Executor executor = pool;
            if (executor == null) {
                executor = Q0();
            }
            c.a();
            executor.execute(runnable);
        } catch (RejectedExecutionException unused) {
            c.a();
            w0.f13346l.c1(runnable);
        }
    }

    @Override // rc.s1
    public Executor K0() {
        Executor executor = pool;
        return executor == null ? Q0() : executor;
    }

    public final ExecutorService N0() {
        final AtomicInteger atomicInteger = new AtomicInteger();
        return Executors.newFixedThreadPool(R0(), new ThreadFactory() { // from class: rc.y
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread O0;
                O0 = z.O0(atomicInteger, runnable);
                return O0;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ExecutorService P0() {
        Class<?> cls;
        ExecutorService executorService;
        Object invoke;
        if (System.getSecurityManager() != null) {
            return N0();
        }
        ExecutorService executorService2 = null;
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return N0();
        }
        if (!f13357j && f13356i < 0) {
            try {
                invoke = cls.getMethod("commonPool", new Class[0]).invoke(null, new Object[0]);
            } catch (Throwable unused2) {
            }
            if (invoke instanceof ExecutorService) {
                executorService = (ExecutorService) invoke;
                if (executorService != null) {
                    if (!f13355h.S0(cls, executorService)) {
                        executorService = null;
                    }
                    if (executorService != null) {
                        return executorService;
                    }
                }
            }
            executorService = null;
            if (executorService != null) {
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(f13355h.R0()));
            if (newInstance instanceof ExecutorService) {
                executorService2 = (ExecutorService) newInstance;
            }
        } catch (Throwable unused3) {
        }
        return executorService2 == null ? N0() : executorService2;
    }

    public final synchronized Executor Q0() {
        Executor executor;
        executor = pool;
        if (executor == null) {
            executor = P0();
            pool = executor;
        }
        return executor;
    }

    public final int R0() {
        Integer valueOf = Integer.valueOf(f13356i);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            return nc.g.a(Runtime.getRuntime().availableProcessors() - 1, 1);
        }
        return valueOf.intValue();
    }

    public final boolean S0(Class<?> cls, ExecutorService executorService) {
        executorService.submit(new Runnable() { // from class: rc.x
            @Override // java.lang.Runnable
            public final void run() {
                z.T0();
            }
        });
        Integer num = null;
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            if (invoke instanceof Integer) {
                num = (Integer) invoke;
            }
        } catch (Throwable unused) {
        }
        return num != null && num.intValue() >= 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // rc.l0
    public String toString() {
        return "CommonPool";
    }
}
