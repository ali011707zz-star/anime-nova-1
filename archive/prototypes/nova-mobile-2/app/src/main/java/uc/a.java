package uc;

/* compiled from: Flow.kt */
/* loaded from: classes2.dex */
public abstract class a<T> implements f<T> {

    /* compiled from: Flow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {212}, m = "collect")
    /* renamed from: uc.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0371a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14512f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f14513g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ a<T> f14514h;

        /* renamed from: i, reason: collision with root package name */
        public int f14515i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0371a(a<T> aVar, ac.d<? super C0371a> dVar) {
            super(dVar);
            this.f14514h = aVar;
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14513g = obj;
            this.f14515i |= Integer.MIN_VALUE;
            return this.f14514h.b(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // uc.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
        C0371a c0371a;
        int i10;
        Throwable th;
        vc.p pVar;
        if (dVar instanceof C0371a) {
            c0371a = (C0371a) dVar;
            int i11 = c0371a.f14515i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c0371a.f14515i = i11 - Integer.MIN_VALUE;
                Object obj = c0371a.f14513g;
                Object d10 = bc.c.d();
                i10 = c0371a.f14515i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    vc.p pVar2 = new vc.p(gVar, c0371a.getContext());
                    try {
                        c0371a.f14512f = pVar2;
                        c0371a.f14515i = 1;
                        if (f(pVar2, c0371a) == d10) {
                            return d10;
                        }
                        pVar = pVar2;
                    } catch (Throwable th2) {
                        th = th2;
                        pVar = pVar2;
                        pVar.releaseIntercepted();
                        throw th;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (vc.p) c0371a.f14512f;
                    try {
                        vb.k.b(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        pVar.releaseIntercepted();
                        throw th;
                    }
                }
                pVar.releaseIntercepted();
                return vb.p.f15031a;
            }
        }
        c0371a = new C0371a(this, dVar);
        Object obj2 = c0371a.f14513g;
        Object d102 = bc.c.d();
        i10 = c0371a.f14515i;
        if (i10 != 0) {
        }
        pVar.releaseIntercepted();
        return vb.p.f15031a;
    }

    public abstract Object f(g<? super T> gVar, ac.d<? super vb.p> dVar);
}
