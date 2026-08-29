package androidx.lifecycle;

import androidx.lifecycle.k;
import m.b;

/* loaded from: classes.dex */
public abstract class LiveData<T> {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f2401k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f2402a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public b<z<? super T>, LiveData<T>.c> f2403b = new b<>();

    /* renamed from: c, reason: collision with root package name */
    public int f2404c = 0;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2405d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f2406e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f2407f;

    /* renamed from: g, reason: collision with root package name */
    public int f2408g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2409h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2410i;

    /* renamed from: j, reason: collision with root package name */
    public final Runnable f2411j;

    /* loaded from: classes.dex */
    public class LifecycleBoundObserver extends LiveData<T>.c implements n {

        /* renamed from: j, reason: collision with root package name */
        public final q f2412j;

        public LifecycleBoundObserver(q qVar, z<? super T> zVar) {
            super(zVar);
            this.f2412j = qVar;
        }

        @Override // androidx.lifecycle.n
        public void e(q qVar, k.b bVar) {
            k.c b10 = this.f2412j.getLifecycle().b();
            if (b10 == k.c.DESTROYED) {
                LiveData.this.n(this.f2416f);
                return;
            }
            k.c cVar = null;
            while (cVar != b10) {
                a(k());
                cVar = b10;
                b10 = this.f2412j.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.c
        public void f() {
            this.f2412j.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.LiveData.c
        public boolean j(q qVar) {
            return this.f2412j == qVar;
        }

        @Override // androidx.lifecycle.LiveData.c
        public boolean k() {
            return this.f2412j.getLifecycle().b().a(k.c.STARTED);
        }
    }

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2402a) {
                obj = LiveData.this.f2407f;
                LiveData.this.f2407f = LiveData.f2401k;
            }
            LiveData.this.o(obj);
        }
    }

    /* loaded from: classes.dex */
    public class b extends LiveData<T>.c {
        public b(z<? super T> zVar) {
            super(zVar);
        }

        @Override // androidx.lifecycle.LiveData.c
        public boolean k() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public abstract class c {

        /* renamed from: f, reason: collision with root package name */
        public final z<? super T> f2416f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f2417g;

        /* renamed from: h, reason: collision with root package name */
        public int f2418h = -1;

        public c(z<? super T> zVar) {
            this.f2416f = zVar;
        }

        public void a(boolean z10) {
            if (z10 == this.f2417g) {
                return;
            }
            this.f2417g = z10;
            LiveData.this.c(z10 ? 1 : -1);
            if (this.f2417g) {
                LiveData.this.e(this);
            }
        }

        public void f() {
        }

        public boolean j(q qVar) {
            return false;
        }

        public abstract boolean k();
    }

    public LiveData() {
        Object obj = f2401k;
        this.f2407f = obj;
        this.f2411j = new a();
        this.f2406e = obj;
        this.f2408g = -1;
    }

    public static void b(String str) {
        if (l.a.f().c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public void c(int i10) {
        int i11 = this.f2404c;
        this.f2404c = i10 + i11;
        if (this.f2405d) {
            return;
        }
        this.f2405d = true;
        while (true) {
            try {
                int i12 = this.f2404c;
                if (i11 == i12) {
                    return;
                }
                boolean z10 = i11 == 0 && i12 > 0;
                boolean z11 = i11 > 0 && i12 == 0;
                if (z10) {
                    k();
                } else if (z11) {
                    l();
                }
                i11 = i12;
            } finally {
                this.f2405d = false;
            }
        }
    }

    public final void d(LiveData<T>.c cVar) {
        if (cVar.f2417g) {
            if (!cVar.k()) {
                cVar.a(false);
                return;
            }
            int i10 = cVar.f2418h;
            int i11 = this.f2408g;
            if (i10 >= i11) {
                return;
            }
            cVar.f2418h = i11;
            cVar.f2416f.B((Object) this.f2406e);
        }
    }

    public void e(LiveData<T>.c cVar) {
        if (this.f2409h) {
            this.f2410i = true;
            return;
        }
        this.f2409h = true;
        do {
            this.f2410i = false;
            if (cVar != null) {
                d(cVar);
                cVar = null;
            } else {
                b<z<? super T>, LiveData<T>.c>.d d10 = this.f2403b.d();
                while (d10.hasNext()) {
                    d((c) d10.next().getValue());
                    if (this.f2410i) {
                        break;
                    }
                }
            }
        } while (this.f2410i);
        this.f2409h = false;
    }

    public T f() {
        T t10 = (T) this.f2406e;
        if (t10 != f2401k) {
            return t10;
        }
        return null;
    }

    public int g() {
        return this.f2408g;
    }

    public boolean h() {
        return this.f2404c > 0;
    }

    public void i(q qVar, z<? super T> zVar) {
        b("observe");
        if (qVar.getLifecycle().b() == k.c.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(qVar, zVar);
        LiveData<T>.c g10 = this.f2403b.g(zVar, lifecycleBoundObserver);
        if (g10 != null && !g10.j(qVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (g10 != null) {
            return;
        }
        qVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void j(z<? super T> zVar) {
        b("observeForever");
        b bVar = new b(zVar);
        LiveData<T>.c g10 = this.f2403b.g(zVar, bVar);
        if (g10 instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (g10 != null) {
            return;
        }
        bVar.a(true);
    }

    public void k() {
    }

    public void l() {
    }

    public void m(T t10) {
        boolean z10;
        synchronized (this.f2402a) {
            z10 = this.f2407f == f2401k;
            this.f2407f = t10;
        }
        if (z10) {
            l.a.f().d(this.f2411j);
        }
    }

    public void n(z<? super T> zVar) {
        b("removeObserver");
        LiveData<T>.c h10 = this.f2403b.h(zVar);
        if (h10 == null) {
            return;
        }
        h10.f();
        h10.a(false);
    }

    public void o(T t10) {
        b("setValue");
        this.f2408g++;
        this.f2406e = t10;
        e(null);
    }
}
