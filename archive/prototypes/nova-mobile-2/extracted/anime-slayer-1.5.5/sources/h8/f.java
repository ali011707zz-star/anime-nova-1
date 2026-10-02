package h8;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.GlideException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: RequestFutureTarget.java */
/* loaded from: classes.dex */
public class f<R> implements c<R>, g<R> {

    /* renamed from: p, reason: collision with root package name */
    public static final a f7414p = new a();

    /* renamed from: f, reason: collision with root package name */
    public final int f7415f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7416g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7417h;

    /* renamed from: i, reason: collision with root package name */
    public final a f7418i;

    /* renamed from: j, reason: collision with root package name */
    public R f7419j;

    /* renamed from: k, reason: collision with root package name */
    public d f7420k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7421l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7422m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f7423n;

    /* renamed from: o, reason: collision with root package name */
    public GlideException f7424o;

    /* compiled from: RequestFutureTarget.java */
    /* loaded from: classes.dex */
    public static class a {
        public void a(Object obj) {
            obj.notifyAll();
        }

        public void b(Object obj, long j10) throws InterruptedException {
            obj.wait(j10);
        }
    }

    public f(int i10, int i11) {
        this(i10, i11, true, f7414p);
    }

    @Override // h8.g
    public synchronized boolean a(GlideException glideException, Object obj, i8.i<R> iVar, boolean z10) {
        this.f7423n = true;
        this.f7424o = glideException;
        this.f7418i.a(this);
        return false;
    }

    @Override // i8.i
    public synchronized void b(d dVar) {
        this.f7420k = dVar;
    }

    @Override // i8.i
    public synchronized void c(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f7421l = true;
            this.f7418i.a(this);
            d dVar = null;
            if (z10) {
                d dVar2 = this.f7420k;
                this.f7420k = null;
                dVar = dVar2;
            }
            if (dVar != null) {
                dVar.clear();
            }
            return true;
        }
    }

    @Override // h8.g
    public synchronized boolean d(R r10, Object obj, i8.i<R> iVar, p7.a aVar, boolean z10) {
        this.f7422m = true;
        this.f7419j = r10;
        this.f7418i.a(this);
        return false;
    }

    @Override // i8.i
    public void e(i8.h hVar) {
        hVar.f(this.f7415f, this.f7416g);
    }

    @Override // i8.i
    public void f(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return l(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // i8.i
    public void h(i8.h hVar) {
    }

    @Override // i8.i
    public synchronized void i(R r10, j8.d<? super R> dVar) {
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f7421l;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z10;
        if (!this.f7421l && !this.f7422m) {
            z10 = this.f7423n;
        }
        return z10;
    }

    @Override // i8.i
    public synchronized d j() {
        return this.f7420k;
    }

    @Override // i8.i
    public void k(Drawable drawable) {
    }

    public final synchronized R l(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f7417h && !isDone()) {
            l8.k.a();
        }
        if (!this.f7421l) {
            if (!this.f7423n) {
                if (this.f7422m) {
                    return this.f7419j;
                }
                if (l10 == null) {
                    this.f7418i.b(this, 0L);
                } else if (l10.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l10.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        this.f7418i.b(this, longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (!Thread.interrupted()) {
                    if (!this.f7423n) {
                        if (!this.f7421l) {
                            if (this.f7422m) {
                                return this.f7419j;
                            }
                            throw new TimeoutException();
                        }
                        throw new CancellationException();
                    }
                    throw new ExecutionException(this.f7424o);
                }
                throw new InterruptedException();
            }
            throw new ExecutionException(this.f7424o);
        }
        throw new CancellationException();
    }

    @Override // e8.i
    public void onDestroy() {
    }

    @Override // e8.i
    public void onStart() {
    }

    @Override // e8.i
    public void onStop() {
    }

    public f(int i10, int i11, boolean z10, a aVar) {
        this.f7415f = i10;
        this.f7416g = i11;
        this.f7417h = z10;
        this.f7418i = aVar;
    }

    @Override // java.util.concurrent.Future
    public R get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return l(Long.valueOf(timeUnit.toMillis(j10)));
    }
}
