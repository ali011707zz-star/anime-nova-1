package k6;

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
import androidx.lifecycle.r;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.ui.anime.characters.details.CharacterDetailsActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.b0;
import ja.n;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.m;
import jc.o;
import jc.y;
import k1.u;
import k6.a;
import rc.q0;
import vb.p;

/* compiled from: BrowseCharacterFragment.kt */
/* loaded from: classes.dex */
public final class b extends Fragment implements a.b {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f10012k = {y.e(new o(b.class, "binding", "getBinding()Lcom/anslayer/databinding/BrowseCharacterFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f10013f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f10014g = c0.a(this, y.b(k6.f.class), new g(new f(this)), new h());

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f10015h = vb.f.a(e.f10028f);

    /* renamed from: i, reason: collision with root package name */
    public k6.a f10016i;

    /* renamed from: j, reason: collision with root package name */
    public n f10017j;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<n> {
    }

    /* compiled from: BrowseCharacterFragment.kt */
    /* renamed from: k6.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0213b extends m implements ic.a<p> {
        public C0213b() {
            super(0);
        }

        public final void a() {
            k6.a aVar = b.this.f10016i;
            if (aVar == null) {
                return;
            }
            aVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: BrowseCharacterFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<k1.g, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f10020g;

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ b f10021f;

            public a(b bVar) {
                this.f10021f = bVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k6.a aVar = this.f10021f.f10016i;
                if (aVar == null) {
                    return;
                }
                aVar.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(1);
            this.f10020g = view;
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = b.this.H().f8154c;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = b.this.H().f8155d;
            jc.l.e(recyclerView, "binding.recycler");
            recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            ErrorView errorView = b.this.H().f8153b;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            b.this.H().f8153b.getBinding().f8511b.setOnClickListener(new a(b.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = b.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    b.this.H().f8153b.b();
                } else {
                    b.this.H().f8153b.c();
                }
            }
            if (b.this.K().c() && (gVar.e() instanceof u.c)) {
                k6.a aVar = b.this.f10016i;
                if (aVar != null && aVar.getItemCount() == 0) {
                    ErrorView errorView2 = b.this.H().f8153b;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = b.this.H().f8153b;
                    String string = this.f10020g.getResources().getString(R.string.empty_response);
                    jc.l.e(string, "view.resources.getString(R.string.empty_response)");
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

    /* compiled from: BrowseCharacterFragment.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.character.BrowseCharacterFragment$requestNetwork$1", f = "BrowseCharacterFragment.kt", l = {110}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10022f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ n f10024h;

        /* compiled from: BrowseCharacterFragment.kt */
        @cc.f(c = "com.anslayer.ui.profile.people.character.BrowseCharacterFragment$requestNetwork$1$1", f = "BrowseCharacterFragment.kt", l = {111}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<k1.q0<p4.e>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10025f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f10026g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ b f10027h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f10027h = bVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f10027h, dVar);
                aVar.f10026g = obj;
                return aVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<p4.e> q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10025f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f10026g;
                    k6.a aVar = this.f10027h.f10016i;
                    if (aVar != null) {
                        this.f10025f = 1;
                        if (aVar.k(q0Var, this) == d10) {
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
            this.f10024h = nVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f10024h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10022f;
            if (i10 == 0) {
                vb.k.b(obj);
                b.this.K().d(true);
                uc.f<k1.q0<p4.e>> b10 = b.this.K().b(this.f10024h);
                a aVar = new a(b.this, null);
                this.f10022f = 1;
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

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f10028f = new e();

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

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f10029f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment) {
            super(0);
            this.f10029f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f10029f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f10030f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ic.a aVar) {
            super(0);
            this.f10030f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f10030f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: BrowseCharacterFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<l0.b> {

        /* compiled from: BrowseCharacterFragment.kt */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b f10032b;

            public a(b bVar) {
                this.f10032b = bVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                Context context = this.f10032b.getContext();
                return new k6.f(context == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class));
            }
        }

        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(b.this);
        }
    }

    public final b0 H() {
        return (b0) this.f10013f.f(this, f10012k[0]);
    }

    public final ja.f I() {
        return (ja.f) this.f10015h.getValue();
    }

    public final n J() {
        n nVar = this.f10017j;
        if (nVar != null) {
            return nVar;
        }
        jc.l.v("jsonObject");
        return null;
    }

    public final k6.f K() {
        return (k6.f) this.f10014g.getValue();
    }

    public final void L(n nVar) {
        q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new d(nVar, null), 3, null);
    }

    public final void M(b0 b0Var) {
        this.f10013f.a(this, f10012k[0], b0Var);
    }

    public final void N(n nVar) {
        jc.l.f(nVar, "<set-?>");
        this.f10017j = nVar;
    }

    @Override // k6.a.b
    public void j(p4.e eVar) {
        jc.l.f(eVar, "character");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(CharacterDetailsActivity.f4162l.a(activity, eVar.b(), eVar.d()));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        b0 c10 = b0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        M(c10);
        return H().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f10016i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (K().c()) {
            return;
        }
        L(J());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        Type b10;
        k6.a aVar;
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        k6.a aVar2 = new k6.a(this);
        this.f10016i = aVar2;
        aVar2.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        H().f8155d.setLayoutManager(new StaggeredGridLayoutManager(getResources().getInteger(R.integer.grid_list_x3), 1));
        H().f8155d.setHasFixedSize(true);
        RecyclerView recyclerView = H().f8155d;
        k6.a aVar3 = this.f10016i;
        recyclerView.setAdapter(aVar3 == null ? null : aVar3.l(new g6.u(new C0213b())));
        String string = requireArguments().getString("request_param");
        jc.l.c(string);
        jc.l.e(string, "requireArguments().getString(\"request_param\")!!");
        ja.f I = I();
        Type type = new a().getType();
        jc.l.b(type, "object : TypeToken<T>() {} .type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (com.github.salomonbrys.kotson.c.a(parameterizedType)) {
                b10 = parameterizedType.getRawType();
                jc.l.b(b10, "type.rawType");
                Object l10 = I.l(string, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                N((n) l10);
                if (K().c()) {
                    L(J());
                }
                aVar = this.f10016i;
                if (aVar != null) {
                    return;
                }
                aVar.f(new c(view));
                return;
            }
        }
        b10 = com.github.salomonbrys.kotson.c.b(type);
        Object l102 = I.l(string, b10);
        jc.l.b(l102, "fromJson(json, typeToken<T>())");
        N((n) l102);
        if (K().c()) {
        }
        aVar = this.f10016i;
        if (aVar != null) {
        }
    }
}
