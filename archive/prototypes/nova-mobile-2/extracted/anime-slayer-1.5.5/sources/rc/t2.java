package rc;

import vb.j;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class t2<T> extends i2 {

    /* renamed from: j, reason: collision with root package name */
    public final p<T> f13336j;

    /* JADX WARN: Multi-variable type inference failed */
    public t2(p<? super T> pVar) {
        this.f13336j = pVar;
    }

    @Override // rc.h0
    public void U(Throwable th) {
        Object b02 = V().b0();
        if (u0.a() && !(!(b02 instanceof x1))) {
            throw new AssertionError();
        }
        if (b02 instanceof f0) {
            p<T> pVar = this.f13336j;
            Throwable th2 = ((f0) b02).f13254a;
            j.a aVar = vb.j.f15020f;
            pVar.resumeWith(vb.j.a(vb.k.a(th2)));
            return;
        }
        p<T> pVar2 = this.f13336j;
        Object h10 = k2.h(b02);
        j.a aVar2 = vb.j.f15020f;
        pVar2.resumeWith(vb.j.a(h10));
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        U(th);
        return vb.p.f15031a;
    }
}
