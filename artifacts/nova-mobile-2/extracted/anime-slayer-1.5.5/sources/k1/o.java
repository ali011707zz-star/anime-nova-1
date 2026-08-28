package k1;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k1.f0;
import k1.u;

/* compiled from: CachedPageEventFlow.kt */
/* loaded from: classes.dex */
public final class o<T> {

    /* renamed from: a, reason: collision with root package name */
    public int f9697a;

    /* renamed from: b, reason: collision with root package name */
    public int f9698b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque<f1<T>> f9699c = new ArrayDeque<>();

    /* renamed from: d, reason: collision with root package name */
    public final a0 f9700d = new a0();

    public final void a(f0<T> f0Var) {
        jc.l.f(f0Var, "event");
        if (f0Var instanceof f0.b) {
            c((f0.b) f0Var);
        } else if (f0Var instanceof f0.a) {
            e((f0.a) f0Var);
        } else if (f0Var instanceof f0.c) {
            d((f0.c) f0Var);
        }
    }

    public final List<f0<T>> b() {
        w wVar;
        w wVar2;
        ArrayList arrayList = new ArrayList();
        if (!this.f9699c.isEmpty()) {
            arrayList.add(f0.b.f9398g.c(wb.t.P(this.f9699c), this.f9697a, this.f9698b, this.f9700d.h()));
        } else {
            a0 a0Var = this.f9700d;
            wVar = a0Var.f9252d;
            y yVar = y.REFRESH;
            u g10 = wVar.g();
            f0.c.a aVar = f0.c.f9404d;
            if (aVar.a(g10, false)) {
                arrayList.add(new f0.c(yVar, false, g10));
            }
            y yVar2 = y.PREPEND;
            u f10 = wVar.f();
            if (aVar.a(f10, false)) {
                arrayList.add(new f0.c(yVar2, false, f10));
            }
            y yVar3 = y.APPEND;
            u e10 = wVar.e();
            if (aVar.a(e10, false)) {
                arrayList.add(new f0.c(yVar3, false, e10));
            }
            wVar2 = a0Var.f9253e;
            if (wVar2 != null) {
                u g11 = wVar2.g();
                if (aVar.a(g11, true)) {
                    arrayList.add(new f0.c(yVar, true, g11));
                }
                u f11 = wVar2.f();
                if (aVar.a(f11, true)) {
                    arrayList.add(new f0.c(yVar2, true, f11));
                }
                u e11 = wVar2.e();
                if (aVar.a(e11, true)) {
                    arrayList.add(new f0.c(yVar3, true, e11));
                }
            }
        }
        return arrayList;
    }

    public final void c(f0.b<T> bVar) {
        this.f9700d.e(bVar.d());
        int i10 = n.f9695b[bVar.e().ordinal()];
        if (i10 == 1) {
            this.f9699c.clear();
            this.f9698b = bVar.g();
            this.f9697a = bVar.h();
            this.f9699c.addAll(bVar.f());
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return;
            }
            this.f9698b = bVar.g();
            this.f9699c.addAll(bVar.f());
            return;
        }
        this.f9697a = bVar.h();
        Iterator<Integer> it2 = nc.g.h(bVar.f().size() - 1, 0).iterator();
        while (it2.hasNext()) {
            this.f9699c.addFirst(bVar.f().get(((wb.z) it2).a()));
        }
    }

    public final void d(f0.c<T> cVar) {
        this.f9700d.g(cVar.c(), cVar.a(), cVar.b());
    }

    public final void e(f0.a<T> aVar) {
        int i10 = 0;
        this.f9700d.g(aVar.a(), false, u.c.f9818d.b());
        int i11 = n.f9694a[aVar.a().ordinal()];
        if (i11 == 1) {
            this.f9697a = aVar.e();
            int d10 = aVar.d();
            while (i10 < d10) {
                this.f9699c.removeFirst();
                i10++;
            }
            return;
        }
        if (i11 == 2) {
            this.f9698b = aVar.e();
            int d11 = aVar.d();
            while (i10 < d11) {
                this.f9699c.removeLast();
                i10++;
            }
            return;
        }
        throw new IllegalArgumentException("Page drop type must be prepend or append");
    }
}
