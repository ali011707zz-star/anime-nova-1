package u7;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: GlideExecutor.java */
/* loaded from: classes.dex */
public final class a implements ExecutorService {

    /* renamed from: g, reason: collision with root package name */
    public static final long f14474g = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: h, reason: collision with root package name */
    public static volatile int f14475h;

    /* renamed from: f, reason: collision with root package name */
    public final ExecutorService f14476f;

    /* compiled from: GlideExecutor.java */
    /* renamed from: u7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0366a {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f14477a;

        /* renamed from: b, reason: collision with root package name */
        public int f14478b;

        /* renamed from: c, reason: collision with root package name */
        public int f14479c;

        /* renamed from: d, reason: collision with root package name */
        public c f14480d = c.f14491d;

        /* renamed from: e, reason: collision with root package name */
        public String f14481e;

        /* renamed from: f, reason: collision with root package name */
        public long f14482f;

        public C0366a(boolean z10) {
            this.f14477a = z10;
        }

        public a a() {
            if (!TextUtils.isEmpty(this.f14481e)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f14478b, this.f14479c, this.f14482f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new b(this.f14481e, this.f14480d, this.f14477a));
                if (this.f14482f != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f14481e);
        }

        public C0366a b(String str) {
            this.f14481e = str;
            return this;
        }

        public C0366a c(int i10) {
            this.f14478b = i10;
            this.f14479c = i10;
            return this;
        }
    }

    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final String f14483a;

        /* renamed from: b, reason: collision with root package name */
        public final c f14484b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f14485c;

        /* renamed from: d, reason: collision with root package name */
        public int f14486d;

        /* compiled from: GlideExecutor.java */
        /* renamed from: u7.a$b$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0367a extends Thread {
            public C0367a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (b.this.f14485c) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    b.this.f14484b.a(th);
                }
            }
        }

        public b(String str, c cVar, boolean z10) {
            this.f14483a = str;
            this.f14484b = cVar;
            this.f14485c = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            C0367a c0367a;
            c0367a = new C0367a(runnable, "glide-" + this.f14483a + "-thread-" + this.f14486d);
            this.f14486d = this.f14486d + 1;
            return c0367a;
        }
    }

    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    public interface c {

        /* renamed from: a, reason: collision with root package name */
        public static final c f14488a = new C0368a();

        /* renamed from: b, reason: collision with root package name */
        public static final c f14489b;

        /* renamed from: c, reason: collision with root package name */
        public static final c f14490c;

        /* renamed from: d, reason: collision with root package name */
        public static final c f14491d;

        /* compiled from: GlideExecutor.java */
        /* renamed from: u7.a$c$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0368a implements c {
            @Override // u7.a.c
            public void a(Throwable th) {
            }
        }

        /* compiled from: GlideExecutor.java */
        /* loaded from: classes.dex */
        public class b implements c {
            @Override // u7.a.c
            public void a(Throwable th) {
            }
        }

        /* compiled from: GlideExecutor.java */
        /* renamed from: u7.a$c$c, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0369c implements c {
            @Override // u7.a.c
            public void a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        static {
            b bVar = new b();
            f14489b = bVar;
            f14490c = new C0369c();
            f14491d = bVar;
        }

        void a(Throwable th);
    }

    public a(ExecutorService executorService) {
        this.f14476f = executorService;
    }

    public static int a() {
        if (f14475h == 0) {
            f14475h = Math.min(4, u7.b.a());
        }
        return f14475h;
    }

    public static C0366a b() {
        return new C0366a(true).c(a() >= 4 ? 2 : 1).b("animation");
    }

    public static a c() {
        return b().a();
    }

    public static C0366a d() {
        return new C0366a(true).c(1).b("disk-cache");
    }

    public static a e() {
        return d().a();
    }

    public static C0366a f() {
        return new C0366a(false).c(a()).b("source");
    }

    public static a g() {
        return f().a();
    }

    public static a h() {
        return new a(new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, f14474g, TimeUnit.MILLISECONDS, new SynchronousQueue(), new b("source-unlimited", c.f14491d, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f14476f.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f14476f.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f14476f.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f14476f.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f14476f.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f14476f.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f14476f.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f14476f.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f14476f.submit(runnable);
    }

    public String toString() {
        return this.f14476f.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f14476f.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f14476f.invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t10) {
        return this.f14476f.submit(runnable, t10);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f14476f.submit(callable);
    }
}
