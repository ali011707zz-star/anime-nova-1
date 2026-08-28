package l;

import java.util.concurrent.Executor;

/* compiled from: ArchTaskExecutor.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: c, reason: collision with root package name */
    public static volatile a f10178c;

    /* renamed from: d, reason: collision with root package name */
    public static final Executor f10179d = new ExecutorC0218a();

    /* renamed from: e, reason: collision with root package name */
    public static final Executor f10180e = new b();

    /* renamed from: a, reason: collision with root package name */
    public c f10181a;

    /* renamed from: b, reason: collision with root package name */
    public c f10182b;

    /* compiled from: ArchTaskExecutor.java */
    /* renamed from: l.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class ExecutorC0218a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.f().d(runnable);
        }
    }

    /* compiled from: ArchTaskExecutor.java */
    /* loaded from: classes.dex */
    public static class b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.f().a(runnable);
        }
    }

    public a() {
        l.b bVar = new l.b();
        this.f10182b = bVar;
        this.f10181a = bVar;
    }

    public static Executor e() {
        return f10180e;
    }

    public static a f() {
        if (f10178c != null) {
            return f10178c;
        }
        synchronized (a.class) {
            if (f10178c == null) {
                f10178c = new a();
            }
        }
        return f10178c;
    }

    @Override // l.c
    public void a(Runnable runnable) {
        this.f10181a.a(runnable);
    }

    @Override // l.c
    public boolean c() {
        return this.f10181a.c();
    }

    @Override // l.c
    public void d(Runnable runnable) {
        this.f10181a.d(runnable);
    }
}
