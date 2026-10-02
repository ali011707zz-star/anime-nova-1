package k1;

import rc.c2;
import tc.x;

/* compiled from: CancelableChannelFlow.kt */
/* loaded from: classes.dex */
public final class e {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CancelableChannelFlow.kt */
    @cc.f(c = "androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1", f = "CancelableChannelFlow.kt", l = {30}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a<T> extends cc.k implements ic.p<a1<T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9373f;

        /* renamed from: g, reason: collision with root package name */
        public int f9374g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ c2 f9375h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ic.p f9376i;

        /* compiled from: CancelableChannelFlow.kt */
        /* renamed from: k1.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0183a extends jc.m implements ic.l<Throwable, vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a1 f9377f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0183a(a1 a1Var) {
                super(1);
                this.f9377f = a1Var;
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
                invoke2(th);
                return vb.p.f15031a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                x.a.a(this.f9377f, null, 1, null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c2 c2Var, ic.p pVar, ac.d dVar) {
            super(2, dVar);
            this.f9375h = c2Var;
            this.f9376i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            a aVar = new a(this.f9375h, this.f9376i, dVar);
            aVar.f9373f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9374g;
            if (i10 == 0) {
                vb.k.b(obj);
                a1 a1Var = (a1) this.f9373f;
                this.f9375h.h0(new C0183a(a1Var));
                ic.p pVar = this.f9376i;
                this.f9374g = 1;
                if (pVar.invoke(a1Var, this) == d10) {
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

    public static final <T> uc.f<T> a(c2 c2Var, ic.p<? super a1<T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        jc.l.f(c2Var, "controller");
        jc.l.f(pVar, "block");
        return z0.a(new a(c2Var, pVar, null));
    }
}
