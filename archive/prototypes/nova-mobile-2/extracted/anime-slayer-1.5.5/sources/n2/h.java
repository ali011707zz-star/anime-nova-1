package n2;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: SerialExecutor.java */
/* loaded from: classes.dex */
public class h implements Executor {

    /* renamed from: g, reason: collision with root package name */
    public final Executor f11208g;

    /* renamed from: i, reason: collision with root package name */
    public volatile Runnable f11210i;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayDeque<a> f11207f = new ArrayDeque<>();

    /* renamed from: h, reason: collision with root package name */
    public final Object f11209h = new Object();

    /* compiled from: SerialExecutor.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final h f11211f;

        /* renamed from: g, reason: collision with root package name */
        public final Runnable f11212g;

        public a(h hVar, Runnable runnable) {
            this.f11211f = hVar;
            this.f11212g = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f11212g.run();
            } finally {
                this.f11211f.b();
            }
        }
    }

    public h(Executor executor) {
        this.f11208g = executor;
    }

    public boolean a() {
        boolean z10;
        synchronized (this.f11209h) {
            z10 = !this.f11207f.isEmpty();
        }
        return z10;
    }

    public void b() {
        synchronized (this.f11209h) {
            a poll = this.f11207f.poll();
            this.f11210i = poll;
            if (poll != null) {
                this.f11208g.execute(this.f11210i);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f11209h) {
            this.f11207f.add(new a(this, runnable));
            if (this.f11210i == null) {
                b();
            }
        }
    }
}
