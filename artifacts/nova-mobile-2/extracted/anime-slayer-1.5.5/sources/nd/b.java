package nd;

import ac.d;
import androidx.appcompat.widget.SearchView;
import cc.f;
import cc.k;
import com.google.android.gms.actions.SearchIntents;
import ic.p;
import jc.l;
import jc.m;
import tc.r;
import uc.h;

/* compiled from: SearchViewQueryTextChangeFlow.kt */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: SearchViewQueryTextChangeFlow.kt */
    @f(c = "reactivecircus.flowbinding.appcompat.SearchViewQueryTextChangeFlowKt$queryTextChanges$1", f = "SearchViewQueryTextChangeFlow.kt", l = {43}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super String>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11402f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f11403g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SearchView f11404h;

        /* compiled from: SearchViewQueryTextChangeFlow.kt */
        /* renamed from: nd.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0278a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ SearchView f11405f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0278a(SearchView searchView) {
                super(0);
                this.f11405f = searchView;
            }

            public final void a() {
                this.f11405f.setOnQueryTextListener(null);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: SearchViewQueryTextChangeFlow.kt */
        /* renamed from: nd.b$a$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0279b implements SearchView.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ r<String> f11406a;

            /* JADX WARN: Multi-variable type inference failed */
            public C0279b(r<? super String> rVar) {
                this.f11406a = rVar;
            }

            @Override // androidx.appcompat.widget.SearchView.l
            public boolean a(String str) {
                l.f(str, "newText");
                this.f11406a.m(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.l
            public boolean b(String str) {
                l.f(str, SearchIntents.EXTRA_QUERY);
                return false;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SearchView searchView, d<? super a> dVar) {
            super(2, dVar);
            this.f11404h = searchView;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f11404h, dVar);
            aVar.f11403g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super String> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11402f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f11403g;
                od.a.a();
                this.f11404h.setOnQueryTextListener(new C0279b(rVar));
                C0278a c0278a = new C0278a(this.f11404h);
                this.f11402f = 1;
                if (tc.p.a(rVar, c0278a, this) == d10) {
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

    /* compiled from: SearchViewQueryTextChangeFlow.kt */
    /* renamed from: nd.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0280b extends m implements ic.a<CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SearchView f11407f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0280b(SearchView searchView) {
            super(0);
            this.f11407f = searchView;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke() {
            CharSequence query = this.f11407f.getQuery();
            l.e(query, SearchIntents.EXTRA_QUERY);
            return query;
        }
    }

    public static final od.b<CharSequence> a(SearchView searchView) {
        l.f(searchView, "<this>");
        return od.c.a(h.h(h.c(new a(searchView, null))), new C0280b(searchView));
    }
}
