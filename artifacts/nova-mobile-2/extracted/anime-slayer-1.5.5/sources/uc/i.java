package uc;

/* compiled from: Builders.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class i {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object[] f14554f;

        @cc.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1", f = "Builders.kt", l = {114}, m = "collect")
        /* renamed from: uc.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0373a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f14555f;

            /* renamed from: g, reason: collision with root package name */
            public int f14556g;

            /* renamed from: i, reason: collision with root package name */
            public Object f14558i;

            /* renamed from: j, reason: collision with root package name */
            public Object f14559j;

            /* renamed from: k, reason: collision with root package name */
            public int f14560k;

            /* renamed from: l, reason: collision with root package name */
            public int f14561l;

            public C0373a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f14555f = obj;
                this.f14556g |= Integer.MIN_VALUE;
                return a.this.b(null, this);
            }
        }

        public a(Object[] objArr) {
            this.f14554f = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // uc.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            C0373a c0373a;
            int i10;
            int i11;
            g gVar2;
            int i12;
            Object[] objArr;
            if (dVar instanceof C0373a) {
                c0373a = (C0373a) dVar;
                int i13 = c0373a.f14556g;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    c0373a.f14556g = i13 - Integer.MIN_VALUE;
                    Object obj = c0373a.f14555f;
                    Object d10 = bc.c.d();
                    i10 = c0373a.f14556g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Object[] objArr2 = this.f14554f;
                        i11 = 0;
                        int length = objArr2.length;
                        gVar2 = gVar;
                        i12 = length;
                        objArr = objArr2;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i12 = c0373a.f14561l;
                        i11 = c0373a.f14560k;
                        objArr = (Object[]) c0373a.f14559j;
                        g gVar3 = (g) c0373a.f14558i;
                        vb.k.b(obj);
                        gVar2 = gVar3;
                    }
                    while (i11 < i12) {
                        Object obj2 = objArr[i11];
                        i11++;
                        c0373a.f14558i = gVar2;
                        c0373a.f14559j = objArr;
                        c0373a.f14560k = i11;
                        c0373a.f14561l = i12;
                        c0373a.f14556g = 1;
                        if (gVar2.a(obj2, c0373a) == d10) {
                            return d10;
                        }
                    }
                    return vb.p.f15031a;
                }
            }
            c0373a = new C0373a(dVar);
            Object obj3 = c0373a.f14555f;
            Object d102 = bc.c.d();
            i10 = c0373a.f14556g;
            if (i10 != 0) {
            }
            while (i11 < i12) {
            }
            return vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f14562f;

        public b(Object obj) {
            this.f14562f = obj;
        }

        @Override // uc.f
        public Object b(g<? super T> gVar, ac.d<? super vb.p> dVar) {
            Object a10 = gVar.a((Object) this.f14562f, dVar);
            return a10 == bc.c.d() ? a10 : vb.p.f15031a;
        }
    }

    public static final <T> f<T> a(ic.p<? super tc.r<? super T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        return new uc.b(pVar, null, 0, null, 14, null);
    }

    public static final <T> f<T> b(ic.p<? super g<? super T>, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        return new v(pVar);
    }

    public static final <T> f<T> c(T t10) {
        return new b(t10);
    }

    public static final <T> f<T> d(T... tArr) {
        return new a(tArr);
    }
}
