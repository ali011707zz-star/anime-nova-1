package a6;

import a6.a;
import a6.h;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.snackbar.Snackbar;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import g7.c;
import ic.q;
import io.wax911.support.SupportExtentionKt;
import j4.r;
import jc.s;
import jc.y;
import k1.u;
import rc.q0;
import vb.n;
import vb.p;

/* compiled from: AddAnimeFragment.kt */
/* loaded from: classes.dex */
public final class c extends Fragment implements a.b {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f408j = {y.f(new s(c.class, "binding", "getBinding()Lcom/anslayer/databinding/AddAnimeFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f409f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f410g;

    /* renamed from: h, reason: collision with root package name */
    public a6.a f411h;

    /* renamed from: i, reason: collision with root package name */
    public Snackbar f412i;

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a extends jc.j implements ic.l<View, r> {

        /* renamed from: o, reason: collision with root package name */
        public static final a f413o = new a();

        public a() {
            super(1, r.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/AddAnimeFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final r invoke(View view) {
            jc.l.f(view, "p0");
            return r.a(view);
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<p> {
        public b() {
            super(0);
        }

        public final void a() {
            a6.a aVar = c.this.f411h;
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

    /* compiled from: AddAnimeFragment.kt */
    /* renamed from: a6.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0013c extends jc.m implements ic.l<k1.g, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f416g;

        /* compiled from: ErrorView.kt */
        /* renamed from: a6.c$c$a */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ c f417f;

            public a(c cVar) {
                this.f417f = cVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a6.a aVar = this.f417f.f411h;
                if (aVar == null) {
                    return;
                }
                aVar.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0013c(View view) {
            super(1);
            this.f416g = view;
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = c.this.L().f8669f;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = c.this.L().f8671h;
            jc.l.e(recyclerView, "binding.recycler");
            recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            ErrorView errorView = c.this.L().f8668e;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            c.this.L().f8668e.getBinding().f8511b.setOnClickListener(new a(c.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = c.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    c.this.L().f8668e.b();
                } else {
                    c.this.L().f8668e.c();
                }
            }
            if (gVar.e() instanceof u.c) {
                a6.a aVar = c.this.f411h;
                if (aVar != null && aVar.getItemCount() == 0) {
                    ErrorView errorView2 = c.this.L().f8668e;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = c.this.L().f8668e;
                    String string = this.f416g.getResources().getString(R.string.empty_response);
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

    /* compiled from: AddAnimeFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeFragment$onViewCreated$3", f = "AddAnimeFragment.kt", l = {80}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f418f;

        /* compiled from: AddAnimeFragment.kt */
        @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeFragment$onViewCreated$3$1", f = "AddAnimeFragment.kt", l = {81}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.p>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f420f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f421g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ c f422h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f422h = cVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f422h, dVar);
                aVar.f421g = obj;
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
                int i10 = this.f420f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f421g;
                    a6.a aVar = this.f422h.f411h;
                    if (aVar != null) {
                        this.f420f = 1;
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

        public d(ac.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f418f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.f<k1.q0<p4.p>> h10 = c.this.N().h();
                a aVar = new a(c.this, null);
                this.f418f = 1;
                if (uc.h.g(h10, aVar, this) == d10) {
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

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<g7.c<? extends Integer>, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f424g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view) {
            super(1);
            this.f424g = view;
        }

        public final void a(g7.c<Integer> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.C0133c) {
                a6.f M = c.this.M(((Number) ((c.C0133c) cVar).a()).intValue());
                if (M != null) {
                    M.f(true);
                }
                c cVar2 = c.this;
                LinearLayout b10 = cVar2.L().b();
                jc.l.e(b10, "binding.root");
                Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.added_to_customlist), -1);
                jc.l.e(make, "make(this, context.getString(message), length)");
                View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
                jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
                ((TextView) findViewById).setGravity(3);
                p pVar = p.f15031a;
                make.show();
                cVar2.f412i = make;
                androidx.fragment.app.l.a(c.this, "requestKey", m0.b.a(n.a("refresh", Boolean.TRUE)));
                return;
            }
            if (cVar instanceof c.a) {
                Context context = this.f424g.getContext();
                jc.l.e(context, "view.context");
                k7.b.q(context, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends Integer> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<g7.c<? extends Integer>, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f426g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(View view) {
            super(1);
            this.f426g = view;
        }

        public final void a(g7.c<Integer> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.C0133c) {
                a6.f M = c.this.M(((Number) ((c.C0133c) cVar).a()).intValue());
                if (M != null) {
                    M.f(false);
                }
                c cVar2 = c.this;
                LinearLayout b10 = cVar2.L().b();
                jc.l.e(b10, "binding.root");
                Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.remove_from_customlist), -1);
                jc.l.e(make, "make(this, context.getString(message), length)");
                View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
                jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
                ((TextView) findViewById).setGravity(3);
                p pVar = p.f15031a;
                make.show();
                cVar2.f412i = make;
                androidx.fragment.app.l.a(c.this, "requestKey", m0.b.a(n.a("refresh", Boolean.TRUE)));
                return;
            }
            if (cVar instanceof c.a) {
                Context context = this.f426g.getContext();
                jc.l.e(context, "view.context");
                k7.b.q(context, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends Integer> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<p> {
        public g() {
            super(0);
        }

        public final void a() {
            a6.a aVar = c.this.f411h;
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

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.l<CharSequence, Long> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ImageView f428f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ c f429g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ImageView imageView, c cVar) {
            super(1);
            this.f428f = imageView;
            this.f429g = cVar;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke(CharSequence charSequence) {
            jc.l.f(charSequence, "it");
            this.f428f.setVisibility(8);
            ProgressBar progressBar = this.f429g.L().f8670g;
            jc.l.e(progressBar, "binding.progressQuery");
            progressBar.setVisibility(0);
            return 500L;
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeFragment$setupSearchView$2", f = "AddAnimeFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class i extends cc.k implements q<uc.g<? super CharSequence>, Throwable, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f430f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f431g;

        public i(ac.d<? super i> dVar) {
            super(3, dVar);
        }

        @Override // ic.q
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object i(uc.g<? super CharSequence> gVar, Throwable th, ac.d<? super p> dVar) {
            i iVar = new i(dVar);
            iVar.f431g = th;
            return iVar.invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f430f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            ((Throwable) this.f431g).printStackTrace();
            return p.f15031a;
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeFragment$setupSearchView$3", f = "AddAnimeFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class j extends cc.k implements ic.p<CharSequence, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f432f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f433g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ImageView f435i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(ImageView imageView, ac.d<? super j> dVar) {
            super(2, dVar);
            this.f435i = imageView;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            j jVar = new j(this.f435i, dVar);
            jVar.f433g = obj;
            return jVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CharSequence charSequence, ac.d<? super p> dVar) {
            return ((j) create(charSequence, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f432f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            CharSequence charSequence = (CharSequence) this.f433g;
            c.this.P(charSequence);
            this.f435i.setVisibility(charSequence.length() > 0 ? 0 : 8);
            ProgressBar progressBar = c.this.L().f8670g;
            jc.l.e(progressBar, "binding.progressQuery");
            progressBar.setVisibility(8);
            return p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f436f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(Fragment fragment) {
            super(0);
            this.f436f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f436f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f437f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(ic.a aVar) {
            super(0);
            this.f437f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f437f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: AddAnimeFragment.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<l0.b> {
        public m() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new h.a(c.this);
        }
    }

    public c() {
        super(R.layout.add_anime_fragment);
        this.f409f = lb.a.a(this, a.f413o);
        this.f410g = c0.a(this, y.b(a6.h.class), new l(new k(this)), new m());
    }

    public static final void R(c cVar, View view) {
        jc.l.f(cVar, "this$0");
        androidx.fragment.app.e activity = cVar.getActivity();
        if (activity != null) {
            SupportExtentionKt.hideKeyboard(activity);
        }
        androidx.fragment.app.e activity2 = cVar.getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.onBackPressed();
    }

    public final r L() {
        return (r) this.f409f.c(this, f408j[0]);
    }

    public final a6.f M(int i10) {
        RecyclerView.e0 findViewHolderForAdapterPosition = L().f8671h.findViewHolderForAdapterPosition(i10);
        if (findViewHolderForAdapterPosition instanceof a6.f) {
            return (a6.f) findViewHolderForAdapterPosition;
        }
        return null;
    }

    public final a6.h N() {
        return (a6.h) this.f410g.getValue();
    }

    public final void O() {
        RecyclerView recyclerView = L().f8671h;
        a6.a aVar = this.f411h;
        recyclerView.setAdapter(aVar == null ? null : aVar.l(new g6.u(new g())));
        a6.a aVar2 = this.f411h;
        if (aVar2 == null) {
            return;
        }
        aVar2.h();
    }

    public final void P(CharSequence charSequence) {
        N().n(charSequence.toString());
        O();
    }

    public final void Q() {
        L().f8674k.setNavigationIcon(R.drawable.ic_player_backarrow);
        L().f8674k.setNavigationOnClickListener(new View.OnClickListener() { // from class: a6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.R(c.this, view);
            }
        });
    }

    public final void S() {
        L().f8672i.F(N().l(), false);
        View findViewById = L().f8672i.findViewById(R.id.search_close_btn);
        jc.l.e(findViewById, "binding.searchQuery.find…Id(R.id.search_close_btn)");
        ImageView imageView = (ImageView) findViewById;
        SearchView searchView = L().f8672i;
        jc.l.e(searchView, "binding.searchQuery");
        uc.f w10 = uc.h.w(uc.h.d(uc.h.k(uc.h.j(nd.b.a(searchView).f(), new h(imageView, this))), new i(null)), new j(imageView, null));
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        uc.h.t(w10, androidx.lifecycle.r.a(viewLifecycleOwner));
    }

    @Override // a6.a.b
    public void d(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        N().m(pVar.m(), i10);
    }

    @Override // a6.a.b
    public void g(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        N().e(pVar.m(), i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f411h = null;
        Snackbar snackbar = this.f412i;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f412i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        Q();
        a6.a aVar = new a6.a(this);
        this.f411h = aVar;
        aVar.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        L().f8671h.setLayoutManager(new LinearLayoutManager(view.getContext()));
        L().f8671h.setHasFixedSize(true);
        RecyclerView recyclerView = L().f8671h;
        a6.a aVar2 = this.f411h;
        jc.l.c(aVar2);
        recyclerView.setAdapter(aVar2.l(new g6.u(new b())));
        S();
        a6.a aVar3 = this.f411h;
        if (aVar3 != null) {
            aVar3.f(new C0013c(view));
        }
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(androidx.lifecycle.r.a(viewLifecycleOwner), null, null, new d(null), 3, null);
        N().f().i(getViewLifecycleOwner(), new g7.b(new e(view)));
        N().k().i(getViewLifecycleOwner(), new g7.b(new f(view)));
    }
}
