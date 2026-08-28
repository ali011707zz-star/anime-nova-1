package rc;

import vb.j;

/* compiled from: DispatchedTask.kt */
/* loaded from: classes2.dex */
public final class e1 {
    public static final <T> void a(d1<? super T> d1Var, int i10) {
        if (u0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        ac.d<? super T> d10 = d1Var.d();
        boolean z10 = i10 == 4;
        if (!z10 && (d10 instanceof wc.g) && b(i10) == b(d1Var.f13240h)) {
            l0 l0Var = ((wc.g) d10).f15489i;
            ac.g context = d10.getContext();
            if (l0Var.J0(context)) {
                l0Var.H0(context, d1Var);
                return;
            } else {
                e(d1Var);
                return;
            }
        }
        d(d1Var, d10, z10);
    }

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    public static final <T> void d(d1<? super T> d1Var, ac.d<? super T> dVar, boolean z10) {
        Object f10;
        boolean S0;
        Object h10 = d1Var.h();
        Throwable e10 = d1Var.e(h10);
        if (e10 != null) {
            j.a aVar = vb.j.f15020f;
            f10 = vb.k.a(e10);
        } else {
            j.a aVar2 = vb.j.f15020f;
            f10 = d1Var.f(h10);
        }
        Object a10 = vb.j.a(f10);
        if (z10) {
            wc.g gVar = (wc.g) dVar;
            ac.d<T> dVar2 = gVar.f15490j;
            Object obj = gVar.f15492l;
            ac.g context = dVar2.getContext();
            Object c10 = wc.e0.c(context, obj);
            f3<?> e11 = c10 != wc.e0.f15479a ? k0.e(dVar2, context, c10) : null;
            try {
                gVar.f15490j.resumeWith(a10);
                vb.p pVar = vb.p.f15031a;
                if (e11 != null) {
                    if (!S0) {
                        return;
                    }
                }
                return;
            } finally {
                if (e11 == null || e11.S0()) {
                    wc.e0.a(context, c10);
                }
            }
        }
        dVar.resumeWith(a10);
    }

    public static final void e(d1<?> d1Var) {
        m1 b10 = b3.f13232a.b();
        if (b10.R0()) {
            b10.N0(d1Var);
            return;
        }
        b10.P0(true);
        try {
            d(d1Var, d1Var.d(), true);
            do {
            } while (b10.U0());
        } finally {
            try {
            } finally {
            }
        }
    }
}
