package tc;

import rc.u0;
import rc.v0;
import vb.j;
import wc.a0;
import wc.o;

/* compiled from: AbstractChannel.kt */
/* loaded from: classes2.dex */
public class y<E> extends w {

    /* renamed from: i, reason: collision with root package name */
    public final E f14173i;

    /* renamed from: j, reason: collision with root package name */
    public final rc.o<vb.p> f14174j;

    /* JADX WARN: Multi-variable type inference failed */
    public y(E e10, rc.o<? super vb.p> oVar) {
        this.f14173i = e10;
        this.f14174j = oVar;
    }

    @Override // tc.w
    public void U() {
        this.f14174j.B(rc.q.f13321a);
    }

    @Override // tc.w
    public E V() {
        return this.f14173i;
    }

    @Override // tc.w
    public void W(m<?> mVar) {
        rc.o<vb.p> oVar = this.f14174j;
        Throwable c02 = mVar.c0();
        j.a aVar = vb.j.f15020f;
        oVar.resumeWith(vb.j.a(vb.k.a(c02)));
    }

    @Override // tc.w
    public a0 X(o.c cVar) {
        Object c10 = this.f14174j.c(vb.p.f15031a, cVar == null ? null : cVar.f15519c);
        if (c10 == null) {
            return null;
        }
        if (u0.a()) {
            if (!(c10 == rc.q.f13321a)) {
                throw new AssertionError();
            }
        }
        if (cVar != null) {
            cVar.d();
        }
        return rc.q.f13321a;
    }

    @Override // wc.o
    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + '(' + V() + ')';
    }
}
