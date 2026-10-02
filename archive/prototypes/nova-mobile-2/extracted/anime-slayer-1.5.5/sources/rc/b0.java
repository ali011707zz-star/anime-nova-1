package rc;

/* compiled from: CompletableDeferred.kt */
/* loaded from: classes2.dex */
public final class b0<T> extends j2 implements a0<T>, zc.c<T> {
    public b0(c2 c2Var) {
        super(true);
        f0(c2Var);
    }

    @Override // rc.a0
    public boolean N(T t10) {
        return n0(t10);
    }

    @Override // rc.j2
    public boolean X() {
        return true;
    }

    @Override // zc.c
    public <R> void a(zc.d<? super R> dVar, ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar) {
        z0(dVar, pVar);
    }

    @Override // rc.y0
    public Object k0(ac.d<? super T> dVar) {
        return w(dVar);
    }
}
