package bc;

import ac.g;
import cc.h;
import cc.j;
import ic.l;
import ic.p;
import jc.b0;
import vb.k;

/* compiled from: IntrinsicsJvm.kt */
/* loaded from: classes2.dex */
public class b {

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class a extends j {

        /* renamed from: f, reason: collision with root package name */
        public int f3596f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ l f3597g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ac.d dVar, l lVar) {
            super(dVar);
            this.f3597g = lVar;
            jc.l.d(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // cc.a
        public Object invokeSuspend(Object obj) {
            int i10 = this.f3596f;
            if (i10 == 0) {
                this.f3596f = 1;
                k.b(obj);
                jc.l.d(this.f3597g, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-0>, kotlin.Any?>");
                return ((l) b0.a(this.f3597g, 1)).invoke(this);
            }
            if (i10 == 1) {
                this.f3596f = 2;
                k.b(obj);
                return obj;
            }
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* renamed from: bc.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0070b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f3598f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ l f3599g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0070b(ac.d dVar, g gVar, l lVar) {
            super(dVar, gVar);
            this.f3599g = lVar;
            jc.l.d(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // cc.a
        public Object invokeSuspend(Object obj) {
            int i10 = this.f3598f;
            if (i10 == 0) {
                this.f3598f = 1;
                k.b(obj);
                jc.l.d(this.f3599g, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-0>, kotlin.Any?>");
                return ((l) b0.a(this.f3599g, 1)).invoke(this);
            }
            if (i10 == 1) {
                this.f3598f = 2;
                k.b(obj);
                return obj;
            }
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class c extends j {

        /* renamed from: f, reason: collision with root package name */
        public int f3600f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p f3601g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Object f3602h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ac.d dVar, p pVar, Object obj) {
            super(dVar);
            this.f3601g = pVar;
            this.f3602h = obj;
            jc.l.d(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // cc.a
        public Object invokeSuspend(Object obj) {
            int i10 = this.f3600f;
            if (i10 == 0) {
                this.f3600f = 1;
                k.b(obj);
                jc.l.d(this.f3601g, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
                return ((p) b0.a(this.f3601g, 2)).invoke(this.f3602h, this);
            }
            if (i10 == 1) {
                this.f3600f = 2;
                k.b(obj);
                return obj;
            }
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f3603f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p f3604g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Object f3605h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ac.d dVar, g gVar, p pVar, Object obj) {
            super(dVar, gVar);
            this.f3604g = pVar;
            this.f3605h = obj;
            jc.l.d(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // cc.a
        public Object invokeSuspend(Object obj) {
            int i10 = this.f3603f;
            if (i10 == 0) {
                this.f3603f = 1;
                k.b(obj);
                jc.l.d(this.f3604g, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
                return ((p) b0.a(this.f3604g, 2)).invoke(this.f3605h, this);
            }
            if (i10 == 1) {
                this.f3603f = 2;
                k.b(obj);
                return obj;
            }
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ac.d<vb.p> a(l<? super ac.d<? super T>, ? extends Object> lVar, ac.d<? super T> dVar) {
        jc.l.f(lVar, "<this>");
        jc.l.f(dVar, "completion");
        ac.d<?> a10 = h.a(dVar);
        if (lVar instanceof cc.a) {
            return ((cc.a) lVar).create(a10);
        }
        g context = a10.getContext();
        if (context == ac.h.f543f) {
            return new a(a10, lVar);
        }
        return new C0070b(a10, context, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> ac.d<vb.p> b(p<? super R, ? super ac.d<? super T>, ? extends Object> pVar, R r10, ac.d<? super T> dVar) {
        jc.l.f(pVar, "<this>");
        jc.l.f(dVar, "completion");
        ac.d<?> a10 = h.a(dVar);
        if (pVar instanceof cc.a) {
            return ((cc.a) pVar).create(r10, a10);
        }
        g context = a10.getContext();
        if (context == ac.h.f543f) {
            return new c(a10, pVar, r10);
        }
        return new d(a10, context, pVar, r10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ac.d<T> c(ac.d<? super T> dVar) {
        ac.d<T> dVar2;
        jc.l.f(dVar, "<this>");
        cc.d dVar3 = dVar instanceof cc.d ? (cc.d) dVar : null;
        return (dVar3 == null || (dVar2 = (ac.d<T>) dVar3.intercepted()) == null) ? dVar : dVar2;
    }
}
