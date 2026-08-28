package o1;

import java.util.concurrent.Callable;

/* compiled from: CoroutinesRoom.kt */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static final a f11529a = new a(null);

    /* compiled from: CoroutinesRoom.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* JADX INFO: Add missing generic type declarations: [R] */
        /* compiled from: CoroutinesRoom.kt */
        @cc.f(c = "androidx.room.CoroutinesRoom$Companion$execute$2", f = "CoroutinesRoom.kt", l = {}, m = "invokeSuspend")
        /* renamed from: o1.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0286a<R> extends cc.k implements ic.p<rc.q0, ac.d<? super R>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f11530f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Callable<R> f11531g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0286a(Callable<R> callable, ac.d<? super C0286a> dVar) {
                super(2, dVar);
                this.f11531g = callable;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0286a(this.f11531g, dVar);
            }

            @Override // ic.p
            public final Object invoke(rc.q0 q0Var, ac.d<? super R> dVar) {
                return ((C0286a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f11530f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                return this.f11531g.call();
            }
        }

        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final <R> Object a(p0 p0Var, boolean z10, Callable<R> callable, ac.d<? super R> dVar) {
            ac.e b10;
            if (p0Var.y() && p0Var.s()) {
                return callable.call();
            }
            w0 w0Var = (w0) dVar.getContext().get(w0.f11636g);
            if (w0Var == null || (b10 = w0Var.a()) == null) {
                b10 = z10 ? o.b(p0Var) : o.a(p0Var);
            }
            return rc.i.g(b10, new C0286a(callable, null), dVar);
        }
    }

    public static final <R> Object a(p0 p0Var, boolean z10, Callable<R> callable, ac.d<? super R> dVar) {
        return f11529a.a(p0Var, z10, callable, dVar);
    }
}
