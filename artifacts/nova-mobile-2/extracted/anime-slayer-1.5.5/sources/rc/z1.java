package rc;

/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes2.dex */
public final class z1 extends m {

    /* renamed from: f, reason: collision with root package name */
    public final ic.l<Throwable, vb.p> f13358f;

    /* JADX WARN: Multi-variable type inference failed */
    public z1(ic.l<? super Throwable, vb.p> lVar) {
        this.f13358f = lVar;
    }

    @Override // rc.n
    public void a(Throwable th) {
        this.f13358f.invoke(th);
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        a(th);
        return vb.p.f15031a;
    }

    public String toString() {
        return "InvokeOnCancel[" + v0.a(this.f13358f) + '@' + v0.b(this) + ']';
    }
}
