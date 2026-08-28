package rc;

import java.util.concurrent.CancellationException;
import rc.c2;

/* compiled from: Job.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class h2 {
    public static final d0 a(c2 c2Var) {
        return new e2(c2Var);
    }

    public static /* synthetic */ d0 b(c2 c2Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c2Var = null;
        }
        return f2.a(c2Var);
    }

    public static final void c(ac.g gVar, CancellationException cancellationException) {
        c2 c2Var = (c2) gVar.get(c2.f13236c);
        if (c2Var == null) {
            return;
        }
        c2Var.d(cancellationException);
    }

    public static /* synthetic */ void d(ac.g gVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        f2.c(gVar, cancellationException);
    }

    public static final Object e(c2 c2Var, ac.d<? super vb.p> dVar) {
        c2.a.a(c2Var, null, 1, null);
        Object U = c2Var.U(dVar);
        return U == bc.c.d() ? U : vb.p.f15031a;
    }

    public static final i1 f(c2 c2Var, i1 i1Var) {
        return c2Var.h0(new k1(i1Var));
    }

    public static final void g(ac.g gVar) {
        c2 c2Var = (c2) gVar.get(c2.f13236c);
        if (c2Var == null) {
            return;
        }
        f2.i(c2Var);
    }

    public static final void h(c2 c2Var) {
        if (!c2Var.b()) {
            throw c2Var.a0();
        }
    }
}
