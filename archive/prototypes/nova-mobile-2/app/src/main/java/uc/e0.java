package uc;

import org.apache.http.HttpStatus;

/* compiled from: Share.kt */
/* loaded from: classes2.dex */
public final class e0<T> implements g<T> {

    /* renamed from: f, reason: collision with root package name */
    public final g<T> f14546f;

    /* renamed from: g, reason: collision with root package name */
    public final ic.p<g<? super T>, ac.d<? super vb.p>, Object> f14547g;

    /* compiled from: Share.kt */
    @cc.f(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {HttpStatus.SC_GONE, HttpStatus.SC_REQUEST_URI_TOO_LONG}, m = "onSubscription")
    /* loaded from: classes2.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14548f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14549g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f14550h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ e0<T> f14551i;

        /* renamed from: j, reason: collision with root package name */
        public int f14552j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e0<T> e0Var, ac.d<? super a> dVar) {
            super(dVar);
            this.f14551i = e0Var;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14550h = obj;
            this.f14552j |= Integer.MIN_VALUE;
            return this.f14551i.b(this);
        }
    }

    @Override // uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        return this.f14546f.a(t10, dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [vc.p] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ac.d<? super vb.p> dVar) {
        a aVar;
        Object r22;
        vc.p pVar;
        e0<T> e0Var;
        try {
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i10 = aVar.f14552j;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    aVar.f14552j = i10 - Integer.MIN_VALUE;
                    Object obj = aVar.f14550h;
                    Object d10 = bc.c.d();
                    r22 = aVar.f14552j;
                    if (r22 != 0) {
                        vb.k.b(obj);
                        pVar = new vc.p(this.f14546f, aVar.getContext());
                        ic.p<g<? super T>, ac.d<? super vb.p>, Object> pVar2 = this.f14547g;
                        aVar.f14548f = this;
                        aVar.f14549g = pVar;
                        aVar.f14552j = 1;
                        if (pVar2.invoke(pVar, aVar) == d10) {
                            return d10;
                        }
                        e0Var = this;
                    } else {
                        if (r22 != 1) {
                            if (r22 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj);
                            return vb.p.f15031a;
                        }
                        pVar = (vc.p) aVar.f14549g;
                        e0Var = (e0) aVar.f14548f;
                        vb.k.b(obj);
                    }
                    pVar.releaseIntercepted();
                    g<T> gVar = e0Var.f14546f;
                    r22 = gVar instanceof e0;
                    if (r22 != 0) {
                        return vb.p.f15031a;
                    }
                    aVar.f14548f = null;
                    aVar.f14549g = null;
                    aVar.f14552j = 2;
                    if (((e0) gVar).b(aVar) == d10) {
                        return d10;
                    }
                    return vb.p.f15031a;
                }
            }
            if (r22 != 0) {
            }
            pVar.releaseIntercepted();
            g<T> gVar2 = e0Var.f14546f;
            r22 = gVar2 instanceof e0;
            if (r22 != 0) {
            }
        } catch (Throwable th) {
            r22.releaseIntercepted();
            throw th;
        }
        aVar = new a(this, dVar);
        Object obj2 = aVar.f14550h;
        Object d102 = bc.c.d();
        r22 = aVar.f14552j;
    }
}
