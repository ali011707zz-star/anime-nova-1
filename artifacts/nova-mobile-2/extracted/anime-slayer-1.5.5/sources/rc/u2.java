package rc;

import vb.j;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class u2 extends i2 {

    /* renamed from: j, reason: collision with root package name */
    public final ac.d<vb.p> f13341j;

    /* JADX WARN: Multi-variable type inference failed */
    public u2(ac.d<? super vb.p> dVar) {
        this.f13341j = dVar;
    }

    @Override // rc.h0
    public void U(Throwable th) {
        ac.d<vb.p> dVar = this.f13341j;
        vb.p pVar = vb.p.f15031a;
        j.a aVar = vb.j.f15020f;
        dVar.resumeWith(vb.j.a(pVar));
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        U(th);
        return vb.p.f15031a;
    }
}
