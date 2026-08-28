package k1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k1.f0;
import k1.h1;
import k1.u;

/* compiled from: PagePresenter.kt */
/* loaded from: classes.dex */
public final class m0<T> implements c0<T> {

    /* renamed from: a, reason: collision with root package name */
    public final List<f1<T>> f9689a;

    /* renamed from: b, reason: collision with root package name */
    public int f9690b;

    /* renamed from: c, reason: collision with root package name */
    public int f9691c;

    /* renamed from: d, reason: collision with root package name */
    public int f9692d;

    /* renamed from: f, reason: collision with root package name */
    public static final a f9688f = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public static final m0<Object> f9687e = new m0<>(f0.b.f9398g.d());

    /* compiled from: PagePresenter.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public final <T> m0<T> a() {
            m0<T> m0Var = m0.f9687e;
            if (m0Var != null) {
                return m0Var;
            }
            throw new NullPointerException("null cannot be cast to non-null type androidx.paging.PagePresenter<T>");
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: PagePresenter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void a(int i10, int i11);

        void b(int i10, int i11);

        void c(int i10, int i11);

        void d(y yVar, boolean z10, u uVar);
    }

    /* compiled from: PagePresenter.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.q<y, Boolean, u, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ b f9693f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b bVar) {
            super(3);
            this.f9693f = bVar;
        }

        public final void a(y yVar, boolean z10, u uVar) {
            jc.l.f(yVar, "type");
            jc.l.f(uVar, "state");
            this.f9693f.d(yVar, z10, uVar);
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ vb.p i(y yVar, Boolean bool, u uVar) {
            a(yVar, bool.booleanValue(), uVar);
            return vb.p.f15031a;
        }
    }

    public m0(f0.b<T> bVar) {
        jc.l.f(bVar, "insertEvent");
        this.f9689a = wb.t.R(bVar.f());
        this.f9690b = k(bVar.f());
        this.f9691c = bVar.h();
        this.f9692d = bVar.g();
    }

    @Override // k1.c0
    public int a() {
        return c() + b() + d();
    }

    @Override // k1.c0
    public int b() {
        return this.f9690b;
    }

    @Override // k1.c0
    public int c() {
        return this.f9691c;
    }

    @Override // k1.c0
    public int d() {
        return this.f9692d;
    }

    @Override // k1.c0
    public T e(int i10) {
        int size = this.f9689a.size();
        int i11 = 0;
        while (i11 < size) {
            int size2 = this.f9689a.get(i11).b().size();
            if (size2 > i10) {
                break;
            }
            i10 -= size2;
            i11++;
        }
        return this.f9689a.get(i11).b().get(i10);
    }

    public final h1.a g(int i10) {
        int i11 = 0;
        int c10 = i10 - c();
        while (c10 >= this.f9689a.get(i11).b().size() && i11 < wb.l.k(this.f9689a)) {
            c10 -= this.f9689a.get(i11).b().size();
            i11++;
        }
        return this.f9689a.get(i11).d(c10, i10 - c(), ((a() - i10) - d()) - 1, m(), n());
    }

    public final void h(int i10) {
        if (i10 < 0 || i10 >= a()) {
            throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + a());
        }
    }

    public final void i(f0.a<T> aVar, b bVar) {
        int a10 = a();
        y a11 = aVar.a();
        y yVar = y.PREPEND;
        if (a11 == yVar) {
            int c10 = c();
            this.f9690b = b() - j(new nc.e(aVar.c(), aVar.b()));
            this.f9691c = aVar.e();
            int a12 = a() - a10;
            if (a12 > 0) {
                bVar.b(0, a12);
            } else if (a12 < 0) {
                bVar.a(0, -a12);
            }
            int max = Math.max(0, c10 + a12);
            int e10 = aVar.e() - max;
            if (e10 > 0) {
                bVar.c(max, e10);
            }
            bVar.d(yVar, false, u.c.f9818d.b());
            return;
        }
        int d10 = d();
        this.f9690b = b() - j(new nc.e(aVar.c(), aVar.b()));
        this.f9692d = aVar.e();
        int a13 = a() - a10;
        if (a13 > 0) {
            bVar.b(a10, a13);
        } else if (a13 < 0) {
            bVar.a(a10 + a13, -a13);
        }
        int e11 = aVar.e() - (d10 - (a13 < 0 ? Math.min(d10, -a13) : 0));
        if (e11 > 0) {
            bVar.c(a() - aVar.e(), e11);
        }
        bVar.d(y.APPEND, false, u.c.f9818d.b());
    }

    public final int j(nc.e eVar) {
        boolean z10;
        Iterator<f1<T>> it2 = this.f9689a.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            f1<T> next = it2.next();
            int[] c10 = next.c();
            int length = c10.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z10 = false;
                    break;
                }
                if (eVar.i(c10[i11])) {
                    z10 = true;
                    break;
                }
                i11++;
            }
            if (z10) {
                i10 += next.b().size();
                it2.remove();
            }
        }
        return i10;
    }

    public final int k(List<f1<T>> list) {
        Iterator<T> it2 = list.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            i10 += ((f1) it2.next()).b().size();
        }
        return i10;
    }

    public final T l(int i10) {
        h(i10);
        int c10 = i10 - c();
        if (c10 < 0 || c10 >= b()) {
            return null;
        }
        return e(c10);
    }

    public final int m() {
        Integer t10 = wb.i.t(((f1) wb.t.A(this.f9689a)).c());
        jc.l.c(t10);
        return t10.intValue();
    }

    public final int n() {
        Integer s10 = wb.i.s(((f1) wb.t.H(this.f9689a)).c());
        jc.l.c(s10);
        return s10.intValue();
    }

    public final h1.b o() {
        int b10 = b() / 2;
        return new h1.b(b10, b10, m(), n());
    }

    public final void p(f0.b<T> bVar, b bVar2) {
        int k10 = k(bVar.f());
        int a10 = a();
        int i10 = n0.f9696a[bVar.e().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                int min = Math.min(c(), k10);
                int c10 = c() - min;
                int i11 = k10 - min;
                this.f9689a.addAll(0, bVar.f());
                this.f9690b = b() + k10;
                this.f9691c = bVar.h();
                bVar2.c(c10, min);
                bVar2.b(0, i11);
                int a11 = (a() - a10) - i11;
                if (a11 > 0) {
                    bVar2.b(0, a11);
                } else if (a11 < 0) {
                    bVar2.a(0, -a11);
                }
            } else if (i10 == 3) {
                int min2 = Math.min(d(), k10);
                int c11 = c() + b();
                int i12 = k10 - min2;
                List<f1<T>> list = this.f9689a;
                list.addAll(list.size(), bVar.f());
                this.f9690b = b() + k10;
                this.f9692d = bVar.g();
                bVar2.c(c11, min2);
                bVar2.b(c11 + min2, i12);
                int a12 = (a() - a10) - i12;
                if (a12 > 0) {
                    bVar2.b(a() - a12, a12);
                } else if (a12 < 0) {
                    bVar2.a(a(), -a12);
                }
            }
            bVar.d().a(new c(bVar2));
            return;
        }
        throw new IllegalArgumentException();
    }

    public final void q(f0<T> f0Var, b bVar) {
        jc.l.f(f0Var, "pageEvent");
        jc.l.f(bVar, "callback");
        if (f0Var instanceof f0.b) {
            p((f0.b) f0Var, bVar);
            return;
        }
        if (f0Var instanceof f0.a) {
            i((f0.a) f0Var, bVar);
        } else if (f0Var instanceof f0.c) {
            f0.c cVar = (f0.c) f0Var;
            bVar.d(cVar.c(), cVar.a(), cVar.b());
        }
    }

    public String toString() {
        int b10 = b();
        ArrayList arrayList = new ArrayList(b10);
        for (int i10 = 0; i10 < b10; i10++) {
            arrayList.add(e(i10));
        }
        return "[(" + c() + " placeholders), " + wb.t.G(arrayList, null, null, null, 0, null, null, 63, null) + ", (" + d() + " placeholders)]";
    }
}
