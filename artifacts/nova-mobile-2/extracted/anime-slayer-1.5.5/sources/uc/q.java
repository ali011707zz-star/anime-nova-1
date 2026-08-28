package uc;

/* compiled from: Limit.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class q {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14627f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f14628g;

        public a(f fVar, int i10) {
            this.f14627f = fVar;
            this.f14628g = i10;
        }

        @Override // uc.f
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            Object b10 = this.f14627f.b(new b(new jc.v(), this.f14628g, gVar), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> implements g<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ jc.v f14629f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f14630g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ g f14631h;

        public b(jc.v vVar, int i10, g gVar) {
            this.f14629f = vVar;
            this.f14630g = i10;
            this.f14631h = gVar;
        }

        @Override // uc.g
        public Object a(T t10, ac.d<? super vb.p> dVar) {
            jc.v vVar = this.f14629f;
            int i10 = vVar.f9192f;
            if (i10 >= this.f14630g) {
                Object a10 = this.f14631h.a(t10, dVar);
                if (a10 == bc.c.d()) {
                    return a10;
                }
            } else {
                vVar.f9192f = i10 + 1;
            }
            return vb.p.f15031a;
        }
    }

    public static final <T> f<T> a(f<? extends T> fVar, int i10) {
        if (i10 >= 0) {
            return new a(fVar, i10);
        }
        throw new IllegalArgumentException(jc.l.m("Drop count should be non-negative, but had ", Integer.valueOf(i10)).toString());
    }
}
