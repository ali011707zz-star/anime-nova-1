package uc;

/* compiled from: Distinct.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class n {

    /* renamed from: a, reason: collision with root package name */
    public static final ic.l<Object, Object> f14589a = b.f14592f;

    /* renamed from: b, reason: collision with root package name */
    public static final ic.p<Object, Object, Boolean> f14590b = a.f14591f;

    /* compiled from: Distinct.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.p<Object, Object, Boolean> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f14591f = new a();

        public a() {
            super(2);
        }

        @Override // ic.p
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Object obj, Object obj2) {
            return Boolean.valueOf(jc.l.a(obj, obj2));
        }
    }

    /* compiled from: Distinct.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.l<Object, Object> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f14592f = new b();

        public b() {
            super(1);
        }

        @Override // ic.l
        public final Object invoke(Object obj) {
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> f<T> a(f<? extends T> fVar) {
        return fVar instanceof a0 ? fVar : c(fVar, f14589a, f14590b);
    }

    public static final <T, K> f<T> b(f<? extends T> fVar, ic.l<? super T, ? extends K> lVar) {
        return c(fVar, lVar, f14590b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> f<T> c(f<? extends T> fVar, ic.l<? super T, ? extends Object> lVar, ic.p<Object, Object, Boolean> pVar) {
        if (fVar instanceof e) {
            e eVar = (e) fVar;
            if (eVar.f14538g == lVar && eVar.f14539h == pVar) {
                return fVar;
            }
        }
        return new e(fVar, lVar, pVar);
    }
}
