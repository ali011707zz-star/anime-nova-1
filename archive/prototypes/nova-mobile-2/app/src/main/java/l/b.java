package l;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: DefaultTaskExecutor.java */
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10183a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f10184b = Executors.newFixedThreadPool(4, new a());

    /* renamed from: c, reason: collision with root package name */
    public volatile Handler f10185c;

    /* compiled from: DefaultTaskExecutor.java */
    /* loaded from: classes.dex */
    public class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f10186a = new AtomicInteger(0);

        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f10186a.getAndIncrement())));
            return thread;
        }
    }

    public static Handler e(Looper looper) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            return Handler.createAsync(looper);
        }
        if (i10 >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            } catch (InvocationTargetException unused2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // l.c
    public void a(Runnable runnable) {
        this.f10184b.execute(runnable);
    }

    @Override // l.c
    public boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // l.c
    public void d(Runnable runnable) {
        if (this.f10185c == null) {
            synchronized (this.f10183a) {
                if (this.f10185c == null) {
                    this.f10185c = e(Looper.getMainLooper());
                }
            }
        }
        this.f10185c.post(runnable);
    }
}
