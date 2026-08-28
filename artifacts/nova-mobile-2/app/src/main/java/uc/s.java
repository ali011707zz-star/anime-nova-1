package uc;

/* compiled from: Transform.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class s {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14637f;

        /* compiled from: Collect.kt */
        /* renamed from: uc.s$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0377a implements g<T> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ g f14638f;

            @cc.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {136}, m = "emit")
            /* renamed from: uc.s$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0378a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f14639f;

                /* renamed from: g, reason: collision with root package name */
                public int f14640g;

                public C0378a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f14639f = obj;
                    this.f14640g |= Integer.MIN_VALUE;
                    return C0377a.this.a(null, this);
                }
            }

            public C0377a(g gVar) {
                this.f14638f = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0378a c0378a;
                int i10;
                if (dVar instanceof C0378a) {
                    c0378a = (C0378a) dVar;
                    int i11 = c0378a.f14640g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0378a.f14640g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0378a.f14639f;
                        Object d10 = bc.c.d();
                        i10 = c0378a.f14640g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            g gVar = this.f14638f;
                            if (obj != null) {
                                c0378a.f14640g = 1;
                                if (gVar.a(obj, c0378a) == d10) {
                                    return d10;
                                }
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            vb.k.b(obj2);
                        }
                        return vb.p.f15031a;
                    }
                }
                c0378a = new C0378a(dVar);
                Object obj22 = c0378a.f14639f;
                Object d102 = bc.c.d();
                i10 = c0378a.f14640g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public a(f fVar) {
            this.f14637f = fVar;
        }

        @Override // uc.f
        public Object b(g gVar, ac.d dVar) {
            Object b10 = this.f14637f.b(new C0377a(gVar), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> implements f<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14642f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ic.p f14643g;

        /* compiled from: Collect.kt */
        /* loaded from: classes2.dex */
        public static final class a implements g<T> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ g f14644f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ ic.p f14645g;

            @cc.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {136, 137}, m = "emit")
            /* renamed from: uc.s$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0379a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f14646f;

                /* renamed from: g, reason: collision with root package name */
                public int f14647g;

                /* renamed from: i, reason: collision with root package name */
                public Object f14649i;

                /* renamed from: j, reason: collision with root package name */
                public Object f14650j;

                public C0379a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f14646f = obj;
                    this.f14647g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(g gVar, ic.p pVar) {
                this.f14644f = gVar;
                this.f14645g = pVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0069 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0379a c0379a;
                Object d10;
                int i10;
                Object obj2;
                g gVar;
                if (dVar instanceof C0379a) {
                    c0379a = (C0379a) dVar;
                    int i11 = c0379a.f14647g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0379a.f14647g = i11 - Integer.MIN_VALUE;
                        Object obj3 = c0379a.f14646f;
                        d10 = bc.c.d();
                        i10 = c0379a.f14647g;
                        if (i10 != 0) {
                            vb.k.b(obj3);
                            g gVar2 = this.f14644f;
                            ic.p pVar = this.f14645g;
                            c0379a.f14649i = obj;
                            c0379a.f14650j = gVar2;
                            c0379a.f14647g = 1;
                            jc.k.c(6);
                            Object invoke = pVar.invoke(obj, c0379a);
                            jc.k.c(7);
                            if (invoke == d10) {
                                return d10;
                            }
                            obj2 = obj;
                            gVar = gVar2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                vb.k.b(obj3);
                                return vb.p.f15031a;
                            }
                            g gVar3 = (g) c0379a.f14650j;
                            obj2 = c0379a.f14649i;
                            vb.k.b(obj3);
                            gVar = gVar3;
                        }
                        c0379a.f14649i = null;
                        c0379a.f14650j = null;
                        c0379a.f14647g = 2;
                        if (gVar.a(obj2, c0379a) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                }
                c0379a = new C0379a(dVar);
                Object obj32 = c0379a.f14646f;
                d10 = bc.c.d();
                i10 = c0379a.f14647g;
                if (i10 != 0) {
                }
                c0379a.f14649i = null;
                c0379a.f14650j = null;
                c0379a.f14647g = 2;
                if (gVar.a(obj2, c0379a) == d10) {
                }
                return vb.p.f15031a;
            }
        }

        public b(f fVar, ic.p pVar) {
            this.f14642f = fVar;
            this.f14643g = pVar;
        }

        @Override // uc.f
        public Object b(g gVar, ac.d dVar) {
            Object b10 = this.f14642f.b(new a(gVar, this.f14643g), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class c<T> implements f<wb.y<? extends T>> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f14651f;

        public c(f fVar) {
            this.f14651f = fVar;
        }

        @Override // uc.f
        public Object b(g<? super wb.y<? extends T>> gVar, ac.d<? super vb.p> dVar) {
            Object b10 = this.f14651f.b(new d(gVar, new jc.v()), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    /* loaded from: classes2.dex */
    public static final class d<T> implements g<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ g f14652f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ jc.v f14653g;

        public d(g gVar, jc.v vVar) {
            this.f14652f = gVar;
            this.f14653g = vVar;
        }

        @Override // uc.g
        public Object a(T t10, ac.d<? super vb.p> dVar) {
            g gVar = this.f14652f;
            jc.v vVar = this.f14653g;
            int i10 = vVar.f9192f;
            vVar.f9192f = i10 + 1;
            if (i10 < 0) {
                throw new ArithmeticException("Index overflow has happened");
            }
            Object a10 = gVar.a(new wb.y(i10, t10), dVar);
            return a10 == bc.c.d() ? a10 : vb.p.f15031a;
        }
    }

    public static final <T> f<T> a(f<? extends T> fVar) {
        return new a(fVar);
    }

    public static final <T> f<T> b(f<? extends T> fVar, ic.p<? super T, ? super ac.d<? super vb.p>, ? extends Object> pVar) {
        return new b(fVar, pVar);
    }

    public static final <T> f<wb.y<T>> c(f<? extends T> fVar) {
        return new c(fVar);
    }
}
