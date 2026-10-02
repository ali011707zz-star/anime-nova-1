package androidx.lifecycle;

import androidx.lifecycle.k;
import rc.c2;
import rc.g1;
import rc.q0;

/* compiled from: PausingDispatcher.kt */
/* loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: PausingDispatcher.kt */
    @cc.f(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {162}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a<T> extends cc.k implements ic.p<q0, ac.d<? super T>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f2459f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f2460g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ k f2461h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ k.c f2462i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ic.p<q0, ac.d<? super T>, Object> f2463j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(k kVar, k.c cVar, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f2461h = kVar;
            this.f2462i = cVar;
            this.f2463j = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(this.f2461h, this.f2462i, this.f2463j, dVar);
            aVar.f2460g = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super T> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            LifecycleController lifecycleController;
            Object d10 = bc.c.d();
            int i10 = this.f2459f;
            if (i10 == 0) {
                vb.k.b(obj);
                c2 c2Var = (c2) ((q0) this.f2460g).getCoroutineContext().get(c2.f13236c);
                if (c2Var != null) {
                    b0 b0Var = new b0();
                    LifecycleController lifecycleController2 = new LifecycleController(this.f2461h, this.f2462i, b0Var.f2451g, c2Var);
                    try {
                        ic.p<q0, ac.d<? super T>, Object> pVar = this.f2463j;
                        this.f2460g = lifecycleController2;
                        this.f2459f = 1;
                        obj = rc.i.g(b0Var, pVar, this);
                        if (obj == d10) {
                            return d10;
                        }
                        lifecycleController = lifecycleController2;
                    } catch (Throwable th) {
                        th = th;
                        lifecycleController = lifecycleController2;
                        lifecycleController.c();
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("when[State] methods should have a parent job".toString());
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                lifecycleController = (LifecycleController) this.f2460g;
                try {
                    vb.k.b(obj);
                } catch (Throwable th2) {
                    th = th2;
                    lifecycleController.c();
                    throw th;
                }
            }
            lifecycleController.c();
            return obj;
        }
    }

    public static final <T> Object a(k kVar, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super T> dVar) {
        return b(kVar, k.c.STARTED, pVar, dVar);
    }

    public static final <T> Object b(k kVar, k.c cVar, ic.p<? super q0, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super T> dVar) {
        return rc.i.g(g1.c().K0(), new a(kVar, cVar, pVar, null), dVar);
    }
}
