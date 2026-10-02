package z3;

import ac.d;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import io.wax911.support.custom.worker.SupportRequestClient;
import io.wax911.support.extension.RetroErrorExtKt;
import io.wax911.support.model.ModelWrapper;
import jc.g;
import jc.l;
import rc.q0;
import rc.v1;
import rc.y0;
import rd.q;

/* compiled from: NetworkClient.kt */
/* loaded from: classes.dex */
public final class a extends SupportRequestClient {

    /* renamed from: b, reason: collision with root package name */
    public static final C0435a f17279b = new C0435a(null);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17280a;

    /* compiled from: NetworkClient.kt */
    /* renamed from: z3.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0435a {
        public C0435a() {
        }

        public /* synthetic */ C0435a(g gVar) {
            this();
        }

        public static /* synthetic */ a b(C0435a c0435a, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            return c0435a.a(z10);
        }

        public final a a(boolean z10) {
            return new a(z10, null);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: NetworkClient.kt */
    @f(c = "com.anslayer.api.NetworkClient$executeUsing$1", f = "NetworkClient.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b<T> extends k implements p<q0, d<? super ModelWrapper<T>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17281f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ rd.b<T> f17283h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(rd.b<T> bVar, d<? super b> dVar) {
            super(2, dVar);
            this.f17283h = bVar;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new b(this.f17283h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super ModelWrapper<T>> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            c.d();
            if (this.f17281f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            try {
                a.this.getCallList().add(this.f17283h);
                q<T> execute = this.f17283h.execute();
                if (a.this.f17280a && !execute.f()) {
                    RetroErrorExtKt.logError(execute.d());
                }
                return new ModelWrapper(execute.b(), execute.a(), execute.e(), execute.d());
            } catch (Exception e10) {
                e10.printStackTrace();
                return new ModelWrapper(0, null, null, null, 15, null);
            }
        }
    }

    public a(boolean z10) {
        this.f17280a = z10;
    }

    public /* synthetic */ a(boolean z10, g gVar) {
        this(z10);
    }

    @Override // io.wax911.support.custom.worker.SupportRequestClient
    public <T> y0<ModelWrapper<T>> executeUsing(rd.b<T> bVar) {
        y0<ModelWrapper<T>> b10;
        l.f(bVar, "call");
        b10 = rc.k.b(v1.f13343f, null, null, new b(bVar, null), 3, null);
        return b10;
    }
}
