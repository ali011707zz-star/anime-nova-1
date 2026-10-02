package tc;

/* compiled from: AbstractChannel.kt */
/* loaded from: classes2.dex */
public final class z<E> extends y<E> {

    /* renamed from: k, reason: collision with root package name */
    public final ic.l<E, vb.p> f14175k;

    /* JADX WARN: Multi-variable type inference failed */
    public z(E e10, rc.o<? super vb.p> oVar, ic.l<? super E, vb.p> lVar) {
        super(e10, oVar);
        this.f14175k = lVar;
    }

    @Override // wc.o
    public boolean P() {
        if (!super.P()) {
            return false;
        }
        Y();
        return true;
    }

    @Override // tc.w
    public void Y() {
        wc.v.b(this.f14175k, V(), this.f14174j.getContext());
    }
}
