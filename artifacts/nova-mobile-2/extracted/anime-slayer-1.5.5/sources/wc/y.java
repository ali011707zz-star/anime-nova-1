package wc;

import rc.c2;
import rc.i0;

/* compiled from: Scopes.kt */
/* loaded from: classes2.dex */
public class y<T> extends rc.a<T> implements cc.e {

    /* renamed from: h, reason: collision with root package name */
    public final ac.d<T> f15544h;

    /* JADX WARN: Multi-variable type inference failed */
    public y(ac.g gVar, ac.d<? super T> dVar) {
        super(gVar, true, true);
        this.f15544h = dVar;
    }

    @Override // rc.a
    public void N0(Object obj) {
        ac.d<T> dVar = this.f15544h;
        dVar.resumeWith(i0.a(obj, dVar));
    }

    public final c2 R0() {
        rc.u Z = Z();
        if (Z == null) {
            return null;
        }
        return Z.getParent();
    }

    @Override // cc.e
    public final cc.e getCallerFrame() {
        ac.d<T> dVar = this.f15544h;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // cc.e
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // rc.j2
    public final boolean i0() {
        return true;
    }

    @Override // rc.j2
    public void v(Object obj) {
        h.c(bc.b.c(this.f15544h), i0.a(obj, this.f15544h), null, 2, null);
    }
}
