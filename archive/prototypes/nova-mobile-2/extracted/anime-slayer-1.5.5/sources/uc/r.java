package uc;

import com.google.android.gms.common.api.Api;

/* compiled from: Merge.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class r {

    /* renamed from: a, reason: collision with root package name */
    public static final int f14632a = wc.b0.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Api.BaseClientBuilder.API_PRIORITY_OTHER);

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* compiled from: Merge.kt */
    @cc.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", l = {217, 217}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a<R, T> extends cc.k implements ic.q<g<? super R>, T, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14633f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f14634g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f14635h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ic.p<T, ac.d<? super R>, Object> f14636i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar, ac.d<? super a> dVar) {
            super(3, dVar);
            this.f14636i = pVar;
        }

        @Override // ic.q
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object i(g<? super R> gVar, T t10, ac.d<? super vb.p> dVar) {
            a aVar = new a(this.f14636i, dVar);
            aVar.f14634g = gVar;
            aVar.f14635h = t10;
            return aVar.invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            g gVar;
            Object d10 = bc.c.d();
            int i10 = this.f14633f;
            if (i10 == 0) {
                vb.k.b(obj);
                g gVar2 = (g) this.f14634g;
                Object obj2 = this.f14635h;
                ic.p<T, ac.d<? super R>, Object> pVar = this.f14636i;
                this.f14634g = gVar2;
                this.f14633f = 1;
                obj = pVar.invoke(obj2, this);
                gVar = gVar2;
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                g gVar3 = (g) this.f14634g;
                vb.k.b(obj);
                gVar = gVar3;
            }
            this.f14634g = null;
            this.f14633f = 2;
            if (gVar.a(obj, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    public static final <T, R> f<R> a(f<? extends T> fVar, ic.p<? super T, ? super ac.d<? super R>, ? extends Object> pVar) {
        return h.y(fVar, new a(pVar, null));
    }

    public static final <T, R> f<R> b(f<? extends T> fVar, ic.q<? super g<? super R>, ? super T, ? super ac.d<? super vb.p>, ? extends Object> qVar) {
        return new vc.h(qVar, fVar, null, 0, null, 28, null);
    }
}
