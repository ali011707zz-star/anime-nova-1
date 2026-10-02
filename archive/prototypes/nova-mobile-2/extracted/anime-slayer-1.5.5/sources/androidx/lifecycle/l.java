package androidx.lifecycle;

import rc.c2;
import rc.q0;

/* compiled from: Lifecycle.kt */
/* loaded from: classes.dex */
public abstract class l implements q0 {

    /* compiled from: Lifecycle.kt */
    @cc.f(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", l = {97}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f2515f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ic.p<q0, ac.d<? super vb.p>, Object> f2517h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ic.p<? super q0, ? super ac.d<? super vb.p>, ? extends Object> pVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f2517h = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f2517h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f2515f;
            if (i10 == 0) {
                vb.k.b(obj);
                k a10 = l.this.a();
                ic.p<q0, ac.d<? super vb.p>, Object> pVar = this.f2517h;
                this.f2515f = 1;
                if (c0.a(a10, pVar, this) == d10) {
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

    public abstract k a();

    public final c2 f(ic.p<? super q0, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        jc.l.f(pVar, "block");
        return rc.i.d(this, null, null, new a(pVar, null), 3, null);
    }
}
