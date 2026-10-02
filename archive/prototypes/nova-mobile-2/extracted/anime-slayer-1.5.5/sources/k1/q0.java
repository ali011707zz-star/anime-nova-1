package k1;

import k1.f0;

/* compiled from: PagingData.kt */
/* loaded from: classes.dex */
public final class q0<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final g1 f9747c;

    /* renamed from: d, reason: collision with root package name */
    public static final q0<Object> f9748d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f9749e = new b(null);

    /* renamed from: a, reason: collision with root package name */
    public final uc.f<f0<T>> f9750a;

    /* renamed from: b, reason: collision with root package name */
    public final g1 f9751b;

    /* compiled from: PagingData.kt */
    /* loaded from: classes.dex */
    public static final class a implements g1 {
        @Override // k1.g1
        public void a() {
        }

        @Override // k1.g1
        public void b(h1 h1Var) {
            jc.l.f(h1Var, "viewportHint");
        }

        @Override // k1.g1
        public void c() {
        }
    }

    /* compiled from: PagingData.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }
    }

    static {
        a aVar = new a();
        f9747c = aVar;
        f9748d = new q0<>(uc.h.r(f0.b.f9398g.d()), aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q0(uc.f<? extends f0<T>> fVar, g1 g1Var) {
        jc.l.f(fVar, "flow");
        jc.l.f(g1Var, "receiver");
        this.f9750a = fVar;
        this.f9751b = g1Var;
    }

    public final uc.f<f0<T>> a() {
        return this.f9750a;
    }

    public final g1 b() {
        return this.f9751b;
    }
}
