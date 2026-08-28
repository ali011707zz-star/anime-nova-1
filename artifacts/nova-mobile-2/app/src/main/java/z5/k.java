package z5;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c0;
import androidx.fragment.app.x;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.r;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.customlist.create.CreateCustomListActivity;
import com.anslayer.widget.ErrorView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import g7.c;
import ic.q;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ActionModeListener;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import j4.q0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.s;
import jc.y;
import k1.u;
import q0.b0;
import rc.c2;
import vb.p;
import wb.t;
import z5.c;
import z5.n;

/* compiled from: CustomListDetailsFragment.kt */
/* loaded from: classes.dex */
public final class k extends Fragment implements c.b, ActionModeListener {

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f17347o = {y.f(new s(k.class, "binding", "getBinding()Lcom/anslayer/databinding/CustomListDetailsFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17348f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f17349g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f17350h;

    /* renamed from: i, reason: collision with root package name */
    public z5.l f17351i;

    /* renamed from: j, reason: collision with root package name */
    public z5.c f17352j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f17353k;

    /* renamed from: l, reason: collision with root package name */
    public c2 f17354l;

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f17355m;

    /* renamed from: n, reason: collision with root package name */
    public final androidx.activity.result.c<Intent> f17356n;

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a extends jc.j implements ic.l<View, q0> {

        /* renamed from: o, reason: collision with root package name */
        public static final a f17357o = new a();

        public a() {
            super(1, q0.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/CustomListDetailsFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final q0 invoke(View view) {
            jc.l.f(view, "p0");
            return q0.a(view);
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<k1.g, p> {

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ k f17359f;

            public a(k kVar) {
                this.f17359f = kVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z5.c cVar = this.f17359f.f17352j;
                if (cVar == null) {
                    return;
                }
                cVar.j();
            }
        }

        public b() {
            super(1);
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = k.this.R().f8650f;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = k.this.f17353k;
            if (recyclerView != null) {
                recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            }
            k.this.R().f8651g.setRefreshing(false);
            ErrorView errorView = k.this.R().f8648d;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            k.this.R().f8648d.getBinding().f8511b.setOnClickListener(new a(k.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = k.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    k.this.R().f8648d.b();
                } else {
                    k.this.R().f8648d.c();
                }
            }
            if (gVar.e() instanceof u.c) {
                z5.c cVar = k.this.f17352j;
                if (cVar != null && cVar.getItemCount() == 0) {
                    ErrorView errorView2 = k.this.R().f8648d;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    k.this.R().f8648d.a("لا يوجد بيانات");
                }
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(k1.g gVar) {
            a(gVar);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.p<String, Bundle, p> {
        public c() {
            super(2);
        }

        public final void a(String str, Bundle bundle) {
            z5.c cVar;
            jc.l.f(str, "$noName_0");
            jc.l.f(bundle, "bundle");
            if (!bundle.getBoolean("refresh") || (cVar = k.this.f17352j) == null) {
                return;
            }
            cVar.h();
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ p invoke(String str, Bundle bundle) {
            a(str, bundle);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsFragment$onViewCreated$2", f = "CustomListDetailsFragment.kt", l = {132}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<rc.q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17361f;

        /* compiled from: CustomListDetailsFragment.kt */
        @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsFragment$onViewCreated$2$1", f = "CustomListDetailsFragment.kt", l = {132}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.p>, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f17363f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f17364g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ k f17365h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(k kVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f17365h = kVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f17365h, dVar);
                aVar.f17364g = obj;
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
                int i10 = this.f17363f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f17364g;
                    z5.c cVar = this.f17365h.f17352j;
                    if (cVar != null) {
                        this.f17363f = 1;
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

        public d(ac.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f17361f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.f<k1.q0<p4.p>> f10 = k.this.U().f();
                a aVar = new a(k.this, null);
                this.f17361f = 1;
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

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<g7.c<? extends p>, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f17367g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view) {
            super(1);
            this.f17367g = view;
        }

        public final void a(g7.c<p> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.C0133c) {
                z5.c cVar2 = k.this.f17352j;
                if (cVar2 == null) {
                    return;
                }
                cVar2.h();
                return;
            }
            if (cVar instanceof c.a) {
                Context context = this.f17367g.getContext();
                jc.l.e(context, "view.context");
                k7.b.q(context, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends p> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<g7.c<? extends p>, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f17369g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(View view) {
            super(1);
            this.f17369g = view;
        }

        public final void a(g7.c<p> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.C0133c) {
                Intent intent = new Intent();
                intent.putExtra("is_deleted", true);
                k.this.requireActivity().setResult(-1, intent);
                k.this.requireActivity().finish();
                return;
            }
            if (cVar instanceof c.a) {
                Context context = this.f17369g.getContext();
                jc.l.e(context, "view.context");
                k7.b.q(context, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends p> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<p> {
        public g() {
            super(0);
        }

        public final void a() {
            z5.c cVar = k.this.f17352j;
            if (cVar == null) {
                return;
            }
            cVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsFragment$setupRecycler$1", f = "CustomListDetailsFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class h extends cc.k implements ic.p<qd.a, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17371f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SupportRecyclerView f17373h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(SupportRecyclerView supportRecyclerView, ac.d<? super h> dVar) {
            super(2, dVar);
            this.f17373h = supportRecyclerView;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new h(this.f17373h, dVar);
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(qd.a aVar, ac.d<? super p> dVar) {
            return ((h) create(aVar, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f17371f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            k.this.j0(this.f17373h);
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements q<s2.c, Integer, CharSequence, p> {
        public i() {
            super(3);
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            jc.l.f(cVar, "$noName_0");
            jc.l.f(charSequence, "$noName_2");
            k.this.S().h0(y3.a.f16424a.d()[i10]);
            z5.c cVar2 = k.this.f17352j;
            if (cVar2 == null) {
                return;
            }
            cVar2.h();
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final j f17375f = new j();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public j() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: z5.k$k, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0442k extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f17376f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0442k(Fragment fragment) {
            super(0);
            this.f17376f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f17376f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f17377f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(ic.a aVar) {
            super(0);
            this.f17377f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f17377f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<d7.a> {
        public m() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d7.a invoke() {
            return new d7.a(k.this, false, 2, null);
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class n extends jc.m implements ic.a<p> {
        public n() {
            super(0);
        }

        public final void a() {
            z5.c cVar = k.this.f17352j;
            if (cVar == null) {
                return;
            }
            cVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: CustomListDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class o extends jc.m implements ic.a<l0.b> {
        public o() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new n.a(k.this);
        }
    }

    public k() {
        super(R.layout.custom_list_details_fragment);
        this.f17348f = lb.a.a(this, a.f17357o);
        this.f17349g = c0.a(this, y.b(z5.n.class), new l(new C0442k(this)), new o());
        this.f17350h = vb.f.a(j.f17375f);
        this.f17355m = vb.f.a(new m());
        androidx.activity.result.c<Intent> registerForActivityResult = registerForActivityResult(new c.c(), new androidx.activity.result.b() { // from class: z5.h
            @Override // androidx.activity.result.b
            public final void a(Object obj) {
                k.h0(k.this, (androidx.activity.result.a) obj);
            }
        });
        jc.l.e(registerForActivityResult, "registerForActivityResul…        }\n        }\n    }");
        this.f17356n = registerForActivityResult;
    }

    public static final void W(k kVar, ActionMode actionMode, DialogInterface dialogInterface, int i10) {
        jc.l.f(kVar, "this$0");
        jc.l.f(actionMode, "$mode");
        List<p4.p> c10 = kVar.T().c();
        ArrayList arrayList = new ArrayList(wb.m.q(c10, 10));
        Iterator<T> it2 = c10.iterator();
        while (it2.hasNext()) {
            arrayList.add(Long.valueOf(((p4.p) it2.next()).m()));
        }
        kVar.U().e(t.G(arrayList, ",", null, null, 0, null, null, 62, null));
        actionMode.finish();
    }

    public static final void X(k kVar, View view) {
        jc.l.f(kVar, "this$0");
        FragmentManager supportFragmentManager = kVar.requireActivity().getSupportFragmentManager();
        jc.l.e(supportFragmentManager, "requireActivity().supportFragmentManager");
        x m10 = supportFragmentManager.m();
        jc.l.e(m10, "beginTransaction()");
        m10.u(true);
        m10.h("");
        jc.l.e(m10.s(R.id.fragment_container_view, a6.c.class, m0.b.a(vb.n.a("id", Long.valueOf(kVar.U().k()))), null), "replace(containerViewId, F::class.java, args, tag)");
        m10.i();
    }

    public static final void Y(k kVar) {
        jc.l.f(kVar, "this$0");
        z5.c cVar = kVar.f17352j;
        if (cVar == null) {
            return;
        }
        cVar.h();
    }

    public static final void c0(k kVar, View view) {
        jc.l.f(kVar, "this$0");
        androidx.fragment.app.e activity = kVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.onBackPressed();
    }

    public static final boolean d0(k kVar, MenuItem menuItem) {
        jc.l.f(kVar, "this$0");
        switch (menuItem.getItemId()) {
            case R.id.action_delete_list /* 2131361861 */:
                kVar.e0();
                return true;
            case R.id.action_display_mode /* 2131361862 */:
                kVar.i0();
                return true;
            case R.id.action_edit_list /* 2131361865 */:
                kVar.Z();
                return true;
            case R.id.action_sort_toggle /* 2131361900 */:
                kVar.g0();
                return true;
            default:
                return true;
        }
    }

    public static final void f0(k kVar, DialogInterface dialogInterface, int i10) {
        jc.l.f(kVar, "this$0");
        kVar.U().d();
    }

    public static final void h0(k kVar, androidx.activity.result.a aVar) {
        Intent a10;
        jc.l.f(kVar, "this$0");
        if (aVar.c() != -1 || (a10 = aVar.a()) == null) {
            return;
        }
        boolean booleanExtra = a10.getBooleanExtra("is_edited", false);
        Bundle extras = a10.getExtras();
        jc.l.c(extras);
        String string = extras.getString("new_title");
        if (string == null) {
            string = "";
        }
        Bundle extras2 = a10.getExtras();
        jc.l.c(extras2);
        String string2 = extras2.getString("new_desc");
        if (booleanExtra) {
            kVar.U().q(string);
            kVar.U().p(string2);
            z5.l lVar = kVar.f17351i;
            if (lVar != null) {
                lVar.k(string, string2);
            }
            Intent intent = new Intent();
            intent.putExtra("is_edited", true);
            kVar.requireActivity().setResult(-1, intent);
        }
    }

    public final q0 R() {
        return (q0) this.f17348f.c(this, f17347o[0]);
    }

    public final f4.d S() {
        return (f4.d) this.f17350h.getValue();
    }

    public final d7.a T() {
        return (d7.a) this.f17355m.getValue();
    }

    public final z5.n U() {
        return (z5.n) this.f17349g.getValue();
    }

    public final void V() {
        z5.c cVar = this.f17352j;
        if (cVar == null) {
            return;
        }
        cVar.f(new b());
    }

    public final void Z() {
        CreateCustomListActivity.a aVar = CreateCustomListActivity.f4187m;
        Context requireContext = requireContext();
        jc.l.e(requireContext, "requireContext()");
        this.f17356n.a(aVar.a(requireContext, U().k(), U().n(), U().i()));
    }

    @Override // z5.c.b
    public void a(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(SeriesActivity.f4161l.a(activity, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
    }

    public final void a0(View view, androidx.recyclerview.widget.g gVar) {
        int i10;
        SupportRecyclerView supportRecyclerView;
        RecyclerView.p layoutManager;
        View childAt = R().f8647c.getChildAt(1);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            RecyclerView.p layoutManager2 = recyclerView.getLayoutManager();
            if (layoutManager2 != null) {
                i10 = ((StaggeredGridLayoutManager) layoutManager2).G(null)[0];
                recyclerView.setAdapter(null);
                R().f8647c.removeView(childAt);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
            }
        } else {
            i10 = -1;
        }
        if (S().H()) {
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
        supportRecyclerView.setAdapter(gVar);
        c2 c2Var = this.f17354l;
        if (c2Var != null) {
            c2.a.a(c2Var, null, 1, null);
        }
        uc.f w10 = uc.h.w(qd.b.a(supportRecyclerView), new h(supportRecyclerView, null));
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        this.f17354l = uc.h.t(w10, r.a(viewLifecycleOwner));
        R().f8647c.addView(supportRecyclerView, 1);
        if (i10 != -1 && (layoutManager = supportRecyclerView.getLayoutManager()) != null) {
            layoutManager.scrollToPosition(i10);
        }
        this.f17353k = supportRecyclerView;
    }

    public final void b0() {
        MenuItem findItem;
        R().f8652h.setNavigationIcon(R.drawable.ic_player_backarrow);
        R().f8652h.setNavigationOnClickListener(new View.OnClickListener() { // from class: z5.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.c0(k.this, view);
            }
        });
        R().f8652h.inflateMenu(R.menu.custom_list);
        R().f8652h.setOnMenuItemClickListener(new Toolbar.f() { // from class: z5.i
            @Override // androidx.appcompat.widget.Toolbar.f
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean d02;
                d02 = k.d0(k.this, menuItem);
                return d02;
            }
        });
        Menu menu = R().f8652h.getMenu();
        if (menu != null && (findItem = menu.findItem(R.id.action_display_mode)) != null) {
            findItem.setIcon(S().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
        }
        if (U().j()) {
            Menu menu2 = R().f8652h.getMenu();
            MenuItem findItem2 = menu2 == null ? null : menu2.findItem(R.id.action_edit_list);
            if (findItem2 != null) {
                findItem2.setVisible(false);
            }
            Menu menu3 = R().f8652h.getMenu();
            MenuItem findItem3 = menu3 != null ? menu3.findItem(R.id.action_delete_list) : null;
            if (findItem3 == null) {
                return;
            }
            findItem3.setVisible(false);
        }
    }

    public final void e0() {
        new MaterialAlertDialogBuilder(requireActivity()).setMessage((CharSequence) "هل انت متأكد من مسح القائمة؟").setNegativeButton(R.string.action_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.action_delete, new DialogInterface.OnClickListener() { // from class: z5.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                k.f0(k.this, dialogInterface, i10);
            }
        }).show();
    }

    public final void g0() {
        s2.c v10;
        String D = S().D();
        if (D == null) {
            D = "latest_first";
        }
        s2.c a10 = k7.c.a(getActivity());
        if (a10 != null) {
            s2.c y10 = s2.c.y(a10, Integer.valueOf(R.string.action_sort), null, 2, null);
            if (y10 != null && (v10 = s2.c.v(y10, Integer.valueOf(R.string.text_ok), null, null, 6, null)) != null) {
                Context context = getContext();
                s2.c b10 = b3.b.b(v10, null, context != null ? SupportExtentionKt.getStringList(context, R.array.user_sort) : null, null, wb.i.r(y3.a.f16424a.d(), D), false, new i(), 21, null);
                if (b10 == null) {
                    return;
                }
                b10.show();
            }
        }
    }

    public final void i0() {
        View view = getView();
        if (view == null) {
            return;
        }
        U().r();
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        RecyclerView.h[] hVarArr = new RecyclerView.h[2];
        hVarArr[0] = this.f17351i;
        z5.c cVar = this.f17352j;
        hVarArr[1] = cVar == null ? null : cVar.l(new g6.u(new n()));
        a0(view, new androidx.recyclerview.widget.g(hVarArr));
    }

    public final void j0(SupportRecyclerView supportRecyclerView) {
        RecyclerView.p layoutManager = supportRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
        }
        if (((StaggeredGridLayoutManager) layoutManager).G(null)[0] > 0) {
            b0.B0(R().f8646b, k7.b.g(4));
            R().f8652h.setTitle(U().n());
        } else {
            b0.B0(R().f8646b, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            R().f8652h.setTitle("");
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(final ActionMode actionMode, MenuItem menuItem) {
        z5.c cVar;
        jc.l.f(actionMode, "mode");
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_delete) {
            new MaterialAlertDialogBuilder(requireActivity()).setMessage((CharSequence) "هل انت متأكد من حذف الانميات المحددة؟").setNegativeButton(R.string.Cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.remove, new DialogInterface.OnClickListener() { // from class: z5.e
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    k.W(k.this, actionMode, dialogInterface, i10);
                }
            }).show();
            return true;
        }
        if (itemId != R.id.action_select_all || (cVar = this.f17352j) == null) {
            return true;
        }
        cVar.v();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        T().i(true);
        androidx.fragment.app.l.b(this, "requestKey", new c());
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menu, "menu");
        actionMode.getMenuInflater().inflate(R.menu.action_menu, menu);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        jc.l.f(actionMode, "mode");
        T().a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f17353k = null;
        this.f17352j = null;
        super.onDestroyView();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menu, "menu");
        return false;
    }

    @Override // io.wax911.support.base.event.ActionModeListener
    public void onSelectionChanged(ActionMode actionMode, int i10) {
        if (actionMode == null) {
            return;
        }
        actionMode.setTitle(String.valueOf(i10));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        b0();
        this.f17351i = new z5.l(U().n(), U().i());
        z5.c cVar = new z5.c(this);
        this.f17352j = cVar;
        cVar.w(T());
        z5.c cVar2 = this.f17352j;
        if (cVar2 != null) {
            cVar2.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        }
        RecyclerView.h[] hVarArr = new RecyclerView.h[2];
        hVarArr[0] = this.f17351i;
        z5.c cVar3 = this.f17352j;
        hVarArr[1] = cVar3 == null ? null : cVar3.l(new g6.u(new g()));
        a0(view, new androidx.recyclerview.widget.g(hVarArr));
        if (!U().j()) {
            R().f8649e.setOnClickListener(new View.OnClickListener() { // from class: z5.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    k.X(k.this, view2);
                }
            });
            ExtendedFloatingActionButton extendedFloatingActionButton = R().f8649e;
            jc.l.e(extendedFloatingActionButton, "binding.fab");
            RecyclerView recyclerView = this.f17353k;
            jc.l.c(recyclerView);
            recyclerView.addOnScrollListener(new l7.o(extendedFloatingActionButton));
        }
        ExtendedFloatingActionButton extendedFloatingActionButton2 = R().f8649e;
        jc.l.e(extendedFloatingActionButton2, "binding.fab");
        extendedFloatingActionButton2.setVisibility(U().j() ? 8 : 0);
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new d(null), 3, null);
        R().f8651g.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: z5.j
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                k.Y(k.this);
            }
        });
        V();
        U().g().i(getViewLifecycleOwner(), new g7.b(new e(view)));
        U().h().i(getViewLifecycleOwner(), new g7.b(new f(view)));
    }
}
