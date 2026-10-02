package od;

import ac.d;
import jc.l;
import uc.f;
import uc.g;
import uc.h;
import vb.p;

/* compiled from: InitialValueFlow.kt */
/* loaded from: classes2.dex */
public final class b<T> implements f<T> {

    /* renamed from: f, reason: collision with root package name */
    public final f<T> f11866f;

    /* JADX WARN: Multi-variable type inference failed */
    public b(f<? extends T> fVar) {
        l.f(fVar, "flow");
        this.f11866f = fVar;
    }

    @Override // uc.f
    public Object b(g<? super T> gVar, d<? super p> dVar) {
        return this.f11866f.b(gVar, dVar);
    }

    public final f<T> f() {
        return h.m(this.f11866f, 1);
    }
}
