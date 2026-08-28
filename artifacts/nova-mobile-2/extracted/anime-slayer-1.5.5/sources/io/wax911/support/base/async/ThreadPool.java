package io.wax911.support.base.async;

import java.util.concurrent.ExecutorService;
import jc.g;
import jc.l;
import vb.e;
import vb.f;

/* compiled from: ThreadPool.kt */
/* loaded from: classes.dex */
public final class ThreadPool {
    public static final Companion Companion = new Companion(null);
    private final e executorService$delegate;

    /* compiled from: ThreadPool.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final ThreadPool createInstance() {
            return new ThreadPool(null);
        }
    }

    private ThreadPool() {
        this.executorService$delegate = f.a(ThreadPool$executorService$2.INSTANCE);
    }

    public /* synthetic */ ThreadPool(g gVar) {
        this();
    }

    public final void execute(Runnable runnable) {
        l.f(runnable, "runnable");
        getExecutorService().execute(runnable);
    }

    public final ExecutorService getExecutorService() {
        Object value = this.executorService$delegate.getValue();
        l.e(value, "<get-executorService>(...)");
        return (ExecutorService) value;
    }
}
