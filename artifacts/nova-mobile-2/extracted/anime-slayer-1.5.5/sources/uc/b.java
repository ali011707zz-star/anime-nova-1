package uc;

/* compiled from: Builders.kt */
/* loaded from: classes2.dex */
public final class b<T> extends d<T> {

    /* renamed from: j, reason: collision with root package name */
    public final ic.p<tc.r<? super T>, ac.d<? super vb.p>, Object> f14516j;

    /* compiled from: Builders.kt */
    @cc.f(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {355}, m = "collectTo")
    /* loaded from: classes2.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14517f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f14518g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ b<T> f14519h;

        /* renamed from: i, reason: collision with root package name */
        public int f14520i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b<T> bVar, ac.d<? super a> dVar) {
            super(dVar);
            this.f14519h = bVar;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14518g = obj;
            this.f14520i |= Integer.MIN_VALUE;
            return this.f14519h.h(null, this);
        }
    }

    public /* synthetic */ b(ic.p pVar, ac.g gVar, int i10, tc.e eVar, int i11, jc.g gVar2) {
        this(pVar, (i11 & 2) != 0 ? ac.h.f543f : gVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? tc.e.SUSPEND : eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // uc.d, vc.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object h(tc.r<? super T> rVar, ac.d<? super vb.p> dVar) {
        a aVar;
        int i10;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i11 = aVar.f14520i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f14520i = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f14518g;
                Object d10 = bc.c.d();
                i10 = aVar.f14520i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    aVar.f14517f = rVar;
                    aVar.f14520i = 1;
                    if (super.h(rVar, aVar) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    rVar = (tc.r) aVar.f14517f;
                    vb.k.b(obj);
                }
                if (!rVar.o()) {
                    return vb.p.f15031a;
                }
                throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
            }
        }
        aVar = new a(this, dVar);
        Object obj2 = aVar.f14518g;
        Object d102 = bc.c.d();
        i10 = aVar.f14520i;
        if (i10 != 0) {
        }
        if (!rVar.o()) {
        }
    }

    @Override // vc.d
    public vc.d<T> i(ac.g gVar, int i10, tc.e eVar) {
        return new b(this.f14516j, gVar, i10, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(ic.p<? super tc.r<? super T>, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.g gVar, int i10, tc.e eVar) {
        super(pVar, gVar, i10, eVar);
        this.f14516j = pVar;
    }
}
