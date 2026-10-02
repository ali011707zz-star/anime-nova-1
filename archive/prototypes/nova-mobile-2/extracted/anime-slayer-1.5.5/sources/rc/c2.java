package rc;

import ac.g;
import java.util.concurrent.CancellationException;

/* compiled from: Job.kt */
/* loaded from: classes.dex */
public interface c2 extends g.b {

    /* renamed from: c, reason: collision with root package name */
    public static final b f13236c = b.f13237f;

    /* compiled from: Job.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ void a(c2 c2Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            c2Var.d(cancellationException);
        }

        public static <R> R b(c2 c2Var, R r10, ic.p<? super R, ? super g.b, ? extends R> pVar) {
            return (R) g.b.a.a(c2Var, r10, pVar);
        }

        public static <E extends g.b> E c(c2 c2Var, g.c<E> cVar) {
            return (E) g.b.a.b(c2Var, cVar);
        }

        public static /* synthetic */ i1 d(c2 c2Var, boolean z10, boolean z11, ic.l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            }
            return c2Var.G(z10, z11, lVar);
        }

        public static ac.g e(c2 c2Var, g.c<?> cVar) {
            return g.b.a.c(c2Var, cVar);
        }

        public static ac.g f(c2 c2Var, ac.g gVar) {
            return g.b.a.d(c2Var, gVar);
        }
    }

    /* compiled from: Job.kt */
    /* loaded from: classes2.dex */
    public static final class b implements g.c<c2> {

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ b f13237f = new b();
    }

    i1 G(boolean z10, boolean z11, ic.l<? super Throwable, vb.p> lVar);

    Object U(ac.d<? super vb.p> dVar);

    CancellationException a0();

    boolean b();

    void d(CancellationException cancellationException);

    i1 h0(ic.l<? super Throwable, vb.p> lVar);

    boolean isCancelled();

    u k(w wVar);

    boolean start();
}
