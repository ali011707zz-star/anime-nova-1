package x6;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import j4.y1;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.o;
import jc.y;
import k1.u;
import rc.q0;
import vb.p;
import x6.g;

/* compiled from: SeasonFragmentPage.kt */
/* loaded from: classes.dex */
public final class k extends Fragment implements g.b {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f16073n = {y.e(new o(k.class, "binding", "getBinding()Lcom/anslayer/databinding/SeasonFragmentPageBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f16074f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f16075g = c0.a(this, y.b(m.class), new h(new g(this)), new i());

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f16076h = vb.f.a(e.f16092f);

    /* renamed from: i, reason: collision with root package name */
    public final int f16077i = R.string.empty_response;

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f16078j = vb.f.a(f.f16093f);

    /* renamed from: k, reason: collision with root package name */
    public ja.n f16079k;

    /* renamed from: l, reason: collision with root package name */
    public x6.g f16080l;

    /* renamed from: m, reason: collision with root package name */
    public RecyclerView f16081m;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<ja.n> {
    }

    /* compiled from: SeasonFragmentPage.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<k1.g, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f16083g;

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ k f16084f;

            public a(k kVar) {
                this.f16084f = kVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x6.g gVar = this.f16084f.f16080l;
                if (gVar == null) {
                    return;
                }
                gVar.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(1);
            this.f16083g = view;
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = k.this.H().f8843g;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView M = k.this.M();
            if (M != null) {
                M.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            }
            k.this.H().f8844h.setRefreshing(false);
            ErrorView errorView = k.this.H().f8840d;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            k.this.H().f8840d.getBinding().f8511b.setOnClickListener(new a(k.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = k.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    k.this.H().f8840d.b();
                } else {
                    k.this.H().f8840d.c();
                }
            }
            if (k.this.N().c() && (gVar.e() instanceof u.c)) {
                x6.g gVar2 = k.this.f16080l;
                if (gVar2 != null && gVar2.getItemCount() == 0) {
                    ErrorView errorView2 = k.this.H().f8840d;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = k.this.H().f8840d;
                    String string = this.f16083g.getResources().getString(k.this.I());
                    jc.l.e(string, "view.resources.getString(emptyMessageText)");
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

    /* compiled from: SeasonFragmentPage.kt */
    @cc.f(c = "com.anslayer.ui.season.SeasonFragmentPage$requestNetwork$1", f = "SeasonFragmentPage.kt", l = {148}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16085f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ja.n f16087h;

        /* compiled from: SeasonFragmentPage.kt */
        @cc.f(c = "com.anslayer.ui.season.SeasonFragmentPage$requestNetwork$1$1", f = "SeasonFragmentPage.kt", l = {149}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.p>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f16088f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f16089g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ k f16090h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(k kVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f16090h = kVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f16090h, dVar);
                aVar.f16089g = obj;
                return aVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<p4.p> q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f16088f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f16089g;
                    x6.g gVar = this.f16090h.f16080l;
                    if (gVar != null) {
                        this.f16088f = 1;
                        if (gVar.k(q0Var, this) == d10) {
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
        public c(ja.n nVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f16087h = nVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f16087h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16085f;
            if (i10 == 0) {
                vb.k.b(obj);
                k.this.N().d(true);
                uc.f<k1.q0<p4.p>> b10 = k.this.N().b(this.f16087h);
                a aVar = new a(k.this, null);
                this.f16085f = 1;
                if (uc.h.g(b10, aVar, this) == d10) {
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

    /* compiled from: SeasonFragmentPage.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<p> {
        public d() {
            super(0);
        }

        public final void a() {
            x6.g gVar = k.this.f16080l;
            if (gVar == null) {
                return;
            }
            gVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f16092f = new e();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f16093f = new f();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f16094f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Fragment fragment) {
            super(0);
            this.f16094f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f16094f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f16095f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ic.a aVar) {
            super(0);
            this.f16095f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f16095f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: SeasonFragmentPage.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<l0.b> {

        /* compiled from: SeasonFragmentPage.kt */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16097b;

            public a(k kVar) {
                this.f16097b = kVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                Context context = this.f16097b.getContext();
                return new m(context == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class));
            }
        }

        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(k.this);
        }
    }

    public static final void O(k kVar) {
        jc.l.f(kVar, "this$0");
        x6.g gVar = kVar.f16080l;
        if (gVar == null) {
            return;
        }
        gVar.h();
    }

    public final y1 H() {
        return (y1) this.f16074f.f(this, f16073n[0]);
    }

    public final int I() {
        return this.f16077i;
    }

    public final ja.f J() {
        return (ja.f) this.f16076h.getValue();
    }

    public final ja.n K() {
        ja.n nVar = this.f16079k;
        if (nVar != null) {
            return nVar;
        }
        jc.l.v("jsonObject");
        return null;
    }

    public final f4.d L() {
        return (f4.d) this.f16078j.getValue();
    }

    public final RecyclerView M() {
        return this.f16081m;
    }

    public final m N() {
        return (m) this.f16075g.getValue();
    }

    public final void P(ja.n nVar) {
        q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new c(nVar, null), 3, null);
    }

    public final void Q(y1 y1Var) {
        jc.l.f(y1Var, "<set-?>");
        this.f16074f.a(this, f16073n[0], y1Var);
    }

    public final void R(ja.n nVar) {
        jc.l.f(nVar, "<set-?>");
        this.f16079k = nVar;
    }

    public final void S(View view) {
        int i10;
        SupportRecyclerView supportRecyclerView;
        RecyclerView.p layoutManager;
        View childAt = H().f8838b.getChildAt(1);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            RecyclerView.p layoutManager2 = recyclerView.getLayoutManager();
            if (layoutManager2 != null) {
                i10 = ((StaggeredGridLayoutManager) layoutManager2).G(null)[0];
                recyclerView.setAdapter(null);
                H().f8838b.removeView(childAt);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
            }
        } else {
            i10 = -1;
        }
        if (L().H()) {
            Context context = view.getContext();
            jc.l.e(context, "view.context");
            supportRecyclerView = new SupportRecyclerView(context);
            int integer = supportRecyclerView.getResources().getInteger(R.integer.single_list_size);
            supportRecyclerView.setId(R.id.recycler);
            supportRecyclerView.setLayoutManager(new StaggeredGridLayoutManager(integer, 1));
            supportRecyclerView.setLayoutParams(new RecyclerView.q(-1, -1));
        } else {
            Context context2 = view.getContext();
            jc.l.e(context2, "view.context");
            supportRecyclerView = new SupportRecyclerView(context2);
            int g10 = k7.b.g(4);
            supportRecyclerView.setPadding(g10, g10, g10, g10);
            supportRecyclerView.setClipToPadding(false);
            int integer2 = supportRecyclerView.getResources().getInteger(R.integer.grid_list_x3);
            supportRecyclerView.setId(R.id.supportRecyclerView);
            supportRecyclerView.setLayoutManager(new StaggeredGridLayoutManager(integer2, 1));
            supportRecyclerView.setLayoutParams(new RecyclerView.q(-1, -1));
        }
        supportRecyclerView.setHasFixedSize(true);
        x6.g gVar = this.f16080l;
        supportRecyclerView.setAdapter(gVar != null ? gVar.l(new g6.u(new d())) : null);
        H().f8838b.addView(supportRecyclerView, 1);
        if (i10 != -1 && (layoutManager = supportRecyclerView.getLayoutManager()) != null) {
            layoutManager.scrollToPosition(i10);
        }
        this.f16081m = supportRecyclerView;
    }

    @Override // x6.g.b
    public void a(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(SeriesActivity.f4161l.a(activity, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        y1 c10 = y1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        Q(c10);
        return H().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f16081m = null;
        this.f16080l = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (N().c()) {
            return;
        }
        P(K());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x007c  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        Type b10;
        String string;
        x6.g gVar;
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        x6.g gVar2 = new x6.g(this);
        this.f16080l = gVar2;
        gVar2.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        S(view);
        String string2 = requireArguments().getString("request_param");
        jc.l.c(string2);
        jc.l.e(string2, "requireArguments().getString(\"request_param\")!!");
        ja.f J = J();
        Type type = new a().getType();
        jc.l.b(type, "object : TypeToken<T>() {} .type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                b10 = parameterizedType.getRawType();
                jc.l.b(b10, "type.rawType");
                Object l10 = J.l(string2, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                R((ja.n) l10);
                boolean z10 = requireArguments().getBoolean("from_activity");
                string = requireArguments().getString("current_season");
                if (string != null) {
                    if (qc.u.C(string, "شتاء", false, 2, null)) {
                        H().f8842f.setAnimation(R.raw.winter);
                    } else if (qc.u.C(string, "ربيع", false, 2, null)) {
                        H().f8842f.setAnimation(R.raw.spring);
                    } else if (qc.u.C(string, "صيف", false, 2, null)) {
                        H().f8842f.setAnimation(R.raw.sunny);
                    } else if (qc.u.C(string, "خريف", false, 2, null)) {
                        H().f8842f.setAnimation(R.raw.fall);
                    }
                }
                H().f8839c.setText(string);
                LinearLayout linearLayout = H().f8841e;
                jc.l.e(linearLayout, "binding.headerSeason");
                linearLayout.setVisibility(z10 ^ true ? 0 : 8);
                if (N().c()) {
                    P(K());
                }
                H().f8844h.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: x6.j
                    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                    public final void b() {
                        k.O(k.this);
                    }
                });
                gVar = this.f16080l;
                if (gVar != null) {
                    return;
                }
                gVar.f(new b(view));
                return;
            }
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = J.l(string2, b10);
        jc.l.b(l102, "fromJson(json, typeToken<T>())");
        R((ja.n) l102);
        boolean z102 = requireArguments().getBoolean("from_activity");
        string = requireArguments().getString("current_season");
        if (string != null) {
        }
        H().f8839c.setText(string);
        LinearLayout linearLayout2 = H().f8841e;
        jc.l.e(linearLayout2, "binding.headerSeason");
        linearLayout2.setVisibility(z102 ^ true ? 0 : 8);
        if (N().c()) {
        }
        H().f8844h.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: x6.j
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                k.O(k.this);
            }
        });
        gVar = this.f16080l;
        if (gVar != null) {
        }
    }
}
