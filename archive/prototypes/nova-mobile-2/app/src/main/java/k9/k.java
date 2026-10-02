package k9;

import java.util.concurrent.Executor;

/* compiled from: SafeLoggingExecutor.java */
/* loaded from: classes.dex */
public class k implements Executor {

    /* renamed from: f, reason: collision with root package name */
    public final Executor f10105f;

    /* compiled from: SafeLoggingExecutor.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final Runnable f10106f;

        public a(Runnable runnable) {
            this.f10106f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f10106f.run();
            } catch (Exception e10) {
                n9.a.c("Executor", "Background execution failure.", e10);
            }
        }
    }

    public k(Executor executor) {
        this.f10105f = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f10105f.execute(new a(runnable));
    }
}
