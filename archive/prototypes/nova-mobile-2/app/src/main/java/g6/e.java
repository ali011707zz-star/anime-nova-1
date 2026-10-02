package g6;

import android.content.Context;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.servers.ServerActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import g6.c;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ActionModeListener;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.y;
import k1.u;
import rc.q0;

/* compiled from: BrowseFragment.kt */
/* loaded from: classes.dex */
public class e extends Fragment implements c.b, ActionModeListener {

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f6944o = {y.e(new jc.o(e.class, "binding", "getBinding()Lcom/anslayer/databinding/BrowseFragmentBinding;", 0))};

    /* renamed from: j, reason: collision with root package name */
    public g6.c f6949j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f6950k;

    /* renamed from: n, reason: collision with root package name */
    public ja.n f6953n;

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f6945f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f6946g = c0.a(this, y.b(q.class), new h(new g(this)), new j());

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f6947h = vb.f.a(C0132e.f6965f);

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f6948i = vb.f.a(f.f6966f);

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f6951l = vb.f.b(vb.g.NONE, new i());

    /* renamed from: m, reason: collision with root package name */
    public final int f6952m = R.string.empty_response;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<ja.n> {
    }

    /* compiled from: BrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<k1.g, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f6955g;

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ e f6956f;

            public a(e eVar) {
                this.f6956f = eVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g6.c G = this.f6956f.G();
                if (G == null) {
                    return;
                }
                G.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(1);
            this.f6955g = view;
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = e.this.H().f8182o;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView M = e.this.M();
            if (M != null) {
                M.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            }
            if (gVar.e() instanceof u.c) {
                e.this.P(true);
            }
            e.this.H().f8185r.setRefreshing(false);
            ErrorView errorView = e.this.H().f8179l;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            e.this.H().f8179l.getBinding().f8511b.setOnClickListener(new a(e.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = e.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    e.this.H().f8179l.b();
                } else {
                    e.this.H().f8179l.c();
                }
                e.this.P(false);
            }
            if (e.this.O().d() && (gVar.e() instanceof u.c)) {
                g6.c G = e.this.G();
                if (G != null && G.getItemCount() == 0) {
                    e.this.P(true);
                    ErrorView errorView2 = e.this.H().f8179l;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = e.this.H().f8179l;
                    String string = this.f6955g.getResources().getString(e.this.I());
                    jc.l.e(string, "view.resources.getString(emptyMessageText)");
                    errorView3.a(string);
                }
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(k1.g gVar) {
            a(gVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: BrowseFragment.kt */
    @cc.f(c = "com.anslayer.ui.paging.BrowseFragment$requestNetwork$1", f = "BrowseFragment.kt", l = {151}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f6957f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ja.n f6959h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f6960i;

        /* compiled from: BrowseFragment.kt */
        @cc.f(c = "com.anslayer.ui.paging.BrowseFragment$requestNetwork$1$1", f = "BrowseFragment.kt", l = {152}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.p>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f6961f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f6962g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ e f6963h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f6963h = eVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f6963h, dVar);
                aVar.f6962g = obj;
                return aVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<p4.p> q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f6961f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f6962g;
                    g6.c G = this.f6963h.G();
                    if (G != null) {
                        this.f6961f = 1;
                        if (G.k(q0Var, this) == d10) {
                            return d10;
                        }
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ja.n nVar, boolean z10, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f6959h = nVar;
            this.f6960i = z10;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f6959h, this.f6960i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f6957f;
            if (i10 == 0) {
                vb.k.b(obj);
                e.this.O().e(true);
                uc.f<k1.q0<p4.p>> b10 = e.this.O().b(this.f6959h, this.f6960i);
                a aVar = new a(e.this, null);
                this.f6957f = 1;
                if (uc.h.g(b10, aVar, this) == d10) {
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

    /* compiled from: BrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<vb.p> {
        public d() {
            super(0);
        }

        public final void a() {
            g6.c G = e.this.G();
            if (G == null) {
                return;
            }
            G.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* renamed from: g6.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0132e extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0132e f6965f = new C0132e();

        /* compiled from: TypeInfo.kt */
        /* renamed from: g6.e$e$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public C0132e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f6966f = new f();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public f() {
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
    public static final class g extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f6967f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Fragment fragment) {
            super(0);
            this.f6967f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f6967f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f6968f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ic.a aVar) {
            super(0);
            this.f6968f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f6968f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: BrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<d7.a> {
        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d7.a invoke() {
            return new d7.a(e.this, false, 2, null);
        }
    }

    /* compiled from: BrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<l0.b> {

        /* compiled from: BrowseFragment.kt */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e f6971b;

            public a(e eVar) {
                this.f6971b = eVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                Context context = this.f6971b.getContext();
                return new q(context == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class));
            }
        }

        public j() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(e.this);
        }
    }

    public static final void Q(e eVar) {
        jc.l.f(eVar, "this$0");
        g6.c cVar = eVar.f6949j;
        if (cVar == null) {
            return;
        }
        cVar.h();
    }

    public static /* synthetic */ void S(e eVar, ja.n nVar, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requestNetwork");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        eVar.R(nVar, z10);
    }

    public final void F(boolean z10) {
        N().i(z10);
    }

    public final g6.c G() {
        return this.f6949j;
    }

    public final j4.c0 H() {
        return (j4.c0) this.f6945f.f(this, f6944o[0]);
    }

    public int I() {
        return this.f6952m;
    }

    public final ja.f J() {
        return (ja.f) this.f6948i.getValue();
    }

    public final ja.n K() {
        ja.n nVar = this.f6953n;
        if (nVar != null) {
            return nVar;
        }
        jc.l.v("jsonObject");
        return null;
    }

