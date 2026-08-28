package e3;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* compiled from: LottieTask.java */
/* loaded from: classes.dex */
public class m<T> {

    /* renamed from: e, reason: collision with root package name */
    public static Executor f6133e = Executors.newCachedThreadPool();

    /* renamed from: a, reason: collision with root package name */
    public final Set<h<T>> f6134a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<h<Throwable>> f6135b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f6136c;

    /* renamed from: d, reason: collision with root package name */
    public volatile l<T> f6137d;

    /* compiled from: LottieTask.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (m.this.f6137d == null) {
                return;
            }
            l lVar = m.this.f6137d;
            if (lVar.b() != null) {
                m.this.i(lVar.b());
            } else {
                m.this.g(lVar.a());
            }
        }
    }

    /* compiled from: LottieTask.java */
    /* loaded from: classes.dex */
    public class b extends FutureTask<l<T>> {
        public b(Callable<l<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            if (isCancelled()) {
                return;
            }
            try {
                m.this.l(get());
            } catch (InterruptedException | ExecutionException e10) {
                m.this.l(new l(e10));
            }
        }
    }

    public m(Callable<l<T>> callable) {
        this(callable, false);
    }

    public synchronized m<T> e(h<Throwable> hVar) {
        if (this.f6137d != null && this.f6137d.a() != null) {
            hVar.a(this.f6137d.a());
        }
        this.f6135b.add(hVar);
        return this;
    }

    public synchronized m<T> f(h<T> hVar) {
        if (this.f6137d != null && this.f6137d.b() != null) {
            hVar.a(this.f6137d.b());
        }
        this.f6134a.add(hVar);
        return this;
    }

    public final synchronized void g(Throwable th) {
        ArrayList arrayList = new ArrayList(this.f6135b);
        if (arrayList.isEmpty()) {
            q3.d.d("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((h) it2.next()).a(th);
        }
    }

    public final void h() {
        this.f6136c.post(new a());
    }

    public final synchronized void i(T t10) {
        Iterator it2 = new ArrayList(this.f6134a).iterator();
        while (it2.hasNext()) {
            ((h) it2.next()).a(t10);
        }
    }

    public synchronized m<T> j(h<Throwable> hVar) {
        this.f6135b.remove(hVar);
        return this;
    }

    public synchronized m<T> k(h<T> hVar) {
        this.f6134a.remove(hVar);
        return this;
    }

    public final void l(l<T> lVar) {
        if (this.f6137d == null) {
            this.f6137d = lVar;
            h();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public m(Callable<l<T>> callable, boolean z10) {
        this.f6134a = new LinkedHashSet(1);
        this.f6135b = new LinkedHashSet(1);
        this.f6136c = new Handler(Looper.getMainLooper());
        this.f6137d = null;
        if (z10) {
            try {
                l(callable.call());
                return;
            } catch (Throwable th) {
                l(new l<>(th));
                return;
            }
        }
        f6133e.execute(new b(callable));
    }
}
