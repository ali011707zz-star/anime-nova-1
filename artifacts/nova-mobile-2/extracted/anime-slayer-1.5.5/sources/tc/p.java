package tc;

import rc.c2;
import rc.k0;
import rc.q0;
import rc.s0;
import vb.j;

/* compiled from: Produce.kt */
/* loaded from: classes2.dex */
public final class p {

    /* compiled from: Produce.kt */
    @cc.f(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {157}, m = "awaitClose")
    /* loaded from: classes2.dex */
    public static final class a extends cc.d {

        /* renamed from: f */
        public Object f14167f;

        /* renamed from: g */
        public Object f14168g;

        /* renamed from: h */
        public /* synthetic */ Object f14169h;

        /* renamed from: i */
        public int f14170i;

        public a(ac.d<? super a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14169h = obj;
            this.f14170i |= Integer.MIN_VALUE;
            return p.a(null, null, this);
        }
    }

    /* compiled from: Produce.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.a<vb.p> {

        /* renamed from: f */
        public static final b f14171f = new b();

        public b() {
            super(0);
        }

        public final void a() {
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: Produce.kt */
    /* loaded from: classes2.dex */
    public static final class c extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f */
        public final /* synthetic */ rc.o<vb.p> f14172f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(rc.o<? super vb.p> oVar) {
            super(1);
            this.f14172f = oVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke */
        public final void invoke2(Throwable th) {
            rc.o<vb.p> oVar = this.f14172f;
            vb.p pVar = vb.p.f15031a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(pVar));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(r<?> rVar, ic.a<vb.p> aVar, ac.d<? super vb.p> dVar) {
        a aVar2;
        int i10;
        try {
            if (dVar instanceof a) {
                aVar2 = (a) dVar;
                int i11 = aVar2.f14170i;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar2.f14170i = i11 - Integer.MIN_VALUE;
                    Object obj = aVar2.f14169h;
                    Object d10 = bc.c.d();
                    i10 = aVar2.f14170i;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        if (aVar2.getContext().get(c2.f13236c) == rVar) {
                            aVar2.f14167f = rVar;
                            aVar2.f14168g = aVar;
                            aVar2.f14170i = 1;
                            rc.p pVar = new rc.p(bc.b.c(aVar2), 1);
                            pVar.z();
                            rVar.e(new c(pVar));
                            Object v10 = pVar.v();
                            if (v10 == bc.c.d()) {
                                cc.h.c(aVar2);
                            }
                            if (v10 == d10) {
                                return d10;
                            }
                        } else {
                            throw new IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar = (ic.a) aVar2.f14168g;
                        vb.k.b(obj);
                    }
                    aVar.invoke();
                    return vb.p.f15031a;
                }
            }
            if (i10 != 0) {
            }
            aVar.invoke();
            return vb.p.f15031a;
        } catch (Throwable th) {
            aVar.invoke();
            throw th;
        }
        aVar2 = new a(dVar);
        Object obj2 = aVar2.f14169h;
        Object d102 = bc.c.d();
        i10 = aVar2.f14170i;
    }

    public static /* synthetic */ Object b(r rVar, ic.a aVar, ac.d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = b.f14171f;
        }
        return a(rVar, aVar, dVar);
    }

    public static final <E> t<E> c(q0 q0Var, ac.g gVar, int i10, ic.p<? super r<? super E>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        return d(q0Var, gVar, i10, e.SUSPEND, s0.DEFAULT, null, pVar);
    }

    public static final <E> t<E> d(q0 q0Var, ac.g gVar, int i10, e eVar, s0 s0Var, ic.l<? super Throwable, vb.p> lVar, ic.p<? super r<? super E>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        q qVar = new q(k0.c(q0Var, gVar), i.b(i10, eVar, null, 4, null));
        if (lVar != null) {
            qVar.h0(lVar);
        }
        qVar.Q0(s0Var, qVar, pVar);
        return qVar;
    }

    public static /* synthetic */ t e(q0 q0Var, ac.g gVar, int i10, ic.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            gVar = ac.h.f543f;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c(q0Var, gVar, i10, pVar);
    }

    public static /* synthetic */ t f(q0 q0Var, ac.g gVar, int i10, e eVar, s0 s0Var, ic.l lVar, ic.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            gVar = ac.h.f543f;
        }
        ac.g gVar2 = gVar;
        int i12 = (i11 & 2) != 0 ? 0 : i10;
        if ((i11 & 4) != 0) {
            eVar = e.SUSPEND;
        }
        e eVar2 = eVar;
        if ((i11 & 8) != 0) {
            s0Var = s0.DEFAULT;
        }
        s0 s0Var2 = s0Var;
        if ((i11 & 16) != 0) {
            lVar = null;
        }
        return d(q0Var, gVar2, i12, eVar2, s0Var2, lVar, pVar);
    }
}
