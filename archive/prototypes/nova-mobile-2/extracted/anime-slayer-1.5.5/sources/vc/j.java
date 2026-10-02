package vc;

import kotlinx.coroutines.flow.internal.ChildCancelledException;
import wc.y;

/* compiled from: FlowCoroutine.kt */
/* loaded from: classes2.dex */
public final class j<T> extends y<T> {
    public j(ac.g gVar, ac.d<? super T> dVar) {
        super(gVar, dVar);
    }

    @Override // rc.j2
    public boolean L(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return E(th);
    }
}