    public final f4.d L() {
        return (f4.d) this.f6947h.getValue();
    }

    public final RecyclerView M() {
        return this.f6950k;
    }

    public final d7.a N() {
        return (d7.a) this.f6951l.getValue();
    }

    public q O() {
        return (q) this.f6946g.getValue();
    }

    public void P(boolean z10) {
    }

    public final void R(ja.n nVar, boolean z10) {
        jc.l.f(nVar, "jsonObject");
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(androidx.lifecycle.r.a(viewLifecycleOwner), null, null, new c(nVar, z10, null), 3, null);
    }

    public final void T(j4.c0 c0Var) {
        jc.l.f(c0Var, "<set-?>");
        this.f6945f.a(this, f6944o[0], c0Var);
    }

    public final void U(ja.n nVar) {
        jc.l.f(nVar, "<set-?>");
        this.f6953n = nVar;
    }

    public void V(SupportRecyclerView supportRecyclerView) {
        jc.l.f(supportRecyclerView, "<this>");
        int g10 = k7.b.g(4);
        supportRecyclerView.setPadding(g10, g10, g10, g10);
    }

    public final void W(View view) {
        int i10;
        SupportRecyclerView supportRecyclerView;
        RecyclerView.p layoutManager;
        View childAt = H().f8170c.getChildAt(1);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            RecyclerView.p layoutManager2 = recyclerView.getLayoutManager();
            if (layoutManager2 != null) {
                i10 = ((StaggeredGridLayoutManager) layoutManager2).G(null)[0];
                recyclerView.setAdapter(null);
                H().f8170c.removeView(childAt);
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
            V(supportRecyclerView);
            supportRecyclerView.setClipToPadding(false);
            int integer2 = supportRecyclerView.getResources().getInteger(R.integer.grid_list_x3);
            supportRecyclerView.setId(R.id.supportRecyclerView);
            supportRecyclerView.setLayoutManager(new StaggeredGridLayoutManager(integer2, 1));
            supportRecyclerView.setLayoutParams(new RecyclerView.q(-1, -1));
        }
        supportRecyclerView.setHasFixedSize(true);
        g6.c cVar = this.f6949j;
        supportRecyclerView.setAdapter(cVar != null ? cVar.l(new u(new d())) : null);
        H().f8170c.addView(supportRecyclerView, 1);
        if (i10 != -1 && (layoutManager = supportRecyclerView.getLayoutManager()) != null) {
            layoutManager.scrollToPosition(i10);
        }
        this.f6950k = supportRecyclerView;
    }

    public final void X() {
        View view = getView();
        if (view == null) {
            return;
        }
        O().f();
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        W(view);
    }

    @Override // g6.c.b
    public void a(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(SeriesActivity.f4161l.a(activity, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
    }

    @Override // g6.c.b
    public void h(p4.p pVar) {
        jc.l.f(pVar, "anime");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        long m10 = pVar.m();
        String valueOf = String.valueOf(pVar.D());
        String n10 = pVar.n();
        String E = pVar.E();
        if (E == null) {
            return;
        }
        if (SupportExtentionKt.isConnectedToNetwork(activity)) {
            startActivity(ServerActivity.f4340o.a(activity, m10, valueOf, n10, E));
        } else {
            k7.b.r(activity, "تأكد من اتصالك بالانترنت", 0, 2, null);
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        g6.c cVar;
        jc.l.f(actionMode, "mode");
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() != R.id.action_select_all || (cVar = this.f6949j) == null) {
            return true;
        }
        cVar.w();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menu, "menu");
        actionMode.getMenuInflater().inflate(R.menu.action_menu, menu);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setIcon(L().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        j4.c0 c10 = j4.c0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        T(c10);
        return H().b();
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        jc.l.f(actionMode, "mode");
        N().a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f6950k = null;
        this.f6949j = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_display_mode) {
            X();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menu, "menu");
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (O().d()) {
            return;
        }
        S(this, K(), false, 2, null);
    }

    @Override // io.wax911.support.base.event.ActionModeListener
    public void onSelectionChanged(ActionMode actionMode, int i10) {
        if (actionMode == null) {
            return;
        }
        actionMode.setTitle(String.valueOf(i10));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        Type b10;
        g6.c cVar;
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        g6.c cVar2 = new g6.c(this);
        this.f6949j = cVar2;
        cVar2.x(N());
        g6.c cVar3 = this.f6949j;
        if (cVar3 != null) {
            cVar3.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        }
        W(view);
        String string = requireArguments().getString("request_param");
        jc.l.c(string);
        jc.l.e(string, "requireArguments().getString(\"request_param\")!!");
        ja.f J = J();
        Type type = new a().getType();
        jc.l.b(type, "object : TypeToken<T>() {} .type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                b10 = parameterizedType.getRawType();
                jc.l.b(b10, "type.rawType");
                Object l10 = J.l(string, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                U((ja.n) l10);
                if (O().d()) {
                    S(this, K(), false, 2, null);
                }
                H().f8185r.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: g6.d
                    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                    public final void b() {
                        e.Q(e.this);
                    }
                });
                cVar = this.f6949j;
                if (cVar != null) {
                    return;
                }
                cVar.f(new b(view));
                return;
            }
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = J.l(string, b10);
        jc.l.b(l102, "fromJson(json, typeToken<T>())");
        U((ja.n) l102);
        if (O().d()) {
        }
        H().f8185r.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: g6.d
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                e.Q(e.this);
            }
        });
        cVar = this.f6949j;
        if (cVar != null) {
        }
    }
}
