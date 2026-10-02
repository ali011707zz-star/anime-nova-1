package k1;

import androidx.recyclerview.widget.j;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: NullPaddedListDiffHelper.kt */
/* loaded from: classes.dex */
public final class d0 {

    /* compiled from: NullPaddedListDiffHelper.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c0 f9364a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c0 f9365b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ j.f f9366c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f9367d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f9368e;

        public a(c0<T> c0Var, c0 c0Var2, j.f fVar, int i10, int i11) {
            this.f9364a = c0Var;
            this.f9365b = c0Var2;
            this.f9366c = fVar;
            this.f9367d = i10;
            this.f9368e = i11;
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean a(int i10, int i11) {
            Object e10 = this.f9364a.e(i10);
            Object e11 = this.f9365b.e(i11);
            if (e10 == e11) {
                return true;
            }
            return this.f9366c.a(e10, e11);
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean b(int i10, int i11) {
            Object e10 = this.f9364a.e(i10);
            Object e11 = this.f9365b.e(i11);
            if (e10 == e11) {
                return true;
            }
            return this.f9366c.b(e10, e11);
        }

        @Override // androidx.recyclerview.widget.j.b
        public Object c(int i10, int i11) {
            Object e10 = this.f9364a.e(i10);
            Object e11 = this.f9365b.e(i11);
            if (e10 == e11) {
                return Boolean.TRUE;
            }
            return this.f9366c.c(e10, e11);
        }

        @Override // androidx.recyclerview.widget.j.b
        public int d() {
            return this.f9368e;
        }

        @Override // androidx.recyclerview.widget.j.b
        public int e() {
            return this.f9367d;
        }
    }

    public static final <T> b0 a(c0<T> c0Var, c0<T> c0Var2, j.f<T> fVar) {
        jc.l.f(c0Var, "$this$computeDiff");
        jc.l.f(c0Var2, "newList");
        jc.l.f(fVar, "diffCallback");
        a aVar = new a(c0Var, c0Var2, fVar, c0Var.b(), c0Var2.b());
        boolean z10 = true;
        j.e c10 = androidx.recyclerview.widget.j.c(aVar, true);
        jc.l.e(c10, "DiffUtil.calculateDiff(\n…    },\n        true\n    )");
        Iterable i10 = nc.g.i(0, c0Var.b());
        if (!(i10 instanceof Collection) || !((Collection) i10).isEmpty()) {
            Iterator<T> it2 = i10.iterator();
            while (it2.hasNext()) {
                if (c10.b(((wb.z) it2).a()) != -1) {
                    break;
                }
            }
        }
        z10 = false;
        return new b0(c10, z10);
    }

    public static final <T> void b(c0<T> c0Var, androidx.recyclerview.widget.p pVar, c0<T> c0Var2, b0 b0Var) {
        jc.l.f(c0Var, "$this$dispatchDiff");
        jc.l.f(pVar, "callback");
        jc.l.f(c0Var2, "newList");
        jc.l.f(b0Var, "diffResult");
        if (b0Var.b()) {
            e0.f9378a.a(c0Var, c0Var2, pVar, b0Var);
        } else {
            l.f9657a.b(pVar, c0Var, c0Var2);
        }
    }

    public static final int c(c0<?> c0Var, b0 b0Var, c0<?> c0Var2, int i10) {
        int b10;
        jc.l.f(c0Var, "$this$transformAnchorIndex");
        jc.l.f(b0Var, "diffResult");
        jc.l.f(c0Var2, "newList");
        if (!b0Var.b()) {
            return nc.g.f(i10, nc.g.i(0, c0Var2.a()));
        }
        int c10 = i10 - c0Var.c();
        int b11 = c0Var.b();
        if (c10 >= 0 && b11 > c10) {
            for (int i11 = 0; i11 <= 29; i11++) {
                int i12 = ((i11 / 2) * (i11 % 2 == 1 ? -1 : 1)) + c10;
                if (i12 >= 0 && i12 < c0Var.b() && (b10 = b0Var.a().b(i12)) != -1) {
                    return b10 + c0Var2.c();
                }
            }
        }
        return nc.g.f(i10, nc.g.i(0, c0Var2.a()));
    }
}
