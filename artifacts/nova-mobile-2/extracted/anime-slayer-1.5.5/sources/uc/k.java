package uc;

import rc.c2;
import rc.q0;

/* compiled from: Collect.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class k {

    /* compiled from: Collect.kt */
    @cc.f(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {50}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14568f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ f<T> f14569g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(f<? extends T> fVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f14569g = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f14569g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14568f;
            if (i10 == 0) {
                vb.k.b(obj);
                f<T> fVar = this.f14569g;
                this.f14568f = 1;
                if (h.f(fVar, this) == d10) {
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

    public static final Object a(f<?> fVar, ac.d<? super vb.p> dVar) {
        Object b10 = fVar.b(vc.n.f15082f, dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }

    public static final <T> Object b(f<? extends T> fVar, ic.p<? super T, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.d<? super vb.p> dVar) {
        f b10;
        b10 = l.b(h.u(fVar, pVar), 0, null, 2, null);
        Object f10 = h.f(b10, dVar);
        return f10 == bc.c.d() ? f10 : vb.p.f15031a;
    }

    public static final <T> c2 c(f<? extends T> fVar, q0 q0Var) {
        c2 d10;
        d10 = rc.k.d(q0Var, null, null, new a(fVar, null), 3, null);
        return d10;
    }
}
