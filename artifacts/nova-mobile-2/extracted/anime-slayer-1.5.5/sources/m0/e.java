package m0;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: ExecutorCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* compiled from: ExecutorCompat.java */
    /* loaded from: classes.dex */
    public static class a implements Executor {

        /* renamed from: f, reason: collision with root package name */
        public final Handler f10649f;

        public a(Handler handler) {
            this.f10649f = (Handler) p0.i.g(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f10649f.post((Runnable) p0.i.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f10649f + " is shutting down");
        }
    }

    public static Executor a(Handler handler) {
        return new a(handler);
    }
}
