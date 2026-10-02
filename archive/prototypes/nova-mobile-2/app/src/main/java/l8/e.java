package l8;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: Executors.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Executor f10520a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final Executor f10521b = new b();

    /* compiled from: Executors.java */
    /* loaded from: classes.dex */
    public class a implements Executor {

        /* renamed from: f, reason: collision with root package name */
        public final Handler f10522f = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f10522f.post(runnable);
        }
    }

    /* compiled from: Executors.java */
    /* loaded from: classes.dex */
    public class b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor a() {
        return f10521b;
    }

    public static Executor b() {
        return f10520a;
    }
}
