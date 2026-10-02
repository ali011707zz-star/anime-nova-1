package vc;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import rc.q0;
import rc.r0;
import rc.s0;
import rc.u0;
import rc.v0;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public abstract class d<T> implements l<T> {

    /* renamed from: f, reason: collision with root package name */
    public final ac.g f15039f;

    /* renamed from: g, reason: collision with root package name */
    public final int f15040g;

    /* renamed from: h, reason: collision with root package name */
    public final tc.e f15041h;

    /* compiled from: ChannelFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15042f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15043g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ uc.g<T> f15044h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ d<T> f15045i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(uc.g<? super T> gVar, d<T> dVar, ac.d<? super a> dVar2) {
            super(2, dVar2);
            this.f15044h = gVar;
            this.f15045i = dVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(this.f15044h, this.f15045i, dVar);
            aVar.f15043g = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15042f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var = (q0) this.f15043g;
                uc.g<T> gVar = this.f15044h;
                tc.t<T> l10 = this.f15045i.l(q0Var);
                this.f15042f = 1;
                if (uc.h.n(gVar, l10, this) == d10) {
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

    /* compiled from: ChannelFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {60}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class b extends cc.k implements ic.p<tc.r<? super T>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15046f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15047g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d<T> f15048h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d<T> dVar, ac.d<? super b> dVar2) {
            super(2, dVar2);
            this.f15048h = dVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            b bVar = new b(this.f15048h, dVar);
            bVar.f15047g = obj;
            return bVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(tc.r<? super T> rVar, ac.d<? super vb.p> dVar) {
            return ((b) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15046f;
            if (i10 == 0) {
                vb.k.b(obj);
                tc.r<? super T> rVar = (tc.r) this.f15047g;
                d<T> dVar = this.f15048h;
                this.f15046f = 1;
                if (dVar.h(rVar, this) == d10) {
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

    public d(ac.g gVar, int i10, tc.e eVar) {
        this.f15039f = gVar;
        this.f15040g = i10;
        this.f15041h = eVar;
        if (u0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
    }

    public static /* synthetic */ Object g(d dVar, uc.g gVar, ac.d dVar2) {
        Object e10 = r0.e(new a(gVar, dVar, null), dVar2);
        return e10 == bc.c.d() ? e10 : vb.p.f15031a;
    }

    @Override // uc.f
    public Object b(uc.g<? super T> gVar, ac.d<? super vb.p> dVar) {
        return g(this, gVar, dVar);
    }

    @Override // vc.l
    public uc.f<T> c(ac.g gVar, int i10, tc.e eVar) {
        if (u0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        ac.g plus = gVar.plus(this.f15039f);
        if (eVar == tc.e.SUSPEND) {
            int i11 = this.f15040g;
            if (i11 != -3) {
                if (i10 != -3) {
                    if (i11 != -2) {
                        if (i10 != -2) {
                            if (u0.a()) {
                                if (!(this.f15040g >= 0)) {
                                    throw new AssertionError();
                                }
                            }
                            if (u0.a()) {
                                if (!(i10 >= 0)) {
                                    throw new AssertionError();
                                }
                            }
                            i11 = this.f15040g + i10;
                            if (i11 < 0) {
                                i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                            }
                        }
                    }
                }
                i10 = i11;
            }
            eVar = this.f15041h;
        }
        return (jc.l.a(plus, this.f15039f) && i10 == this.f15040g && eVar == this.f15041h) ? this : i(plus, i10, eVar);
    }

    public String f() {
        return null;
    }

    public abstract Object h(tc.r<? super T> rVar, ac.d<? super vb.p> dVar);

    public abstract d<T> i(ac.g gVar, int i10, tc.e eVar);

    public final ic.p<tc.r<? super T>, ac.d<? super vb.p>, Object> j() {
        return new b(this, null);
    }

    public final int k() {
        int i10 = this.f15040g;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    public tc.t<T> l(q0 q0Var) {
        return tc.p.f(q0Var, this.f15039f, k(), this.f15041h, s0.ATOMIC, null, j(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String f10 = f();
        if (f10 != null) {
            arrayList.add(f10);
        }
        ac.g gVar = this.f15039f;
        if (gVar != ac.h.f543f) {
            arrayList.add(jc.l.m("context=", gVar));
        }
        int i10 = this.f15040g;
        if (i10 != -3) {
            arrayList.add(jc.l.m("capacity=", Integer.valueOf(i10)));
        }
        tc.e eVar = this.f15041h;
        if (eVar != tc.e.SUSPEND) {
            arrayList.add(jc.l.m("onBufferOverflow=", eVar));
        }
        return v0.a(this) + '[' + wb.t.G(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
