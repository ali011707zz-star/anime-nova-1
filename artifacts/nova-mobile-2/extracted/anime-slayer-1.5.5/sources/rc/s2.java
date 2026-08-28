package rc;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
public final class s2 extends f {

    /* renamed from: f, reason: collision with root package name */
    public final wc.o f13333f;

    public s2(wc.o oVar) {
        this.f13333f = oVar;
    }

    @Override // rc.n
    public void a(Throwable th) {
        this.f13333f.P();
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        a(th);
        return vb.p.f15031a;
    }

    public String toString() {
        return "RemoveOnCancel[" + this.f13333f + ']';
    }
}
