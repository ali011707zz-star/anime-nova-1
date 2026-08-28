package n0;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: RequestExecutor.java */
/* loaded from: classes.dex */
public class g {

    /* compiled from: RequestExecutor.java */
    /* loaded from: classes.dex */
    public static class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public String f11154a;

        /* renamed from: b, reason: collision with root package name */
        public int f11155b;

        /* compiled from: RequestExecutor.java */
        /* renamed from: n0.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0267a extends Thread {

            /* renamed from: f, reason: collision with root package name */
            public final int f11156f;

            public C0267a(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.f11156f = i10;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f11156f);
                super.run();
            }
        }

        public a(String str, int i10) {
            this.f11154a = str;
            this.f11155b = i10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0267a(runnable, this.f11154a, this.f11155b);
        }
    }

    /* compiled from: RequestExecutor.java */
    /* loaded from: classes.dex */
    public static class b<T> implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public Callable<T> f11157f;

        /* renamed from: g, reason: collision with root package name */
        public p0.a<T> f11158g;

        /* renamed from: h, reason: collision with root package name */
        public Handler f11159h;

        /* compiled from: RequestExecutor.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ p0.a f11160f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Object f11161g;

            public a(p0.a aVar, Object obj) {
                this.f11160f = aVar;
                this.f11161g = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f11160f.a(this.f11161g);
            }
        }

        public b(Handler handler, Callable<T> callable, p0.a<T> aVar) {
            this.f11157f = callable;
            this.f11158g = aVar;
            this.f11159h = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T t10;
            try {
                t10 = this.f11157f.call();
            } catch (Exception unused) {
                t10 = null;
            }
            this.f11159h.post(new a(this.f11158g, t10));
        }
    }

    public static ThreadPoolExecutor a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static <T> void b(Executor executor, Callable<T> callable, p0.a<T> aVar) {
        executor.execute(new b(n0.b.a(), callable, aVar));
    }

    public static <T> T c(ExecutorService executorService, Callable<T> callable, int i10) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
