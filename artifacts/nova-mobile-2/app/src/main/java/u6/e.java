package u6;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.RecommendationEndpoint;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import ic.r;
import io.wax911.support.SupportExtentionKt;
import j4.q1;
import ja.n;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.l;
import jc.m;
import jc.o;
import jc.y;
import k1.u;
import rc.q0;
import vb.p;

/* compiled from: RecommendationFragmentNew.kt */
/* loaded from: classes.dex */
public class e extends Fragment {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f14436l = {y.e(new o(e.class, "binding", "getBinding()Lcom/anslayer/databinding/RecommendationFragmentBinding;", 0))};

    /* renamed from: i, reason: collision with root package name */
    public u6.c f14440i;

    /* renamed from: k, reason: collision with root package name */
    public n f14442k;

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f14437f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f14438g = c0.a(this, y.b(i.class), new g(new f(this)), new h());

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f14439h = vb.f.a(C0365e.f14453f);

    /* renamed from: j, reason: collision with root package name */
    public final int f14441j = R.string.empty_response;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<n> {
    }

    /* compiled from: RecommendationFragmentNew.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements r<Long, String, Boolean, Boolean, p> {
        public b() {
            super(4);
        }

        public final void a(long j10, String str, boolean z10, boolean z11) {
            l.f(str, "animeTitle");
            androidx.fragment.app.e activity = e.this.getActivity();
            if (activity == null) {
                return;
            }
            e.this.startActivity(SeriesActivity.f4161l.a(activity, j10, str, z10, z11));
        }

        @Override // ic.r
        public /* bridge */ /* synthetic */ p v(Long l10, String str, Boolean bool, Boolean bool2) {
            a(l10.longValue(), str, bool.booleanValue(), bool2.booleanValue());
            return p.f15031a;
        }
    }

    /* compiled from: RecommendationFragmentNew.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<k1.g, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f14445g;

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ e f14446f;

            public a(e eVar) {
                this.f14446f = eVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                u6.c cVar = this.f14446f.f14440i;
                if (cVar == null) {
                    return;
                }
                cVar.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(1);
            this.f14445g = view;
        }

        public final void a(k1.g gVar) {
            l.f(gVar, "loadState");
            ProgressBar progressBar = e.this.H().f8655c;
            l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = e.this.H().f8656d;
            l.e(recyclerView, "binding.recycler");
            recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            e.this.H().f8657e.setRefreshing(false);
            ErrorView errorView = e.this.H().f8654b;
            l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            e.this.H().f8654b.getBinding().f8511b.setOnClickListener(new a(e.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = e.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    e.this.H().f8654b.b();
                } else {
                    e.this.H().f8654b.c();
                }
            }
            if (e.this.L().a() && (gVar.e() instanceof u.c)) {
                u6.c cVar = e.this.f14440i;
                if (cVar != null && cVar.getItemCount() == 0) {
                    ErrorView errorView2 = e.this.H().f8654b;
                    l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = e.this.H().f8654b;
                    String string = this.f14445g.getResources().getString(e.this.I());
                    l.e(string, "view.resources.getString(emptyMessageText)");
                    errorView3.a(string);
                }
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(k1.g gVar) {
            a(gVar);
            return p.f15031a;
        }
    }

    /* compiled from: RecommendationFragmentNew.kt */
    @cc.f(c = "com.anslayer.ui.recommend.user.RecommendationFragmentNew$requestNetwork$1", f = "RecommendationFragmentNew.kt", l = {111}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14447f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ n f14449h;

        /* compiled from: RecommendationFragmentNew.kt */
        @cc.f(c = "com.anslayer.ui.recommend.user.RecommendationFragmentNew$requestNetwork$1$1", f = "RecommendationFragmentNew.kt", l = {112}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<k1.q0<u4.a>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f14450f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f14451g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ e f14452h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f14452h = eVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f14452h, dVar);
                aVar.f14451g = obj;
                return aVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<u4.a> q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f14450f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f14451g;
                    u6.c cVar = this.f14452h.f14440i;
                    if (cVar != null) {
                        this.f14450f = 1;
                        if (cVar.k(q0Var, this) == d10) {
                            return d10;
                        }
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(n nVar, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f14449h = nVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f14449h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14447f;
            if (i10 == 0) {
                vb.k.b(obj);
                e.this.L().d(true);
                uc.f<k1.q0<u4.a>> c10 = e.this.L().c(this.f14449h);
                a aVar = new a(e.this, null);
                this.f14447f = 1;
                if (uc.h.g(c10, aVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* renamed from: u6.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0365e extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0365e f14453f = new C0365e();

        /* compiled from: TypeInfo.kt */
        /* renamed from: u6.e$e$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public C0365e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f14454f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment) {
            super(0);
            this.f14454f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f14454f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f14455f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ic.a aVar) {
            super(0);
            this.f14455f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f14455f.invoke()).getViewModelStore();
            l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: RecommendationFragmentNew.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<l0.b> {

        /* compiled from: RecommendationFragmentNew.kt */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e f14457b;

            public a(e eVar) {
                this.f14457b = eVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                l.f(cls, "modelClass");
                Context context = this.f14457b.getContext();
                return new i(context == null ? null : (RecommendationEndpoint) z3.b.f17284d.getInstance(context).b(RecommendationEndpoint.class));
            }
        }

        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(e.this);
        }
    }

    public static final void M(e eVar) {
        l.f(eVar, "this$0");
        u6.c cVar = eVar.f14440i;
        if (cVar == null) {
            return;
        }
        cVar.h();
    }

    public final q1 H() {
        return (q1) this.f14437f.f(this, f14436l[0]);
    }

    public final int I() {
        return this.f14441j;
    }

    public final ja.f J() {
        return (ja.f) this.f14439h.getValue();
    }

    public final n K() {
        n nVar = this.f14442k;
        if (nVar != null) {
            return nVar;
        }
        l.v("jsonObject");
        return null;
    }

    public final i L() {
        return (i) this.f14438g.getValue();
    }

    public final void N(n nVar) {
        q viewLifecycleOwner = getViewLifecycleOwner();
        l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(androidx.lifecycle.r.a(viewLifecycleOwner), null, null, new d(nVar, null), 3, null);
    }

    public final void O(q1 q1Var) {
        l.f(q1Var, "<set-?>");
        this.f14437f.a(this, f14436l[0], q1Var);
    }

    public final void P(n nVar) {
        l.f(nVar, "<set-?>");
        this.f14442k = nVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        q1 c10 = q1.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        O(c10);
        return H().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f14440i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (L().a()) {
            return;
        }
        N(K());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0097  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        Type b10;
        u6.c cVar;
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        String string = requireArguments().getString("request_param");
        l.c(string);
        l.e(string, "requireArguments().getString(\"request_param\")!!");
        ja.f J = J();
        Type type = new a().getType();
        l.b(type, "object : TypeToken<T>() {} .type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                b10 = parameterizedType.getRawType();
                l.b(b10, "type.rawType");
                Object l10 = J.l(string, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                P((n) l10);
                u6.c cVar2 = new u6.c(new b());
                this.f14440i = cVar2;
                cVar2.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
                H().f8656d.setLayoutManager(new LinearLayoutManager(view.getContext()));
                H().f8656d.setHasFixedSize(true);
                H().f8656d.setAdapter(this.f14440i);
                if (L().a()) {
                    N(K());
                }
                H().f8657e.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: u6.d
                    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                    public final void b() {
                        e.M(e.this);
                    }
                });
                cVar = this.f14440i;
                if (cVar != null) {
                    return;
                }
                cVar.f(new c(view));
                return;
            }
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = J.l(string, b10);
        l.b(l102, "fromJson(json, typeToken<T>())");
        P((n) l102);
        u6.c cVar22 = new u6.c(new b());
        this.f14440i = cVar22;
        cVar22.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        H().f8656d.setLayoutManager(new LinearLayoutManager(view.getContext()));
        H().f8656d.setHasFixedSize(true);
        H().f8656d.setAdapter(this.f14440i);
        if (L().a()) {
        }
        H().f8657e.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: u6.d
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                e.M(e.this);
            }
        });
        cVar = this.f14440i;
        if (cVar != null) {
        }
    }
}
