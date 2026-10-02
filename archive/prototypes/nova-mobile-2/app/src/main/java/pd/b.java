package pd;

import ac.d;
import androidx.core.widget.NestedScrollView;
import cc.f;
import cc.k;
import ic.p;
import jc.l;
import jc.m;
import pd.b;
import tc.r;
import uc.h;

/* compiled from: NestedScrollViewScrollChangeEventFlow.kt */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: NestedScrollViewScrollChangeEventFlow.kt */
    @f(c = "reactivecircus.flowbinding.core.NestedScrollViewScrollChangeEventFlowKt$scrollChangeEvents$1", f = "NestedScrollViewScrollChangeEventFlow.kt", l = {47}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super c>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12232f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f12233g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ NestedScrollView f12234h;

        /* compiled from: NestedScrollViewScrollChangeEventFlow.kt */
        /* renamed from: pd.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0300a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ NestedScrollView f12235f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0300a(NestedScrollView nestedScrollView) {
                super(0);
                this.f12235f = nestedScrollView;
            }

            public final void a() {
                this.f12235f.setOnScrollChangeListener((NestedScrollView.b) null);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(NestedScrollView nestedScrollView, d<? super a> dVar) {
            super(2, dVar);
            this.f12234h = nestedScrollView;
        }

        public static final void h(r rVar, NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
            l.e(nestedScrollView, "v");
            rVar.m(new c(nestedScrollView, i10, i11, i12, i13));
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f12234h, dVar);
            aVar.f12233g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super c> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f12232f;
            if (i10 == 0) {
                vb.k.b(obj);
                final r rVar = (r) this.f12233g;
                od.a.a();
                this.f12234h.setOnScrollChangeListener(new NestedScrollView.b() { // from class: pd.a
                    @Override // androidx.core.widget.NestedScrollView.b
                    public final void a(NestedScrollView nestedScrollView, int i11, int i12, int i13, int i14) {
                        b.a.h(r.this, nestedScrollView, i11, i12, i13, i14);
                    }
                });
                C0300a c0300a = new C0300a(this.f12234h);
                this.f12232f = 1;
                if (tc.p.a(rVar, c0300a, this) == d10) {
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

    public static final uc.f<c> a(NestedScrollView nestedScrollView) {
        l.f(nestedScrollView, "<this>");
        return h.h(h.c(new a(nestedScrollView, null)));
    }
}
