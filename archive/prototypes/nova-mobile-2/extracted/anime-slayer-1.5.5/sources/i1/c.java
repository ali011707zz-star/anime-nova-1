package i1;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ModernAsyncTask.java */
/* loaded from: classes.dex */
public abstract class c<Params, Progress, Result> {

    /* renamed from: k, reason: collision with root package name */
    public static final ThreadFactory f7516k;

    /* renamed from: l, reason: collision with root package name */
    public static final BlockingQueue<Runnable> f7517l;

    /* renamed from: m, reason: collision with root package name */
    public static final Executor f7518m;

    /* renamed from: n, reason: collision with root package name */
    public static f f7519n;

    /* renamed from: o, reason: collision with root package name */
    public static volatile Executor f7520o;

    /* renamed from: f, reason: collision with root package name */
    public final h<Params, Result> f7521f;

    /* renamed from: g, reason: collision with root package name */
    public final FutureTask<Result> f7522g;

    /* renamed from: h, reason: collision with root package name */
    public volatile g f7523h = g.PENDING;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f7524i = new AtomicBoolean();

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f7525j = new AtomicBoolean();

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f7526a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f7526a.getAndIncrement());
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public class b extends h<Params, Result> {
        public b() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            c.this.f7525j.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) c.this.b(this.f7536a);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* renamed from: i1.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0148c extends FutureTask<Result> {
        public C0148c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                c.this.m(get());
            } catch (InterruptedException unused) {
            } catch (CancellationException unused2) {
                c.this.m(null);
            } catch (ExecutionException e10) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e10.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class d {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7529a;

        static {
            int[] iArr = new int[g.values().length];
            f7529a = iArr;
            try {
                iArr[g.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7529a[g.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static class e<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final c f7530a;

        /* renamed from: b, reason: collision with root package name */
        public final Data[] f7531b;

        public e(c cVar, Data... dataArr) {
            this.f7530a = cVar;
            this.f7531b = dataArr;
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static class f extends Handler {
        public f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar = (e) message.obj;
            int i10 = message.what;
            if (i10 == 1) {
                eVar.f7530a.d(eVar.f7531b[0]);
            } else {
                if (i10 != 2) {
                    return;
                }
                eVar.f7530a.k(eVar.f7531b);
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public enum g {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static abstract class h<Params, Result> implements Callable<Result> {

        /* renamed from: a, reason: collision with root package name */
        public Params[] f7536a;
    }

    static {
        a aVar = new a();
        f7516k = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f7517l = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar);
        f7518m = threadPoolExecutor;
        f7520o = threadPoolExecutor;
    }

    public c() {
        b bVar = new b();
        this.f7521f = bVar;
        this.f7522g = new C0148c(bVar);
    }

    public static Handler e() {
        f fVar;
        synchronized (c.class) {
            if (f7519n == null) {
                f7519n = new f();
            }
            fVar = f7519n;
        }
        return fVar;
    }

    public final boolean a(boolean z10) {
        this.f7524i.set(true);
        return this.f7522g.cancel(z10);
    }

    public abstract Result b(Params... paramsArr);

    public final c<Params, Progress, Result> c(Executor executor, Params... paramsArr) {
        if (this.f7523h != g.PENDING) {
            int i10 = d.f7529a[this.f7523h.ordinal()];
            if (i10 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i10 != 2) {
                throw new IllegalStateException("We should never reach this state");
            }
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        this.f7523h = g.RUNNING;
        j();
        this.f7521f.f7536a = paramsArr;
        executor.execute(this.f7522g);
        return this;
    }

    public void d(Result result) {
        if (f()) {
            h(result);
        } else {
            i(result);
        }
        this.f7523h = g.FINISHED;
    }

    public final boolean f() {
        return this.f7524i.get();
    }

    public void g() {
    }

    public void h(Result result) {
        g();
    }

    public void i(Result result) {
    }

    public void j() {
    }

    public void k(Progress... progressArr) {
    }

    public Result l(Result result) {
        e().obtainMessage(1, new e(this, result)).sendToTarget();
        return result;
    }

    public void m(Result result) {
        if (this.f7525j.get()) {
            return;
        }
        l(result);
    }
}
