package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ViewInfoStore.java */
/* loaded from: classes.dex */
public class a0 {

    /* renamed from: a, reason: collision with root package name */
    public final s.g<RecyclerView.e0, a> f2865a = new s.g<>();

    /* renamed from: b, reason: collision with root package name */
    public final s.d<RecyclerView.e0> f2866b = new s.d<>();

    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: d, reason: collision with root package name */
        public static p0.f<a> f2867d = new p0.g(20);

        /* renamed from: a, reason: collision with root package name */
        public int f2868a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.m.c f2869b;

        /* renamed from: c, reason: collision with root package name */
        public RecyclerView.m.c f2870c;

        public static void a() {
            do {
            } while (f2867d.b() != null);
        }

        public static a b() {
            a b10 = f2867d.b();
            return b10 == null ? new a() : b10;
        }

        public static void c(a aVar) {
            aVar.f2868a = 0;
            aVar.f2869b = null;
            aVar.f2870c = null;
            f2867d.a(aVar);
        }
    }

    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(RecyclerView.e0 e0Var);

        void b(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);

        void c(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);

        void d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);
    }

    public void a(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVar = this.f2865a.get(e0Var);
        if (aVar == null) {
            aVar = a.b();
            this.f2865a.put(e0Var, aVar);
        }
        aVar.f2868a |= 2;
        aVar.f2869b = cVar;
    }

    public void b(RecyclerView.e0 e0Var) {
        a aVar = this.f2865a.get(e0Var);
        if (aVar == null) {
            aVar = a.b();
            this.f2865a.put(e0Var, aVar);
        }
        aVar.f2868a |= 1;
    }

    public void c(long j10, RecyclerView.e0 e0Var) {
        this.f2866b.j(j10, e0Var);
    }

    public void d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVar = this.f2865a.get(e0Var);
        if (aVar == null) {
            aVar = a.b();
            this.f2865a.put(e0Var, aVar);
        }
        aVar.f2870c = cVar;
        aVar.f2868a |= 8;
    }

    public void e(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVar = this.f2865a.get(e0Var);
        if (aVar == null) {
            aVar = a.b();
            this.f2865a.put(e0Var, aVar);
        }
        aVar.f2869b = cVar;
        aVar.f2868a |= 4;
    }

    public void f() {
        this.f2865a.clear();
        this.f2866b.b();
    }

    public RecyclerView.e0 g(long j10) {
        return this.f2866b.f(j10);
    }

    public boolean h(RecyclerView.e0 e0Var) {
        a aVar = this.f2865a.get(e0Var);
        return (aVar == null || (aVar.f2868a & 1) == 0) ? false : true;
    }

    public boolean i(RecyclerView.e0 e0Var) {
        a aVar = this.f2865a.get(e0Var);
        return (aVar == null || (aVar.f2868a & 4) == 0) ? false : true;
    }

    public void j() {
        a.a();
    }

    public void k(RecyclerView.e0 e0Var) {
        p(e0Var);
    }

    public final RecyclerView.m.c l(RecyclerView.e0 e0Var, int i10) {
        a m10;
        RecyclerView.m.c cVar;
        int f10 = this.f2865a.f(e0Var);
        if (f10 >= 0 && (m10 = this.f2865a.m(f10)) != null) {
            int i11 = m10.f2868a;
            if ((i11 & i10) != 0) {
                int i12 = (i10 ^ (-1)) & i11;
                m10.f2868a = i12;
                if (i10 == 4) {
                    cVar = m10.f2869b;
                } else if (i10 == 8) {
                    cVar = m10.f2870c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i12 & 12) == 0) {
                    this.f2865a.k(f10);
                    a.c(m10);
                }
                return cVar;
            }
        }
        return null;
    }

    public RecyclerView.m.c m(RecyclerView.e0 e0Var) {
        return l(e0Var, 8);
    }

    public RecyclerView.m.c n(RecyclerView.e0 e0Var) {
        return l(e0Var, 4);
    }

    public void o(b bVar) {
        for (int size = this.f2865a.size() - 1; size >= 0; size--) {
            RecyclerView.e0 i10 = this.f2865a.i(size);
            a k10 = this.f2865a.k(size);
            int i11 = k10.f2868a;
            if ((i11 & 3) == 3) {
                bVar.a(i10);
            } else if ((i11 & 1) != 0) {
                RecyclerView.m.c cVar = k10.f2869b;
                if (cVar == null) {
                    bVar.a(i10);
                } else {
                    bVar.c(i10, cVar, k10.f2870c);
                }
            } else if ((i11 & 14) == 14) {
                bVar.b(i10, k10.f2869b, k10.f2870c);
            } else if ((i11 & 12) == 12) {
                bVar.d(i10, k10.f2869b, k10.f2870c);
            } else if ((i11 & 4) != 0) {
                bVar.c(i10, k10.f2869b, null);
            } else if ((i11 & 8) != 0) {
                bVar.b(i10, k10.f2869b, k10.f2870c);
            }
            a.c(k10);
        }
    }

    public void p(RecyclerView.e0 e0Var) {
        a aVar = this.f2865a.get(e0Var);
        if (aVar == null) {
            return;
        }
        aVar.f2868a &= -2;
    }

    public void q(RecyclerView.e0 e0Var) {
        int m10 = this.f2866b.m() - 1;
        while (true) {
            if (m10 < 0) {
                break;
            }
            if (e0Var == this.f2866b.n(m10)) {
                this.f2866b.l(m10);
                break;
            }
            m10--;
        }
        a remove = this.f2865a.remove(e0Var);
        if (remove != null) {
            a.c(remove);
        }
    }
}
