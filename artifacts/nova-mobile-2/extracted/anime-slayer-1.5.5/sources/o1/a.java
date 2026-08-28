package o1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: AutoCloser.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    public final long f11466e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f11467f;

    /* renamed from: i, reason: collision with root package name */
    public r1.g f11470i;

    /* renamed from: a, reason: collision with root package name */
    public r1.h f11462a = null;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f11463b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public Runnable f11464c = null;

    /* renamed from: d, reason: collision with root package name */
    public final Object f11465d = new Object();

    /* renamed from: g, reason: collision with root package name */
    public int f11468g = 0;

    /* renamed from: h, reason: collision with root package name */
    public long f11469h = SystemClock.uptimeMillis();

    /* renamed from: j, reason: collision with root package name */
    public boolean f11471j = false;

    /* renamed from: k, reason: collision with root package name */
    public final Runnable f11472k = new RunnableC0285a();

    /* renamed from: l, reason: collision with root package name */
    public final Runnable f11473l = new b();

    /* compiled from: AutoCloser.java */
    /* renamed from: o1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0285a implements Runnable {
        public RunnableC0285a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.f11467f.execute(aVar.f11473l);
        }
    }

    /* compiled from: AutoCloser.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (a.this.f11465d) {
                long uptimeMillis = SystemClock.uptimeMillis();
                a aVar = a.this;
                if (uptimeMillis - aVar.f11469h < aVar.f11466e) {
                    return;
                }
                if (aVar.f11468g != 0) {
                    return;
                }
                Runnable runnable = aVar.f11464c;
                if (runnable != null) {
                    runnable.run();
                    r1.g gVar = a.this.f11470i;
                    if (gVar != null && gVar.isOpen()) {
                        try {
                            a.this.f11470i.close();
                        } catch (IOException e10) {
                            q1.e.a(e10);
                        }
                        a.this.f11470i = null;
                    }
                    return;
                }
                throw new IllegalStateException("mOnAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
            }
        }
    }

    public a(long j10, TimeUnit timeUnit, Executor executor) {
        this.f11466e = timeUnit.toMillis(j10);
        this.f11467f = executor;
    }

    public void a() throws IOException {
        synchronized (this.f11465d) {
            this.f11471j = true;
            r1.g gVar = this.f11470i;
            if (gVar != null) {
                gVar.close();
            }
            this.f11470i = null;
        }
    }

    public void b() {
        synchronized (this.f11465d) {
            int i10 = this.f11468g;
            if (i10 > 0) {
                int i11 = i10 - 1;
                this.f11468g = i11;
                if (i11 == 0) {
                    if (this.f11470i == null) {
                        return;
                    } else {
                        this.f11463b.postDelayed(this.f11472k, this.f11466e);
                    }
                }
                return;
            }
            throw new IllegalStateException("ref count is 0 or lower but we're supposed to decrement");
        }
    }

    public <V> V c(n.a<r1.g, V> aVar) {
        try {
            return aVar.apply(e());
        } finally {
            b();
        }
    }

    public r1.g d() {
        r1.g gVar;
        synchronized (this.f11465d) {
            gVar = this.f11470i;
        }
        return gVar;
    }

    public r1.g e() {
        synchronized (this.f11465d) {
            this.f11463b.removeCallbacks(this.f11472k);
            this.f11468g++;
            if (!this.f11471j) {
                r1.g gVar = this.f11470i;
                if (gVar != null && gVar.isOpen()) {
                    return this.f11470i;
                }
                r1.h hVar = this.f11462a;
                if (hVar != null) {
                    r1.g v02 = hVar.v0();
                    this.f11470i = v02;
                    return v02;
                }
                throw new IllegalStateException("AutoCloser has not been initialized. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
            }
            throw new IllegalStateException("Attempting to open already closed database.");
        }
    }

    public void f(r1.h hVar) {
        if (this.f11462a != null) {
            return;
        }
        this.f11462a = hVar;
    }

    public boolean g() {
        return !this.f11471j;
    }

    public void h(Runnable runnable) {
        this.f11464c = runnable;
    }
}
