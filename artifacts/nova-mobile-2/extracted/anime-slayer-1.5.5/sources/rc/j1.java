package rc;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
public final class j1 extends m {

    /* renamed from: f, reason: collision with root package name */
    public final i1 f13272f;

    public j1(i1 i1Var) {
        this.f13272f = i1Var;
    }

    @Override // rc.n
    public void a(Throwable th) {
        this.f13272f.e();
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        a(th);
        return vb.p.f15031a;
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f13272f + ']';
    }
}
