package wc;

import ac.g;
import rc.a3;

/* compiled from: ThreadContext.kt */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public static final a0 f15479a = new a0("NO_THREAD_ELEMENTS");

    /* renamed from: b, reason: collision with root package name */
    public static final ic.p<Object, g.b, Object> f15480b = a.f15483f;

    /* renamed from: c, reason: collision with root package name */
    public static final ic.p<a3<?>, g.b, a3<?>> f15481c = b.f15484f;

    /* renamed from: d, reason: collision with root package name */
    public static final ic.p<h0, g.b, h0> f15482d = c.f15485f;

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.p<Object, g.b, Object> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f15483f = new a();

        public a() {
            super(2);
        }

        @Override // ic.p
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Object obj, g.b bVar) {
            if (!(bVar instanceof a3)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int intValue = num == null ? 1 : num.intValue();
            return intValue == 0 ? bVar : Integer.valueOf(intValue + 1);
        }
    }

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.p<a3<?>, g.b, a3<?>> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f15484f = new b();

        public b() {
            super(2);
        }

        @Override // ic.p
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a3<?> invoke(a3<?> a3Var, g.b bVar) {
            if (a3Var != null) {
                return a3Var;
            }
            if (bVar instanceof a3) {
                return (a3) bVar;
            }
            return null;
        }
    }

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    public static final class c extends jc.m implements ic.p<h0, g.b, h0> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f15485f = new c();

        public c() {
            super(2);
        }

        @Override // ic.p
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h0 invoke(h0 h0Var, g.b bVar) {
            if (bVar instanceof a3) {
                a3<?> a3Var = (a3) bVar;
                h0Var.a(a3Var, a3Var.h(h0Var.f15495a));
            }
            return h0Var;
        }
    }

    public static final void a(ac.g gVar, Object obj) {
        if (obj == f15479a) {
            return;
        }
        if (obj instanceof h0) {
            ((h0) obj).b(gVar);
            return;
        }
        Object fold = gVar.fold(null, f15481c);
        if (fold != null) {
            ((a3) fold).x(gVar, obj);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
    }

    public static final Object b(ac.g gVar) {
        Object fold = gVar.fold(0, f15480b);
        jc.l.c(fold);
        return fold;
    }

    public static final Object c(ac.g gVar, Object obj) {
        if (obj == null) {
            obj = b(gVar);
        }
        if (obj == 0) {
            return f15479a;
        }
        if (obj instanceof Integer) {
            return gVar.fold(new h0(gVar, ((Number) obj).intValue()), f15482d);
        }
        return ((a3) obj).h(gVar);
    }
}
