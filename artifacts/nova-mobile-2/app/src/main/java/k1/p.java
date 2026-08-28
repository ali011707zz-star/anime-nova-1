package k1;

import com.twitter.sdk.android.core.TwitterAuthConfig;

/* compiled from: FlowExt.kt */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f9704a = new Object();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: FlowExt.kt */
    @cc.f(c = "androidx.paging.FlowExtKt$simpleRunningReduce$1", f = "FlowExt.kt", l = {102}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a<T> extends cc.k implements ic.p<uc.g<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9705f;

        /* renamed from: g, reason: collision with root package name */
        public int f9706g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ uc.f f9707h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ic.q f9708i;

        /* compiled from: Collect.kt */
        /* renamed from: k1.p$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0196a implements uc.g<T> {

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ uc.g f9710g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ jc.x f9711h;

            @cc.f(c = "androidx.paging.FlowExtKt$simpleRunningReduce$1$invokeSuspend$$inlined$collect$1", f = "FlowExt.kt", l = {137, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE}, m = "emit")
            /* renamed from: k1.p$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0197a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9712f;

                /* renamed from: g, reason: collision with root package name */
                public int f9713g;

                /* renamed from: i, reason: collision with root package name */
                public Object f9715i;

                /* renamed from: j, reason: collision with root package name */
                public Object f9716j;

                public C0197a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9712f = obj;
                    this.f9713g |= Integer.MIN_VALUE;
                    return C0196a.this.a(null, this);
                }
            }

            public C0196a(uc.g gVar, jc.x xVar) {
                this.f9710g = gVar;
                this.f9711h = xVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0084 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0197a c0197a;
                Object d10;
                int i10;
                jc.x xVar;
                C0196a c0196a;
                uc.g gVar;
                T t10;
                if (dVar instanceof C0197a) {
                    c0197a = (C0197a) dVar;
                    int i11 = c0197a.f9713g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0197a.f9713g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0197a.f9712f;
                        d10 = bc.c.d();
                        i10 = c0197a.f9713g;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            xVar = this.f9711h;
                            if (xVar.f9194f != p.f9704a) {
                                ic.q qVar = a.this.f9708i;
                                T t11 = this.f9711h.f9194f;
                                c0197a.f9715i = this;
                                c0197a.f9716j = xVar;
                                c0197a.f9713g = 1;
                                jc.k.c(6);
                                obj = qVar.i(t11, obj, c0197a);
                                jc.k.c(7);
                                if (obj == d10) {
                                    return d10;
                                }
                            }
                            c0196a = this;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                vb.k.b(obj2);
                                return vb.p.f15031a;
                            }
                            jc.x xVar2 = (jc.x) c0197a.f9716j;
                            c0196a = (C0196a) c0197a.f9715i;
                            vb.k.b(obj2);
                            xVar = xVar2;
                            obj = (T) obj2;
                        }
                        xVar.f9194f = (T) obj;
                        gVar = c0196a.f9710g;
                        t10 = c0196a.f9711h.f9194f;
                        c0197a.f9715i = null;
                        c0197a.f9716j = null;
                        c0197a.f9713g = 2;
                        if (gVar.a(t10, c0197a) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                }
                c0197a = new C0197a(dVar);
                Object obj22 = c0197a.f9712f;
                d10 = bc.c.d();
                i10 = c0197a.f9713g;
                if (i10 != 0) {
                }
                xVar.f9194f = (T) obj;
                gVar = c0196a.f9710g;
                t10 = c0196a.f9711h.f9194f;
                c0197a.f9715i = null;
                c0197a.f9716j = null;
                c0197a.f9713g = 2;
                if (gVar.a(t10, c0197a) == d10) {
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(uc.f fVar, ic.q qVar, ac.d dVar) {
            super(2, dVar);
            this.f9707h = fVar;
            this.f9708i = qVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            a aVar = new a(this.f9707h, this.f9708i, dVar);
            aVar.f9705f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9706g;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.g gVar = (uc.g) this.f9705f;
                jc.x xVar = new jc.x();
                xVar.f9194f = (T) p.f9704a;
                uc.f fVar = this.f9707h;
                C0196a c0196a = new C0196a(gVar, xVar);
                this.f9706g = 1;
                if (fVar.b(c0196a, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: FlowExt.kt */
    @cc.f(c = "androidx.paging.FlowExtKt$simpleScan$1", f = "FlowExt.kt", l = {42, 102}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b<R> extends cc.k implements ic.p<uc.g<? super R>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9717f;

        /* renamed from: g, reason: collision with root package name */
        public Object f9718g;

        /* renamed from: h, reason: collision with root package name */
        public int f9719h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ uc.f f9720i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Object f9721j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ ic.q f9722k;

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a<T> implements uc.g<T> {

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ uc.g f9724g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ jc.x f9725h;

            @cc.f(c = "androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1", f = "FlowExt.kt", l = {133, 134}, m = "emit")
            /* renamed from: k1.p$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0198a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f9726f;

                /* renamed from: g, reason: collision with root package name */
                public int f9727g;

                /* renamed from: i, reason: collision with root package name */
                public Object f9729i;

                /* renamed from: j, reason: collision with root package name */
                public Object f9730j;

                public C0198a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f9726f = obj;
                    this.f9727g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(uc.g gVar, jc.x xVar) {
                this.f9724g = gVar;
                this.f9725h = xVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0079 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0198a c0198a;
                Object d10;
                int i10;
                a<T> aVar;
                jc.x xVar;
                uc.g gVar;
                T t10;
                if (dVar instanceof C0198a) {
                    c0198a = (C0198a) dVar;
                    int i11 = c0198a.f9727g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0198a.f9727g = i11 - Integer.MIN_VALUE;
                        T t11 = (T) c0198a.f9726f;
                        d10 = bc.c.d();
                        i10 = c0198a.f9727g;
                        if (i10 != 0) {
                            vb.k.b(t11);
                            jc.x xVar2 = this.f9725h;
                            ic.q qVar = b.this.f9722k;
                            T t12 = xVar2.f9194f;
                            c0198a.f9729i = this;
                            c0198a.f9730j = xVar2;
                            c0198a.f9727g = 1;
                            jc.k.c(6);
                            Object i12 = qVar.i(t12, obj, c0198a);
                            jc.k.c(7);
                            if (i12 == d10) {
                                return d10;
                            }
                            aVar = this;
                            t11 = (T) i12;
                            xVar = xVar2;
                        } else {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                vb.k.b(t11);
                                return vb.p.f15031a;
                            }
                            xVar = (jc.x) c0198a.f9730j;
                            aVar = (a) c0198a.f9729i;
                            vb.k.b(t11);
                        }
                        xVar.f9194f = t11;
                        gVar = aVar.f9724g;
                        t10 = aVar.f9725h.f9194f;
                        c0198a.f9729i = null;
                        c0198a.f9730j = null;
                        c0198a.f9727g = 2;
                        if (gVar.a(t10, c0198a) == d10) {
                            return d10;
                        }
                        return vb.p.f15031a;
                    }
                }
                c0198a = new C0198a(dVar);
                T t112 = (T) c0198a.f9726f;
                d10 = bc.c.d();
                i10 = c0198a.f9727g;
                if (i10 != 0) {
                }
                xVar.f9194f = t112;
                gVar = aVar.f9724g;
                t10 = aVar.f9725h.f9194f;
                c0198a.f9729i = null;
                c0198a.f9730j = null;
                c0198a.f9727g = 2;
                if (gVar.a(t10, c0198a) == d10) {
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(uc.f fVar, Object obj, ic.q qVar, ac.d dVar) {
            super(2, dVar);
            this.f9720i = fVar;
            this.f9721j = obj;
            this.f9722k = qVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            b bVar = new b(this.f9720i, this.f9721j, this.f9722k, dVar);
            bVar.f9717f = obj;
            return bVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((b) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [T, java.lang.Object] */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            jc.x xVar;
            uc.g gVar;
            Object d10 = bc.c.d();
            int i10 = this.f9719h;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.g gVar2 = (uc.g) this.f9717f;
                xVar = new jc.x();
                var r42 = this.f9721j;
                xVar.f9194f = r42;
                this.f9717f = gVar2;
                this.f9718g = xVar;
                this.f9719h = 1;
                if (gVar2.a(r42, this) == d10) {
                    return d10;
                }
                gVar = gVar2;
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                xVar = (jc.x) this.f9718g;
                gVar = (uc.g) this.f9717f;
                vb.k.b(obj);
            }
            uc.f fVar = this.f9720i;
            a aVar = new a(gVar, xVar);
            this.f9717f = null;
            this.f9718g = null;
            this.f9719h = 2;
            if (fVar.b(aVar, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: FlowExt.kt */
    @cc.f(c = "androidx.paging.FlowExtKt$simpleTransformLatest$1", f = "FlowExt.kt", l = {76}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c<R> extends cc.k implements ic.p<a1<R>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9731f;

        /* renamed from: g, reason: collision with root package name */
        public int f9732g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ uc.f f9733h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ic.q f9734i;

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* compiled from: FlowExt.kt */
        @cc.f(c = "androidx.paging.FlowExtKt$simpleTransformLatest$1$1", f = "FlowExt.kt", l = {77}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a<T> extends cc.k implements ic.p<T, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f9735f;

            /* renamed from: g, reason: collision with root package name */
            public int f9736g;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ f f9738i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(f fVar, ac.d dVar) {
                super(2, dVar);
                this.f9738i = fVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                jc.l.f(dVar, "completion");
                a aVar = new a(this.f9738i, dVar);
                aVar.f9735f = obj;
                return aVar;
            }

            @Override // ic.p
            public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
                return ((a) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f9736g;
                if (i10 == 0) {
                    vb.k.b(obj);
                    Object obj2 = this.f9735f;
                    ic.q qVar = c.this.f9734i;
                    f fVar = this.f9738i;
                    this.f9736g = 1;
                    if (qVar.i(fVar, obj2, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(uc.f fVar, ic.q qVar, ac.d dVar) {
            super(2, dVar);
            this.f9733h = fVar;
            this.f9734i = qVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            c cVar = new c(this.f9733h, this.f9734i, dVar);
            cVar.f9731f = obj;
            return cVar;
        }

        @Override // ic.p
        public final Object invoke(Object obj, ac.d<? super vb.p> dVar) {
            return ((c) create(obj, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f9732g;
            if (i10 == 0) {
                vb.k.b(obj);
                a1 a1Var = (a1) this.f9731f;
                uc.f fVar = this.f9733h;
                a aVar = new a(new f(a1Var), null);
                this.f9732g = 1;
                if (uc.h.g(fVar, aVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public static final <T> uc.f<T> b(uc.f<? extends T> fVar, ic.q<? super T, ? super T, ? super ac.d<? super T>, ? extends Object> qVar) {
        jc.l.f(fVar, "$this$simpleRunningReduce");
        jc.l.f(qVar, "operation");
        return uc.h.q(new a(fVar, qVar, null));
    }

    public static final <T, R> uc.f<R> c(uc.f<? extends T> fVar, R r10, ic.q<? super R, ? super T, ? super ac.d<? super R>, ? extends Object> qVar) {
        jc.l.f(fVar, "$this$simpleScan");
        jc.l.f(qVar, "operation");
        return uc.h.q(new b(fVar, r10, qVar, null));
    }

    public static final <T, R> uc.f<R> d(uc.f<? extends T> fVar, ic.q<? super uc.g<? super R>, ? super T, ? super ac.d<? super vb.p>, ? extends Object> qVar) {
        jc.l.f(fVar, "$this$simpleTransformLatest");
        jc.l.f(qVar, "transform");
        return z0.a(new c(fVar, qVar, null));
    }
}
