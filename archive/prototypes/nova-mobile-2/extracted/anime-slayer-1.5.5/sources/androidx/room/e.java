package androidx.room;

import android.annotation.SuppressLint;
import androidx.lifecycle.LiveData;
import androidx.room.c;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import o1.p0;
import o1.u;

/* compiled from: RoomTrackingLiveData.java */
/* loaded from: classes.dex */
public class e<T> extends LiveData<T> {

    /* renamed from: l, reason: collision with root package name */
    public final p0 f3159l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3160m;

    /* renamed from: n, reason: collision with root package name */
    public final Callable<T> f3161n;

    /* renamed from: o, reason: collision with root package name */
    public final u f3162o;

    /* renamed from: p, reason: collision with root package name */
    public final c.AbstractC0054c f3163p;

    /* renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f3164q = new AtomicBoolean(true);

    /* renamed from: r, reason: collision with root package name */
    public final AtomicBoolean f3165r = new AtomicBoolean(false);

    /* renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f3166s = new AtomicBoolean(false);

    /* renamed from: t, reason: collision with root package name */
    public final Runnable f3167t = new a();

    /* renamed from: u, reason: collision with root package name */
    public final Runnable f3168u = new b();

    /* compiled from: RoomTrackingLiveData.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            if (e.this.f3166s.compareAndSet(false, true)) {
                e.this.f3159l.m().b(e.this.f3163p);
            }
            do {
                if (e.this.f3165r.compareAndSet(false, true)) {
                    T t10 = null;
                    z10 = false;
                    while (e.this.f3164q.compareAndSet(true, false)) {
                        try {
                            try {
                                t10 = e.this.f3161n.call();
                                z10 = true;
                            } catch (Exception e10) {
                                throw new RuntimeException("Exception while computing database live data.", e10);
                            }
                        } finally {
                            e.this.f3165r.set(false);
                        }
                    }
                    if (z10) {
                        e.this.m(t10);
                    }
                } else {
                    z10 = false;
                }
                if (!z10) {
                    return;
                }
            } while (e.this.f3164q.get());
        }
    }

    /* compiled from: RoomTrackingLiveData.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean h10 = e.this.h();
            if (e.this.f3164q.compareAndSet(false, true) && h10) {
                e.this.q().execute(e.this.f3167t);
            }
        }
    }

    /* compiled from: RoomTrackingLiveData.java */
    /* loaded from: classes.dex */
    public class c extends c.AbstractC0054c {
        public c(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.c.AbstractC0054c
        public void b(Set<String> set) {
            l.a.f().b(e.this.f3168u);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public e(p0 p0Var, u uVar, boolean z10, Callable<T> callable, String[] strArr) {
        this.f3159l = p0Var;
        this.f3160m = z10;
        this.f3161n = callable;
        this.f3162o = uVar;
        this.f3163p = new c(strArr);
    }

    @Override // androidx.lifecycle.LiveData
    public void k() {
        super.k();
        this.f3162o.b(this);
        q().execute(this.f3167t);
    }

    @Override // androidx.lifecycle.LiveData
    public void l() {
        super.l();
        this.f3162o.c(this);
    }

    public Executor q() {
        if (this.f3160m) {
            return this.f3159l.r();
        }
        return this.f3159l.o();
    }
}
