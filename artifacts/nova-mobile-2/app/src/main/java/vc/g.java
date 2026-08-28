package vc;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public final class g<T> extends f<T, T> {
    public /* synthetic */ g(uc.f fVar, ac.g gVar, int i10, tc.e eVar, int i11, jc.g gVar2) {
        this(fVar, (i11 & 2) != 0 ? ac.h.f543f : gVar, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? tc.e.SUSPEND : eVar);
    }

    @Override // vc.d
    public d<T> i(ac.g gVar, int i10, tc.e eVar) {
        return new g(this.f15049i, gVar, i10, eVar);
    }

    @Override // vc.f
    public Object p(uc.g<? super T> gVar, ac.d<? super vb.p> dVar) {
        Object b10 = this.f15049i.b(gVar, dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }

    public g(uc.f<? extends T> fVar, ac.g gVar, int i10, tc.e eVar) {
        super(fVar, gVar, i10, eVar);
    }
}
