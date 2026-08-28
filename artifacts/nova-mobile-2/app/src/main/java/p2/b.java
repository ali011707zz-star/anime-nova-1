package p2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import n2.h;

/* compiled from: WorkManagerTaskExecutor.java */
/* loaded from: classes.dex */
public class b implements p2.a {

    /* renamed from: a, reason: collision with root package name */
    public final h f11999a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f12000b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final Executor f12001c = new a();

    /* compiled from: WorkManagerTaskExecutor.java */
    /* loaded from: classes.dex */
    public class a implements Executor {
        public a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            b.this.d(runnable);
        }
    }

    public b(Executor executor) {
        this.f11999a = new h(executor);
    }

    @Override // p2.a
    public Executor a() {
        return this.f12001c;
    }

    @Override // p2.a
    public void b(Runnable runnable) {
        this.f11999a.execute(runnable);
    }

    @Override // p2.a
    public h c() {
        return this.f11999a;
    }

    public void d(Runnable runnable) {
        this.f12000b.post(runnable);
    }
}
