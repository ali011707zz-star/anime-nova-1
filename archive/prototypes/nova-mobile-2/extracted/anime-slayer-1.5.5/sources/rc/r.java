package rc;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
public final class r {
    public static final void a(o<?> oVar, i1 i1Var) {
        oVar.n(new j1(i1Var));
    }

    public static final <T> p<T> b(ac.d<? super T> dVar) {
        if (!(dVar instanceof wc.g)) {
            return new p<>(dVar, 1);
        }
        p<T> j10 = ((wc.g) dVar).j();
        if (j10 == null || !j10.K()) {
            j10 = null;
        }
        return j10 == null ? new p<>(dVar, 2) : j10;
    }

    public static final void c(o<?> oVar, wc.o oVar2) {
        oVar.n(new s2(oVar2));
    }
}
