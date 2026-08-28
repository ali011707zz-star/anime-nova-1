package k1;

/* compiled from: SimpleChannelFlow.kt */
/* loaded from: classes.dex */
public final class b1<T> implements a1<T>, rc.q0, tc.x<T> {

    /* renamed from: f, reason: collision with root package name */
    public final tc.x<T> f9279f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ rc.q0 f9280g;

    /* JADX WARN: Multi-variable type inference failed */
    public b1(rc.q0 q0Var, tc.x<? super T> xVar) {
        jc.l.f(q0Var, "scope");
        jc.l.f(xVar, "channel");
        this.f9280g = q0Var;
        this.f9279f = xVar;
    }

    @Override // tc.x
    public boolean f(T t10) {
        return this.f9279f.f(t10);
    }

    @Override // tc.x
    public boolean g(Throwable th) {
        return this.f9279f.g(th);
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        return this.f9280g.getCoroutineContext();
    }

    @Override // tc.x
    public Object p(T t10, ac.d<? super vb.p> dVar) {
        return this.f9279f.p(t10, dVar);
    }
}
