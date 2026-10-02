package od;

import ac.d;
import cc.f;
import cc.k;
import ic.p;
import jc.l;
import uc.g;
import uc.h;

/* compiled from: InitialValueFlow.kt */
/* loaded from: classes2.dex */
public final class c {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: InitialValueFlow.kt */
    @f(c = "reactivecircus.flowbinding.common.InitialValueFlowKt$asInitialValueFlow$1", f = "InitialValueFlow.kt", l = {17}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a<T> extends k implements p<g<? super T>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11867f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f11868g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ic.a<T> f11869h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ic.a<? extends T> aVar, d<? super a> dVar) {
            super(2, dVar);
            this.f11869h = aVar;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f11869h, dVar);
            aVar.f11868g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(g<? super T> gVar, d<? super vb.p> dVar) {
            return ((a) create(gVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11867f;
            if (i10 == 0) {
                vb.k.b(obj);
                g gVar = (g) this.f11868g;
                T invoke = this.f11869h.invoke();
                this.f11867f = 1;
                if (gVar.a(invoke, this) == d10) {
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

    public static final <T> b<T> a(uc.f<? extends T> fVar, ic.a<? extends T> aVar) {
        l.f(fVar, "<this>");
        l.f(aVar, "initialValue");
        return new b<>(h.x(fVar, new a(aVar, null)));
    }
}
