package vc;

import rc.q0;

/* compiled from: FlowCoroutine.kt */
/* loaded from: classes2.dex */
public final class k {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a<R> implements uc.f<R> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.q f15075f;

        public a(ic.q qVar) {
            this.f15075f = qVar;
        }

        @Override // uc.f
        public Object b(uc.g<? super R> gVar, ac.d<? super vb.p> dVar) {
            Object a10 = k.a(new b(this.f15075f, gVar, null), dVar);
            return a10 == bc.c.d() ? a10 : vb.p.f15031a;
        }
    }

    /* compiled from: FlowCoroutine.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", l = {51}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15076f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15077g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ic.q<q0, uc.g<? super R>, ac.d<? super vb.p>, Object> f15078h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ uc.g<R> f15079i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(ic.q<? super q0, ? super uc.g<? super R>, ? super ac.d<? super vb.p>, ? extends Object> qVar, uc.g<? super R> gVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f15078h = qVar;
            this.f15079i = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            b bVar = new b(this.f15078h, this.f15079i, dVar);
            bVar.f15077g = obj;
            return bVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15076f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var = (q0) this.f15077g;
                ic.q<q0, uc.g<? super R>, ac.d<? super vb.p>, Object> qVar = this.f15078h;
                Object obj2 = this.f15079i;
                this.f15076f = 1;
                if (qVar.i(q0Var, obj2, this) == d10) {
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

    public static final <R> Object a(ic.p<? super q0, ? super ac.d<? super R>, ? extends Object> pVar, ac.d<? super R> dVar) {
        j jVar = new j(dVar.getContext(), dVar);
        Object d10 = xc.b.d(jVar, jVar, pVar);
        if (d10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return d10;
    }

    public static final <R> uc.f<R> b(ic.q<? super q0, ? super uc.g<? super R>, ? super ac.d<? super vb.p>, ? extends Object> qVar) {
        return new a(qVar);
    }
}
