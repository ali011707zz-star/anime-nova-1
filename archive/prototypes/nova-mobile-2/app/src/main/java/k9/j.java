package k9;

import java.util.concurrent.Executor;

/* compiled from: ExecutionModule_ExecutorFactory.java */
/* loaded from: classes.dex */
public final class j implements m9.b<Executor> {

    /* compiled from: ExecutionModule_ExecutorFactory.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final j f10104a = new j();
    }

    public static j a() {
        return a.f10104a;
    }

    public static Executor b() {
        return (Executor) m9.d.c(i.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return b();
    }
}
