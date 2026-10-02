package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.lifecycle.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LifecycleRegistry.java */
/* loaded from: classes.dex */
public class s extends k {

    /* renamed from: b, reason: collision with root package name */
    public m.a<p, a> f2525b;

    /* renamed from: c, reason: collision with root package name */
    public k.c f2526c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference<q> f2527d;

    /* renamed from: e, reason: collision with root package name */
    public int f2528e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2529f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2530g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList<k.c> f2531h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f2532i;

    /* compiled from: LifecycleRegistry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public k.c f2533a;

        /* renamed from: b, reason: collision with root package name */
        public n f2534b;

        public a(p pVar, k.c cVar) {
            this.f2534b = v.f(pVar);
            this.f2533a = cVar;
        }

        public void a(q qVar, k.b bVar) {
            k.c b10 = bVar.b();
            this.f2533a = s.k(this.f2533a, b10);
            this.f2534b.e(qVar, bVar);
            this.f2533a = b10;
        }
    }

    public s(q qVar) {
        this(qVar, true);
    }

    public static k.c k(k.c cVar, k.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    @Override // androidx.lifecycle.k
    public void a(p pVar) {
        q qVar;
        f("addObserver");
        k.c cVar = this.f2526c;
        k.c cVar2 = k.c.DESTROYED;
        if (cVar != cVar2) {
            cVar2 = k.c.INITIALIZED;
        }
        a aVar = new a(pVar, cVar2);
        if (this.f2525b.g(pVar, aVar) == null && (qVar = this.f2527d.get()) != null) {
            boolean z10 = this.f2528e != 0 || this.f2529f;
            k.c e10 = e(pVar);
            this.f2528e++;
            while (aVar.f2533a.compareTo(e10) < 0 && this.f2525b.contains(pVar)) {
                n(aVar.f2533a);
                k.b c10 = k.b.c(aVar.f2533a);
                if (c10 != null) {
                    aVar.a(qVar, c10);
                    m();
                    e10 = e(pVar);
                } else {
                    throw new IllegalStateException("no event up from " + aVar.f2533a);
                }
            }
            if (!z10) {
                p();
            }
            this.f2528e--;
        }
    }

    @Override // androidx.lifecycle.k
    public k.c b() {
        return this.f2526c;
    }

    @Override // androidx.lifecycle.k
    public void c(p pVar) {
        f("removeObserver");
        this.f2525b.h(pVar);
    }

    public final void d(q qVar) {
        Iterator<Map.Entry<p, a>> a10 = this.f2525b.a();
        while (a10.hasNext() && !this.f2530g) {
            Map.Entry<p, a> next = a10.next();
            a value = next.getValue();
            while (value.f2533a.compareTo(this.f2526c) > 0 && !this.f2530g && this.f2525b.contains(next.getKey())) {
                k.b a11 = k.b.a(value.f2533a);
                if (a11 != null) {
                    n(a11.b());
                    value.a(qVar, a11);
                    m();
                } else {
                    throw new IllegalStateException("no event down from " + value.f2533a);
                }
            }
        }
    }

    public final k.c e(p pVar) {
        Map.Entry<p, a> i10 = this.f2525b.i(pVar);
        k.c cVar = null;
        k.c cVar2 = i10 != null ? i10.getValue().f2533a : null;
        if (!this.f2531h.isEmpty()) {
            cVar = this.f2531h.get(r0.size() - 1);
        }
        return k(k(this.f2526c, cVar2), cVar);
    }

    @SuppressLint({"RestrictedApi"})
    public final void f(String str) {
        if (!this.f2532i || l.a.f().c()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    public final void g(q qVar) {
        m.b<p, a>.d d10 = this.f2525b.d();
        while (d10.hasNext() && !this.f2530g) {
            Map.Entry next = d10.next();
            a aVar = (a) next.getValue();
            while (aVar.f2533a.compareTo(this.f2526c) < 0 && !this.f2530g && this.f2525b.contains((p) next.getKey())) {
                n(aVar.f2533a);
                k.b c10 = k.b.c(aVar.f2533a);
                if (c10 != null) {
                    aVar.a(qVar, c10);
                    m();
                } else {
                    throw new IllegalStateException("no event up from " + aVar.f2533a);
                }
            }
        }
    }

    public void h(k.b bVar) {
        f("handleLifecycleEvent");
        l(bVar.b());
    }

    public final boolean i() {
        if (this.f2525b.size() == 0) {
            return true;
        }
        k.c cVar = this.f2525b.b().getValue().f2533a;
        k.c cVar2 = this.f2525b.e().getValue().f2533a;
        return cVar == cVar2 && this.f2526c == cVar2;
    }

    @Deprecated
    public void j(k.c cVar) {
        f("markState");
        o(cVar);
    }

    public final void l(k.c cVar) {
        if (this.f2526c == cVar) {
            return;
        }
        this.f2526c = cVar;
        if (!this.f2529f && this.f2528e == 0) {
            this.f2529f = true;
            p();
            this.f2529f = false;
            return;
        }
        this.f2530g = true;
    }

    public final void m() {
        this.f2531h.remove(r0.size() - 1);
    }

    public final void n(k.c cVar) {
        this.f2531h.add(cVar);
    }

    public void o(k.c cVar) {
        f("setCurrentState");
        l(cVar);
    }

    public final void p() {
        q qVar = this.f2527d.get();
        if (qVar != null) {
            while (!i()) {
                this.f2530g = false;
                if (this.f2526c.compareTo(this.f2525b.b().getValue().f2533a) < 0) {
                    d(qVar);
                }
                Map.Entry<p, a> e10 = this.f2525b.e();
                if (!this.f2530g && e10 != null && this.f2526c.compareTo(e10.getValue().f2533a) > 0) {
                    g(qVar);
                }
            }
            this.f2530g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    public s(q qVar, boolean z10) {
        this.f2525b = new m.a<>();
        this.f2528e = 0;
        this.f2529f = false;
        this.f2530g = false;
        this.f2531h = new ArrayList<>();
        this.f2527d = new WeakReference<>(qVar);
        this.f2526c = k.c.INITIALIZED;
        this.f2532i = z10;
    }
}
