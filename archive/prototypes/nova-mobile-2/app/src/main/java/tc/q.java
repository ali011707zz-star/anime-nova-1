package tc;

import rc.n0;
import tc.x;

/* compiled from: Produce.kt */
/* loaded from: classes2.dex */
public class q<E> extends g<E> implements r<E> {
    public q(ac.g gVar, f<E> fVar) {
        super(gVar, fVar, true, true);
    }

    @Override // rc.a
    public void O0(Throwable th, boolean z10) {
        if (R0().g(th) || z10) {
            return;
        }
        n0.a(getContext(), th);
    }

    @Override // rc.a
    /* renamed from: S0, reason: merged with bridge method [inline-methods] */
    public void P0(vb.p pVar) {
        x.a.a(R0(), null, 1, null);
    }

    @Override // rc.a, rc.j2, rc.c2
    public boolean b() {
        return super.b();
    }
}
