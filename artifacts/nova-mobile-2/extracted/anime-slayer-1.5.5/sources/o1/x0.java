package o1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: TransactionExecutor.java */
/* loaded from: classes.dex */
public class x0 implements Executor {

    /* renamed from: f, reason: collision with root package name */
    public final Executor f11639f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayDeque<Runnable> f11640g = new ArrayDeque<>();

    /* renamed from: h, reason: collision with root package name */
    public Runnable f11641h;

    /* compiled from: TransactionExecutor.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Runnable f11642f;

        public a(Runnable runnable) {
            this.f11642f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f11642f.run();
            } finally {
                x0.this.a();
            }
        }
    }

    public x0(Executor executor) {
        this.f11639f = executor;
    }

    public synchronized void a() {
        Runnable poll = this.f11640g.poll();
        this.f11641h = poll;
        if (poll != null) {
            this.f11639f.execute(poll);
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f11640g.offer(new a(runnable));
        if (this.f11641h == null) {
            a();
        }
    }
}
