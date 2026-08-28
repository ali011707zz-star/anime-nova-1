package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.util.ArrayDeque;
import java.util.Queue;
import rc.g1;
import rc.n2;

/* compiled from: DispatchQueue.kt */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public boolean f2484b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2485c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2483a = true;

    /* renamed from: d, reason: collision with root package name */
    public final Queue<Runnable> f2486d = new ArrayDeque();

    /* compiled from: DispatchQueue.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Runnable f2488g;

        public a(Runnable runnable) {
            this.f2488g = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.e(this.f2488g);
        }
    }

    public final boolean b() {
        return this.f2484b || !this.f2483a;
    }

    @SuppressLint({"WrongThread"})
    public final void c(ac.g gVar, Runnable runnable) {
        jc.l.f(gVar, "context");
        jc.l.f(runnable, "runnable");
        n2 K0 = g1.c().K0();
        if (!K0.J0(gVar) && !b()) {
            e(runnable);
        } else {
            K0.H0(gVar, new a(runnable));
        }
    }

    public final void d() {
        if (this.f2485c) {
            return;
        }
        try {
            this.f2485c = true;
            while ((!this.f2486d.isEmpty()) && b()) {
                Runnable poll = this.f2486d.poll();
                if (poll != null) {
                    poll.run();
                }
            }
        } finally {
            this.f2485c = false;
        }
    }

    public final void e(Runnable runnable) {
        if (this.f2486d.offer(runnable)) {
            d();
            return;
        }
        throw new IllegalStateException("cannot enqueue any more runnables".toString());
    }

    public final void f() {
        this.f2484b = true;
        d();
    }

    public final void g() {
        this.f2483a = true;
    }

    public final void h() {
        if (this.f2483a) {
            if (!this.f2484b) {
                this.f2483a = false;
                d();
                return;
            }
            throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
        }
    }
}
