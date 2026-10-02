package nd;

import ac.d;
import androidx.appcompat.widget.SearchView;
import cc.f;
import cc.k;
import com.google.android.gms.actions.SearchIntents;
import ic.p;
import jc.l;
import jc.m;
import nd.a;
import tc.r;
import uc.h;

/* compiled from: SearchViewQueryTextEventFlow.kt */
/* loaded from: classes2.dex */
public final class c {

    /* compiled from: SearchViewQueryTextEventFlow.kt */
    @f(c = "reactivecircus.flowbinding.appcompat.SearchViewQueryTextEventFlowKt$queryTextEvents$1", f = "SearchViewQueryTextEventFlow.kt", l = {60}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super nd.a>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11408f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f11409g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SearchView f11410h;

        /* compiled from: SearchViewQueryTextEventFlow.kt */
        /* renamed from: nd.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0281a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ SearchView f11411f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0281a(SearchView searchView) {
                super(0);
                this.f11411f = searchView;
            }

            public final void a() {
                this.f11411f.setOnQueryTextListener(null);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: SearchViewQueryTextEventFlow.kt */
        /* loaded from: classes2.dex */
        public static final class b implements SearchView.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ r<nd.a> f11412a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SearchView f11413b;

            /* JADX WARN: Multi-variable type inference failed */
            public b(r<? super nd.a> rVar, SearchView searchView) {
                this.f11412a = rVar;
                this.f11413b = searchView;
            }

            @Override // androidx.appcompat.widget.SearchView.l
            public boolean a(String str) {
                l.f(str, "newText");
                this.f11412a.m(new a.C0277a(this.f11413b, str));
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.l
            public boolean b(String str) {
                l.f(str, SearchIntents.EXTRA_QUERY);
                this.f11412a.m(new a.b(this.f11413b, str));
                return true;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SearchView searchView, d<? super a> dVar) {
            super(2, dVar);
            this.f11410h = searchView;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f11410h, dVar);
            aVar.f11409g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super nd.a> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11408f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f11409g;
                od.a.a();
                this.f11410h.setOnQueryTextListener(new b(rVar, this.f11410h));
                C0281a c0281a = new C0281a(this.f11410h);
                this.f11408f = 1;
                if (tc.p.a(rVar, c0281a, this) == d10) {
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

    /* compiled from: SearchViewQueryTextEventFlow.kt */
    /* loaded from: classes2.dex */
    public static final class b extends m implements ic.a<nd.a> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SearchView f11414f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SearchView searchView) {
            super(0);
            this.f11414f = searchView;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final nd.a invoke() {
            SearchView searchView = this.f11414f;
            CharSequence query = searchView.getQuery();
            l.e(query, SearchIntents.EXTRA_QUERY);
            return new a.C0277a(searchView, query);
        }
    }

    public static final od.b<nd.a> a(SearchView searchView) {
        l.f(searchView, "<this>");
        return od.c.a(h.h(h.c(new a(searchView, null))), new b(searchView));
    }
}
