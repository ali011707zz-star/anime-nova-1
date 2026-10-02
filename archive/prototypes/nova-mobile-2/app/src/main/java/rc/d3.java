package rc;

import kotlinx.coroutines.TimeoutCancellationException;

/* compiled from: Timeout.kt */
/* loaded from: classes2.dex */
public final class d3 {
    public static final TimeoutCancellationException a(long j10, c2 c2Var) {
        return new TimeoutCancellationException("Timed out waiting for " + j10 + " ms", c2Var);
    }

    public static final <U, T extends U> Object b(c3<U, ? super T> c3Var, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar) {
        f2.g(c3Var, b1.b(c3Var.f15544h.getContext()).w0(c3Var.f13238i, c3Var, c3Var.getContext()));
        return xc.b.e(c3Var, c3Var, pVar);
    }

    public static final <T> Object c(long j10, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super T> dVar) {
        if (j10 > 0) {
            Object b10 = b(new c3(j10, dVar), pVar);
            if (b10 == bc.c.d()) {
                cc.h.c(dVar);
            }
            return b10;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }
}
