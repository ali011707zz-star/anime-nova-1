package uc;

/* compiled from: Builders.kt */
/* loaded from: classes2.dex */
public class d<T> extends vc.d<T> {

    /* renamed from: i, reason: collision with root package name */
    public final ic.p<tc.r<? super T>, ac.d<? super vb.p>, Object> f14535i;

    /* JADX WARN: Multi-variable type inference failed */
    public d(ic.p<? super tc.r<? super T>, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.g gVar, int i10, tc.e eVar) {
        super(gVar, i10, eVar);
        this.f14535i = pVar;
    }

    public static /* synthetic */ Object m(d dVar, tc.r rVar, ac.d dVar2) {
        Object invoke = dVar.f14535i.invoke(rVar, dVar2);
        return invoke == bc.c.d() ? invoke : vb.p.f15031a;
    }

    @Override // vc.d
    public Object h(tc.r<? super T> rVar, ac.d<? super vb.p> dVar) {
        return m(this, rVar, dVar);
    }

    @Override // vc.d
    public String toString() {
        return "block[" + this.f14535i + "] -> " + super.toString();
    }
}
