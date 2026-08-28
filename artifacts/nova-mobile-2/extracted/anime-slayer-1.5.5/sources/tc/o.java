package tc;

import java.util.ArrayList;
import kotlinx.coroutines.internal.UndeliveredElementException;
import tc.c;
import wc.a0;

/* compiled from: LinkedListChannel.kt */
/* loaded from: classes2.dex */
public class o<E> extends a<E> {
    public o(ic.l<? super E, vb.p> lVar) {
        super(lVar);
    }

    @Override // tc.a
    public final boolean N() {
        return true;
    }

    @Override // tc.a
    public final boolean O() {
        return true;
    }

    @Override // tc.a
    public void S(Object obj, m<?> mVar) {
        UndeliveredElementException undeliveredElementException = null;
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                w wVar = (w) obj;
                if (wVar instanceof c.a) {
                    ic.l<E, vb.p> lVar = this.f14141f;
                    if (lVar != null) {
                        undeliveredElementException = wc.v.c(lVar, ((c.a) wVar).f14143i, null);
                    }
                } else {
                    wVar.W(mVar);
                }
            } else {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    UndeliveredElementException undeliveredElementException2 = null;
                    while (true) {
                        int i10 = size - 1;
                        w wVar2 = (w) arrayList.get(size);
                        if (wVar2 instanceof c.a) {
                            ic.l<E, vb.p> lVar2 = this.f14141f;
                            undeliveredElementException2 = lVar2 == null ? null : wc.v.c(lVar2, ((c.a) wVar2).f14143i, undeliveredElementException2);
                        } else {
                            wVar2.W(mVar);
                        }
                        if (i10 < 0) {
                            break;
                        } else {
                            size = i10;
                        }
                    }
                    undeliveredElementException = undeliveredElementException2;
                }
            }
        }
        if (undeliveredElementException != null) {
            throw undeliveredElementException;
        }
    }

    @Override // tc.c
    public final boolean w() {
        return false;
    }

    @Override // tc.c
    public final boolean x() {
        return false;
    }

    @Override // tc.c
    public Object z(E e10) {
        u<?> B;
        do {
            Object z10 = super.z(e10);
            a0 a0Var = b.f14135b;
            if (z10 == a0Var) {
                return a0Var;
            }
            if (z10 == b.f14136c) {
                B = B(e10);
                if (B == null) {
                    return a0Var;
                }
            } else {
                if (z10 instanceof m) {
                    return z10;
                }
                throw new IllegalStateException(jc.l.m("Invalid offerInternal result ", z10).toString());
            }
        } while (!(B instanceof m));
        return B;
    }
}
