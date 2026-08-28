package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class v extends d2 implements u {

    /* renamed from: j, reason: collision with root package name */
    public final w f13342j;

    public v(w wVar) {
        this.f13342j = wVar;
    }

    @Override // rc.h0
    public void U(Throwable th) {
        this.f13342j.z(V());
    }

    @Override // rc.u
    public c2 getParent() {
        return V();
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        U(th);
        return vb.p.f15031a;
    }

    @Override // rc.u
    public boolean q(Throwable th) {
        return V().L(th);
    }
}
