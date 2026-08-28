package qd;

import ac.d;
import androidx.recyclerview.widget.RecyclerView;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import jc.l;
import jc.m;
import tc.r;
import uc.h;

/* compiled from: RecyclerViewScrollEventFlow.kt */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: RecyclerViewScrollEventFlow.kt */
    @f(c = "reactivecircus.flowbinding.recyclerview.RecyclerViewScrollEventFlowKt$scrollEvents$1", f = "RecyclerViewScrollEventFlow.kt", l = {46}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super qd.a>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12713f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f12714g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ RecyclerView f12715h;

        /* compiled from: RecyclerViewScrollEventFlow.kt */
        /* renamed from: qd.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0308a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ RecyclerView f12716f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ C0309b f12717g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0308a(RecyclerView recyclerView, C0309b c0309b) {
                super(0);
                this.f12716f = recyclerView;
                this.f12717g = c0309b;
            }

            public final void a() {
                this.f12716f.removeOnScrollListener(this.f12717g);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: RecyclerViewScrollEventFlow.kt */
        /* renamed from: qd.b$a$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0309b extends RecyclerView.u {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ r<qd.a> f12718a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ RecyclerView f12719b;

            /* JADX WARN: Multi-variable type inference failed */
            public C0309b(r<? super qd.a> rVar, RecyclerView recyclerView) {
                this.f12718a = rVar;
                this.f12719b = recyclerView;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.u
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                l.f(recyclerView, "recyclerView");
                this.f12718a.m(new qd.a(this.f12719b, i10, i11));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(RecyclerView recyclerView, d<? super a> dVar) {
            super(2, dVar);
            this.f12715h = recyclerView;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f12715h, dVar);
            aVar.f12714g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super qd.a> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = c.d();
            int i10 = this.f12713f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f12714g;
                od.a.a();
                C0309b c0309b = new C0309b(rVar, this.f12715h);
                this.f12715h.addOnScrollListener(c0309b);
                C0308a c0308a = new C0308a(this.f12715h, c0309b);
                this.f12713f = 1;
                if (tc.p.a(rVar, c0308a, this) == d10) {
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

    public static final uc.f<qd.a> a(RecyclerView recyclerView) {
        l.f(recyclerView, "<this>");
        return h.h(h.c(new a(recyclerView, null)));
    }
}
