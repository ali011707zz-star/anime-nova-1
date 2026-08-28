package k1;

/* compiled from: FlowExt.kt */
/* loaded from: classes.dex */
public final class f<T> implements uc.g<T> {

    /* renamed from: f, reason: collision with root package name */
    public final tc.x<T> f9392f;

    /* JADX WARN: Multi-variable type inference failed */
    public f(tc.x<? super T> xVar) {
        jc.l.f(xVar, "channel");
        this.f9392f = xVar;
    }

    @Override // uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        Object p10 = this.f9392f.p(t10, dVar);
        return p10 == bc.c.d() ? p10 : vb.p.f15031a;
    }
}
