package l6;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cc.k;
import com.anslayer.R;
import com.anslayer.ui.customlist.details.CustomListDetailsActivity;
import com.anslayer.widget.ErrorView;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.v2;
import jc.j;
import jc.m;
import jc.s;
import jc.y;
import k1.u;
import l6.c;
import rc.q0;
import vb.p;

/* compiled from: UserCustomListFragment.kt */
/* loaded from: classes.dex */
public final class a extends Fragment {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f10454i = {y.f(new s(a.class, "binding", "getBinding()Lcom/anslayer/databinding/UserCustomListFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f10455f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f10456g;

    /* renamed from: h, reason: collision with root package name */
    public x5.b f10457h;

    /* compiled from: UserCustomListFragment.kt */
    /* renamed from: l6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class C0241a extends j implements l<View, v2> {

        /* renamed from: o, reason: collision with root package name */
        public static final C0241a f10458o = new C0241a();

        public C0241a() {
            super(1, v2.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/UserCustomListFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final v2 invoke(View view) {
            jc.l.f(view, "p0");
            return v2.a(view);
        }
    }

    /* compiled from: UserCustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<k1.g, p> {

        /* compiled from: ErrorView.kt */
        /* renamed from: l6.a$b$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewOnClickListenerC0242a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a f10460f;

            public ViewOnClickListenerC0242a(a aVar) {
                this.f10460f = aVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x5.b bVar = this.f10460f.f10457h;
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
            ProgressBar progressBar = a.this.H().f8778c;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = a.this.H().f8779d;
            jc.l.e(recyclerView, "binding.recycler");
            recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            ErrorView errorView = a.this.H().f8777b;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            a.this.H().f8777b.getBinding().f8511b.setOnClickListener(new ViewOnClickListenerC0242a(a.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = a.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    a.this.H().f8777b.b();
                } else {
                    a.this.H().f8777b.c();
                }
            }
            if (a.this.I().b() && (gVar.e() instanceof u.c)) {
                x5.b bVar = a.this.f10457h;
                if (bVar != null && bVar.getItemCount() == 0) {
                    ErrorView errorView2 = a.this.H().f8777b;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    a.this.H().f8777b.a("لا يوجد بيانات");
                }
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(k1.g gVar) {
            a(gVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserCustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.p<p4.j, Boolean, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f10461f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ a f10462g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view, a aVar) {
            super(2);
            this.f10461f = view;
            this.f10462g = aVar;
        }

        public final void a(p4.j jVar, boolean z10) {
            jc.l.f(jVar, "customList");
            CustomListDetailsActivity.a aVar = CustomListDetailsActivity.f4195l;
            Context context = this.f10461f.getContext();
            jc.l.e(context, "view.context");
            this.f10462g.startActivity(aVar.a(context, jVar));
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ p invoke(p4.j jVar, Boolean bool) {
            a(jVar, bool.booleanValue());
            return p.f15031a;
        }
    }

    /* compiled from: UserCustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<p> {
        public d() {
            super(0);
        }

        public final void a() {
            x5.b bVar = a.this.f10457h;
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

    /* compiled from: UserCustomListFragment.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.customlist.UserCustomListFragment$requestNetwork$1", f = "UserCustomListFragment.kt", l = {86}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10464f;

        /* compiled from: UserCustomListFragment.kt */
        @cc.f(c = "com.anslayer.ui.profile.people.customlist.UserCustomListFragment$requestNetwork$1$1", f = "UserCustomListFragment.kt", l = {87}, m = "invokeSuspend")
        /* renamed from: l6.a$e$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0243a extends k implements ic.p<k1.q0<p4.j>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10466f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f10467g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ a f10468h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0243a(a aVar, ac.d<? super C0243a> dVar) {
                super(2, dVar);
                this.f10468h = aVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                C0243a c0243a = new C0243a(this.f10468h, dVar);
                c0243a.f10467g = obj;
                return c0243a;
            }

            @Override // ic.p
            /* renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k1.q0<p4.j> q0Var, ac.d<? super p> dVar) {
                return ((C0243a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10466f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f10467g;
                    x5.b bVar = this.f10468h.f10457h;
                    if (bVar != null) {
                        this.f10466f = 1;
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
            int i10 = this.f10464f;
            if (i10 == 0) {
                vb.k.b(obj);
                a.this.I().e(true);
                uc.f<k1.q0<p4.j>> a10 = a.this.I().a();
                C0243a c0243a = new C0243a(a.this, null);
                this.f10464f = 1;
                if (uc.h.g(a10, c0243a, this) == d10) {
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

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f10469f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Fragment fragment) {
            super(0);
            this.f10469f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f10469f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f10470f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ic.a aVar) {
            super(0);
            this.f10470f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f10470f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: UserCustomListFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<l0.b> {
        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new c.a(a.this);
        }
    }

    public a() {
        super(R.layout.user_custom_list_fragment);
        this.f10455f = lb.a.a(this, C0241a.f10458o);
        this.f10456g = c0.a(this, y.b(l6.c.class), new g(new f(this)), new h());
    }

    public final v2 H() {
        return (v2) this.f10455f.c(this, f10454i[0]);
    }

    public final l6.c I() {
        return (l6.c) this.f10456g.getValue();
    }

    public final void J() {
        x5.b bVar = this.f10457h;
        if (bVar == null) {
            return;
        }
        bVar.f(new b());
    }

    public final void K() {
        q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new e(null), 3, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f10457h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (I().b()) {
            return;
        }
        K();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f10457h = new x5.b(false, new c(view, this), 1, null);
        H().f8779d.setLayoutManager(new LinearLayoutManager(view.getContext()));
        H().f8779d.setHasFixedSize(true);
        RecyclerView recyclerView = H().f8779d;
        x5.b bVar = this.f10457h;
        recyclerView.setAdapter(bVar != null ? bVar.l(new g6.u(new d())) : null);
        if (I().b()) {
            K();
        }
        J();
    }
}
