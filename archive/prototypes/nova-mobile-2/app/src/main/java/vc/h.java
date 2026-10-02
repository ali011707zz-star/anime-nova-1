package vc;

import jc.x;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import rc.c2;
import rc.q0;
import rc.s0;
import rc.u0;

/* compiled from: Merge.kt */
/* loaded from: classes2.dex */
public final class h<T, R> extends f<T, R> {

    /* renamed from: j, reason: collision with root package name */
    public final ic.q<uc.g<? super R>, T, ac.d<? super vb.p>, Object> f15053j;

    /* compiled from: Merge.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {101}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15054f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15055g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ h<T, R> f15056h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ uc.g<R> f15057i;

        /* compiled from: Merge.kt */
        @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {34}, m = "invokeSuspend")
        /* renamed from: vc.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0393a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f15058f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ h<T, R> f15059g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ uc.g<R> f15060h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ T f15061i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0393a(h<T, R> hVar, uc.g<? super R> gVar, T t10, ac.d<? super C0393a> dVar) {
                super(2, dVar);
                this.f15059g = hVar;
                this.f15060h = gVar;
                this.f15061i = t10;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0393a(this.f15059g, this.f15060h, this.f15061i, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0393a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f15058f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    ic.q qVar = this.f15059g.f15053j;
                    uc.g<R> gVar = this.f15060h;
                    T t10 = this.f15061i;
                    this.f15058f = 1;
                    if (qVar.i(gVar, t10, this) == d10) {
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

        /* compiled from: Collect.kt */
        /* loaded from: classes2.dex */
        public static final class b implements uc.g<T> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ x f15062f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ q0 f15063g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ h f15064h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ uc.g f15065i;

            @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1", f = "Merge.kt", l = {137}, m = "emit")
            /* renamed from: vc.h$a$b$a, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0394a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f15066f;

                /* renamed from: g, reason: collision with root package name */
                public int f15067g;

                /* renamed from: i, reason: collision with root package name */
                public Object f15069i;

                /* renamed from: j, reason: collision with root package name */
                public Object f15070j;

                /* renamed from: k, reason: collision with root package name */
                public Object f15071k;

                public C0394a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f15066f = obj;
                    this.f15067g |= Integer.MIN_VALUE;
                    return b.this.a(null, this);
                }
            }

            public b(x xVar, q0 q0Var, h hVar, uc.g gVar) {
                this.f15062f = xVar;
                this.f15063g = q0Var;
                this.f15064h = hVar;
                this.f15065i = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(T t10, ac.d<? super vb.p> dVar) {
                C0394a c0394a;
                int i10;
                b bVar;
                c2 d10;
                if (dVar instanceof C0394a) {
                    c0394a = (C0394a) dVar;
                    int i11 = c0394a.f15067g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0394a.f15067g = i11 - Integer.MIN_VALUE;
                        Object obj = c0394a.f15066f;
                        Object d11 = bc.c.d();
                        i10 = c0394a.f15067g;
                        if (i10 != 0) {
                            vb.k.b(obj);
                            c2 c2Var = (c2) this.f15062f.f9194f;
                            if (c2Var != null) {
                                c2Var.d(new ChildCancelledException());
                                c0394a.f15069i = this;
                                c0394a.f15070j = t10;
                                c0394a.f15071k = c2Var;
                                c0394a.f15067g = 1;
                                if (c2Var.U(c0394a) == d11) {
                                    return d11;
                                }
                            }
                            bVar = this;
                        } else if (i10 == 1) {
                            t10 = (T) c0394a.f15070j;
                            bVar = (b) c0394a.f15069i;
                            vb.k.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        x xVar = bVar.f15062f;
                        d10 = rc.k.d(bVar.f15063g, null, s0.UNDISPATCHED, new C0393a(bVar.f15064h, bVar.f15065i, t10, null), 1, null);
                        xVar.f9194f = (T) d10;
                        return vb.p.f15031a;
                    }
                }
                c0394a = new C0394a(dVar);
                Object obj2 = c0394a.f15066f;
                Object d112 = bc.c.d();
                i10 = c0394a.f15067g;
                if (i10 != 0) {
                }
                x xVar2 = bVar.f15062f;
                d10 = rc.k.d(bVar.f15063g, null, s0.UNDISPATCHED, new C0393a(bVar.f15064h, bVar.f15065i, t10, null), 1, null);
                xVar2.f9194f = (T) d10;
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(h<T, R> hVar, uc.g<? super R> gVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f15056h = hVar;
            this.f15057i = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(this.f15056h, this.f15057i, dVar);
            aVar.f15055g = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15054f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var = (q0) this.f15055g;
                x xVar = new x();
                h<T, R> hVar = this.f15056h;
                uc.f<S> fVar = hVar.f15049i;
                b bVar = new b(xVar, q0Var, hVar, this.f15057i);
                this.f15054f = 1;
                if (fVar.b(bVar, this) == d10) {
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

    public /* synthetic */ h(ic.q qVar, uc.f fVar, ac.g gVar, int i10, tc.e eVar, int i11, jc.g gVar2) {
        this(qVar, fVar, (i11 & 4) != 0 ? ac.h.f543f : gVar, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? tc.e.SUSPEND : eVar);
    }

    @Override // vc.d
    public d<R> i(ac.g gVar, int i10, tc.e eVar) {
        return new h(this.f15053j, this.f15049i, gVar, i10, eVar);
    }

    @Override // vc.f
    public Object p(uc.g<? super R> gVar, ac.d<? super vb.p> dVar) {
        if (u0.a() && !(gVar instanceof s)) {
            throw new AssertionError();
        }
        Object a10 = k.a(new a(this, gVar, null), dVar);
        return a10 == bc.c.d() ? a10 : vb.p.f15031a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(ic.q<? super uc.g<? super R>, ? super T, ? super ac.d<? super vb.p>, ? extends Object> qVar, uc.f<? extends T> fVar, ac.g gVar, int i10, tc.e eVar) {
        super(fVar, gVar, i10, eVar);
        this.f15053j = qVar;
    }
}
