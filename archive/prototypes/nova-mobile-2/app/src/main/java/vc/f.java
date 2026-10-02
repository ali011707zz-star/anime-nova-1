package vc;

import ac.e;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public abstract class f<S, T> extends d<T> {

    /* renamed from: i, reason: collision with root package name */
    public final uc.f<S> f15049i;

    /* compiled from: ChannelFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {152}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends cc.k implements ic.p<uc.g<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15050f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15051g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ f<S, T> f15052h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f<S, T> fVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f15052h = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(this.f15052h, dVar);
            aVar.f15051g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(uc.g<? super T> gVar, ac.d<? super vb.p> dVar) {
            return ((a) create(gVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15050f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.g<? super T> gVar = (uc.g) this.f15051g;
                f<S, T> fVar = this.f15052h;
                this.f15050f = 1;
                if (fVar.p(gVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(uc.f<? extends S> fVar, ac.g gVar, int i10, tc.e eVar) {
        super(gVar, i10, eVar);
        this.f15049i = fVar;
    }

    public static /* synthetic */ Object m(f fVar, uc.g gVar, ac.d dVar) {
        if (fVar.f15040g == -3) {
            ac.g context = dVar.getContext();
            ac.g plus = context.plus(fVar.f15039f);
            if (jc.l.a(plus, context)) {
                Object p10 = fVar.p(gVar, dVar);
                return p10 == bc.c.d() ? p10 : vb.p.f15031a;
            }
            e.b bVar = ac.e.f540a;
            if (jc.l.a(plus.get(bVar), context.get(bVar))) {
                Object o10 = fVar.o(gVar, plus, dVar);
                return o10 == bc.c.d() ? o10 : vb.p.f15031a;
            }
        }
        Object b10 = super.b(gVar, dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }

    public static /* synthetic */ Object n(f fVar, tc.r rVar, ac.d dVar) {
        Object p10 = fVar.p(new s(rVar), dVar);
        return p10 == bc.c.d() ? p10 : vb.p.f15031a;
    }

    @Override // vc.d, uc.f
    public Object b(uc.g<? super T> gVar, ac.d<? super vb.p> dVar) {
        return m(this, gVar, dVar);
    }

    @Override // vc.d
    public Object h(tc.r<? super T> rVar, ac.d<? super vb.p> dVar) {
        return n(this, rVar, dVar);
    }

    public final Object o(uc.g<? super T> gVar, ac.g gVar2, ac.d<? super vb.p> dVar) {
        Object c10 = e.c(gVar2, e.a(gVar, dVar.getContext()), null, new a(this, null), dVar, 4, null);
        return c10 == bc.c.d() ? c10 : vb.p.f15031a;
    }

    public abstract Object p(uc.g<? super T> gVar, ac.d<? super vb.p> dVar);

    @Override // vc.d
    public String toString() {
        return this.f15049i + " -> " + super.toString();
    }
}
