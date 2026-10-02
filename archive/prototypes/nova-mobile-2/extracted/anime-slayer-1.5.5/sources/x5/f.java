package x5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.ui.customlist.create.CreateCustomListActivity;
import com.anslayer.ui.customlist.details.CustomListDetailsActivity;
import com.anslayer.widget.ErrorView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.r0;
import jc.m;
import jc.s;
import jc.y;
import k1.u;
import l7.o;
import rc.q0;
import vb.p;

/* compiled from: CustomListFragment.kt */
/* loaded from: classes.dex */
public final class f extends Fragment {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f15993l = {y.f(new s(f.class, "binding", "getBinding()Lcom/anslayer/databinding/CustomListFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f15994f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f15995g;

    /* renamed from: h, reason: collision with root package name */
    public x5.b f15996h;

    /* renamed from: i, reason: collision with root package name */
    public Snackbar f15997i;

    /* renamed from: j, reason: collision with root package name */
    public long f15998j;

    /* renamed from: k, reason: collision with root package name */
    public final androidx.activity.result.c<Intent> f15999k;

    /* compiled from: CustomListFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a extends jc.j implements l<View, r0> {

        /* renamed from: o, reason: collision with root package name */
        public static final a f16000o = new a();

        public a() {
            super(1, r0.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/CustomListFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final r0 invoke(View view) {
            jc.l.f(view, "p0");
            return r0.a(view);
        }
    }

    /* compiled from: CustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<k1.g, p> {

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ f f16002f;

            public a(f fVar) {
                this.f16002f = fVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x5.b bVar = this.f16002f.f15996h;
                if (bVar == null) {
                    return;
                }
                bVar.j();
            }
        }

        public b() {
            super(1);
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = f.this.M().f8679d;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = f.this.M().f8680e;
            jc.l.e(recyclerView, "binding.recycler");
            recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            f.this.M().f8681f.setRefreshing(false);
            ErrorView errorView = f.this.M().f8677b;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            f.this.M().f8677b.getBinding().f8511b.setOnClickListener(new a(f.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = f.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    f.this.M().f8677b.b();
                } else {
                    f.this.M().f8677b.c();
                }
            }
            if (gVar.e() instanceof u.c) {
                x5.b bVar = f.this.f15996h;
                if (bVar != null && bVar.getItemCount() == 0) {
                    ErrorView errorView2 = f.this.M().f8677b;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    f.this.M().f8677b.a("لا يوجد بيانات");
                }
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(k1.g gVar) {
            a(gVar);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.p<p4.j, Boolean, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ boolean f16003f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ f f16004g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(boolean z10, f fVar) {
            super(2);
            this.f16003f = z10;
            this.f16004g = fVar;
        }

        public final void a(p4.j jVar, boolean z10) {
            jc.l.f(jVar, "customList");
            if (this.f16003f) {
                if (z10) {
                    this.f16004g.O().d(jVar, this.f16004g.f15998j);
                    return;
                } else {
                    this.f16004g.O().i(jVar, this.f16004g.f15998j);
                    return;
                }
            }
            CustomListDetailsActivity.a aVar = CustomListDetailsActivity.f4195l;
            Context requireContext = this.f16004g.requireContext();
            jc.l.e(requireContext, "requireContext()");
            this.f16004g.N().a(aVar.a(requireContext, jVar));
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ p invoke(p4.j jVar, Boolean bool) {
            a(jVar, bool.booleanValue());
            return p.f15031a;
        }
    }

    /* compiled from: CustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<p> {
        public d() {
            super(0);
        }

        public final void a() {
            x5.b bVar = f.this.f15996h;
            if (bVar == null) {
                return;
            }
            bVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: CustomListFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.CustomListFragment$onViewCreated$4", f = "CustomListFragment.kt", l = {87}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16006f;

        /* compiled from: CustomListFragment.kt */
        @cc.f(c = "com.anslayer.ui.customlist.CustomListFragment$onViewCreated$4$1", f = "CustomListFragment.kt", l = {87}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.j>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f16008f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f16009g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ f f16010h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(f fVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f16010h = fVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f16010h, dVar);
                aVar.f16009g = obj;
                return aVar;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<p4.j> q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f16008f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f16009g;
                    x5.b bVar = this.f16010h.f15996h;
                    if (bVar != null) {
                        this.f16008f = 1;
                        if (bVar.k(q0Var, this) == d10) {
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

        public e(ac.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new e(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16006f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.f<k1.q0<p4.j>> f10 = f.this.O().f(f.this.f15998j);
                a aVar = new a(f.this, null);
                this.f16006f = 1;
                if (uc.h.g(f10, aVar, this) == d10) {
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

    /* compiled from: CustomListFragment.kt */
    /* renamed from: x5.f$f, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0413f extends m implements l<p, p> {
        public C0413f() {
            super(1);
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "it");
            f fVar = f.this;
            FrameLayout b10 = fVar.M().b();
            jc.l.e(b10, "binding.root");
            Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.added_to_customlist), 0);
            jc.l.e(make, "make(this, context.getString(message), length)");
            View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
            jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
            ((TextView) findViewById).setGravity(3);
            p pVar2 = p.f15031a;
            make.show();
            fVar.f15997i = make;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p pVar) {
            a(pVar);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements l<p, p> {
        public g() {
            super(1);
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "it");
            f fVar = f.this;
            FrameLayout b10 = fVar.M().b();
            jc.l.e(b10, "binding.root");
            Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.remove_from_customlist), 0);
            jc.l.e(make, "make(this, context.getString(message), length)");
            View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
            jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
            ((TextView) findViewById).setGravity(3);
            p pVar2 = p.f15031a;
            make.show();
            fVar.f15997i = make;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p pVar) {
            a(pVar);
            return p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f16013f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Fragment fragment) {
            super(0);
            this.f16013f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f16013f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class i extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f16014f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(ic.a aVar) {
            super(0);
            this.f16014f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f16014f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    public f() {
        super(R.layout.custom_list_fragment);
        this.f15994f = lb.a.a(this, a.f16000o);
        this.f15995g = c0.a(this, y.b(k.class), new i(new h(this)), null);
        this.f15998j = -1L;
        androidx.activity.result.c<Intent> registerForActivityResult = registerForActivityResult(new c.c(), new androidx.activity.result.b() { // from class: x5.d
            @Override // androidx.activity.result.b
            public final void a(Object obj) {
                f.S(f.this, (androidx.activity.result.a) obj);
            }
        });
        jc.l.e(registerForActivityResult, "registerForActivityResul…        }\n        }\n    }");
        this.f15999k = registerForActivityResult;
    }

    public static final void Q(f fVar, View view) {
        jc.l.f(fVar, "this$0");
        fVar.f15999k.a(new Intent(fVar.requireActivity(), (Class<?>) CreateCustomListActivity.class));
    }

    public static final void R(f fVar) {
        jc.l.f(fVar, "this$0");
        x5.b bVar = fVar.f15996h;
        if (bVar == null) {
            return;
        }
        bVar.h();
    }

    public static final void S(f fVar, androidx.activity.result.a aVar) {
        Intent a10;
        x5.b bVar;
        jc.l.f(fVar, "this$0");
        jc.l.f(aVar, "result");
        if (aVar.c() != -1 || (a10 = aVar.a()) == null) {
            return;
        }
        boolean booleanExtra = a10.getBooleanExtra("is_added", false);
        boolean booleanExtra2 = a10.getBooleanExtra("is_deleted", false);
        boolean booleanExtra3 = a10.getBooleanExtra("is_edited", false);
        if ((booleanExtra || booleanExtra2 || booleanExtra3) && (bVar = fVar.f15996h) != null) {
            bVar.h();
        }
    }

    public final r0 M() {
        return (r0) this.f15994f.c(this, f15993l[0]);
    }

    public final androidx.activity.result.c<Intent> N() {
        return this.f15999k;
    }

    public final k O() {
        return (k) this.f15995g.getValue();
    }

    public final void P() {
        x5.b bVar = this.f15996h;
        if (bVar == null) {
            return;
        }
        bVar.f(new b());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f15996h = null;
        Snackbar snackbar = this.f15997i;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f15997i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        boolean z10 = arguments == null ? false : arguments.getBoolean("enable_selection", false);
        Bundle arguments2 = getArguments();
        this.f15998j = arguments2 != null ? arguments2.getLong("anime_id", -1L) : -1L;
        this.f15996h = new x5.b(z10, new c(z10, this));
        M().f8680e.setLayoutManager(new LinearLayoutManager(view.getContext()));
        M().f8680e.setHasFixedSize(true);
        RecyclerView recyclerView = M().f8680e;
        x5.b bVar = this.f15996h;
        recyclerView.setAdapter(bVar == null ? null : bVar.l(new g6.u(new d())));
        ExtendedFloatingActionButton extendedFloatingActionButton = M().f8678c;
        jc.l.e(extendedFloatingActionButton, "binding.fab");
        extendedFloatingActionButton.setVisibility(z10 ? 8 : 0);
        ExtendedFloatingActionButton extendedFloatingActionButton2 = M().f8678c;
        jc.l.e(extendedFloatingActionButton2, "binding.fab");
        RecyclerView recyclerView2 = M().f8680e;
        jc.l.e(recyclerView2, "binding.recycler");
        recyclerView2.addOnScrollListener(new o(extendedFloatingActionButton2));
        M().f8678c.setOnClickListener(new View.OnClickListener() { // from class: x5.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.Q(f.this, view2);
            }
        });
        q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new e(null), 3, null);
        M().f8681f.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: x5.e
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                f.R(f.this);
            }
        });
        P();
        O().e().i(getViewLifecycleOwner(), new g7.b(new C0413f()));
        O().g().i(getViewLifecycleOwner(), new g7.b(new g()));
    }
}
