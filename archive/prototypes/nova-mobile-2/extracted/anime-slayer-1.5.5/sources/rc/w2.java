package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class w2<T, R> extends i2 {

    /* renamed from: j, reason: collision with root package name */
    public final zc.d<R> f13349j;

    /* renamed from: k, reason: collision with root package name */
    public final ic.p<T, ac.d<? super R>, Object> f13350k;

    /* JADX WARN: Multi-variable type inference failed */
    public w2(zc.d<? super R> dVar, ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar) {
        this.f13349j = dVar;
        this.f13350k = pVar;
    }

    @Override // rc.h0
    public void U(Throwable th) {
        if (this.f13349j.p()) {
            V().B0(this.f13349j, this.f13350k);
        }
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        U(th);
        return vb.p.f15031a;
    }
}
