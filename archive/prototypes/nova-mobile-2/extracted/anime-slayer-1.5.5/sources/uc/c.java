package uc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rc.q0;

/* compiled from: Channels.kt */
/* loaded from: classes2.dex */
public final class c<T> extends vc.d<T> {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f14530k = AtomicIntegerFieldUpdater.newUpdater(c.class, "consumed");
    private volatile /* synthetic */ int consumed;

    /* renamed from: i, reason: collision with root package name */
    public final tc.t<T> f14531i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f14532j;

    public /* synthetic */ c(tc.t tVar, boolean z10, ac.g gVar, int i10, tc.e eVar, int i11, jc.g gVar2) {
        this(tVar, z10, (i11 & 4) != 0 ? ac.h.f543f : gVar, (i11 & 8) != 0 ? -3 : i10, (i11 & 16) != 0 ? tc.e.SUSPEND : eVar);
    }

    @Override // vc.d, uc.f
    public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
        if (this.f15040g == -3) {
            m();
            Object d10 = j.d(gVar, this.f14531i, this.f14532j, dVar);
            return d10 == bc.c.d() ? d10 : vb.p.f15031a;
        }
        Object b10 = super.b(gVar, dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }

    @Override // vc.d
    public String f() {
        return jc.l.m("channel=", this.f14531i);
    }

    @Override // vc.d
    public Object h(tc.r<? super T> rVar, ac.d<? super vb.p> dVar) {
        Object d10 = j.d(new vc.s(rVar), this.f14531i, this.f14532j, dVar);
        return d10 == bc.c.d() ? d10 : vb.p.f15031a;
    }

    @Override // vc.d
    public vc.d<T> i(ac.g gVar, int i10, tc.e eVar) {
        return new c(this.f14531i, this.f14532j, gVar, i10, eVar);
    }

    @Override // vc.d
    public tc.t<T> l(q0 q0Var) {
        m();
        if (this.f15040g == -3) {
            return this.f14531i;
        }
        return super.l(q0Var);
    }

    public final void m() {
        if (this.f14532j) {
            if (!(f14530k.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(tc.t<? extends T> tVar, boolean z10, ac.g gVar, int i10, tc.e eVar) {
        super(gVar, i10, eVar);
        this.f14531i = tVar;
        this.f14532j = z10;
        this.consumed = 0;
    }
}
