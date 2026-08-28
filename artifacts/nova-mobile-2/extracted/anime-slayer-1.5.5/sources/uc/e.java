package uc;

import com.twitter.sdk.android.core.internal.TwitterApiConstants;

/* compiled from: Distinct.kt */
/* loaded from: classes2.dex */
public final class e<T> implements f<T> {

    /* renamed from: f, reason: collision with root package name */
    public final f<T> f14537f;

    /* renamed from: g, reason: collision with root package name */
    public final ic.l<T, Object> f14538g;

    /* renamed from: h, reason: collision with root package name */
    public final ic.p<Object, Object, Boolean> f14539h;

    /* compiled from: Collect.kt */
    /* loaded from: classes2.dex */
    public static final class a implements g<T> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ jc.x f14541g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ g f14542h;

        @cc.f(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1", f = "Distinct.kt", l = {TwitterApiConstants.Errors.ALREADY_FAVORITED}, m = "emit")
        /* renamed from: uc.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0372a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14543f;

            /* renamed from: g, reason: collision with root package name */
            public int f14544g;

            public C0372a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14543f = obj;
                this.f14544g |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        public a(jc.x xVar, g gVar) {
            this.f14541g = xVar;
            this.f14542h = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // uc.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object a(T t10, ac.d<? super vb.p> dVar) {
            C0372a c0372a;
            int i10;
            if (dVar instanceof C0372a) {
                c0372a = (C0372a) dVar;
                int i11 = c0372a.f14544g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c0372a.f14544g = i11 - Integer.MIN_VALUE;
                    Object obj = c0372a.f14543f;
                    Object d10 = bc.c.d();
                    i10 = c0372a.f14544g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        T t11 = (T) e.this.f14538g.invoke(t10);
                        T t12 = this.f14541g.f9194f;
                        if (t12 == vc.o.f15083a || !e.this.f14539h.invoke(t12, t11).booleanValue()) {
                            this.f14541g.f9194f = t11;
                            g gVar = this.f14542h;
                            c0372a.f14544g = 1;
                            if (gVar.a(t10, c0372a) == d10) {
                                return d10;
                            }
                        }
                    } else if (i10 == 1) {
                        vb.k.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return vb.p.f15031a;
                }
            }
            c0372a = new C0372a(dVar);
            Object obj2 = c0372a.f14543f;
            Object d102 = bc.c.d();
            i10 = c0372a.f14544g;
            if (i10 != 0) {
            }
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(f<? extends T> fVar, ic.l<? super T, ? extends Object> lVar, ic.p<Object, Object, Boolean> pVar) {
        this.f14537f = fVar;
        this.f14538g = lVar;
        this.f14539h = pVar;
    }

    @Override // uc.f
    public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
        jc.x xVar = new jc.x();
        xVar.f9194f = (T) vc.o.f15083a;
        Object b10 = this.f14537f.b(new a(xVar, gVar), dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }
}
