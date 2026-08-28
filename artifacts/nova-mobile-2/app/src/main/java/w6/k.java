package w6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import j4.u1;
import j4.v0;
import java.util.Collection;
import java.util.Iterator;
import jc.y;
import k1.u;
import rc.q0;
import w6.d;

/* compiled from: SearchFragment.kt */
/* loaded from: classes.dex */
public final class k extends Fragment implements d.b {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f15281n = {y.e(new jc.o(k.class, "binding", "getBinding()Lcom/anslayer/databinding/SearchFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f15282f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f15283g = vb.f.a(j.f15310f);

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f15284h = c0.a(this, y.b(m.class), new l(new C0397k(this)), null);

    /* renamed from: i, reason: collision with root package name */
    public w6.d f15285i;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f15286j;

    /* renamed from: k, reason: collision with root package name */
    public s2.c f15287k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f15288l;

    /* renamed from: m, reason: collision with root package name */
    public String f15289m;

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.l<s2.c, vb.p> {
        public a() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            k.this.S();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<k1.g, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f15292g;

        /* compiled from: ErrorView.kt */
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ k f15293f;

            public a(k kVar) {
                this.f15293f = kVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                w6.d dVar = this.f15293f.f15285i;
                if (dVar == null) {
                    return;
                }
                dVar.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(1);
            this.f15292g = view;
        }

        public final void a(k1.g gVar) {
            jc.l.f(gVar, "loadState");
            ProgressBar progressBar = k.this.T().f8743d;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(gVar.e() instanceof u.b ? 0 : 8);
            RecyclerView recyclerView = k.this.f15286j;
            if (recyclerView != null) {
                recyclerView.setVisibility(gVar.e() instanceof u.c ? 0 : 8);
            }
            k.this.T().f8747h.setRefreshing(false);
            ErrorView errorView = k.this.T().f8742c;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(gVar.e() instanceof u.a ? 0 : 8);
            k.this.T().f8742c.getBinding().f8511b.setOnClickListener(new a(k.this));
            if (gVar.e() instanceof u.a) {
                androidx.fragment.app.e activity = k.this.getActivity();
                if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
                    k.this.T().f8742c.b();
                } else {
                    k.this.T().f8742c.c();
                }
            }
            if (gVar.e() instanceof u.c) {
                w6.d dVar = k.this.f15285i;
                if (dVar != null && dVar.getItemCount() == 0) {
                    ErrorView errorView2 = k.this.T().f8742c;
                    jc.l.e(errorView2, "binding.errorView");
                    errorView2.setVisibility(0);
                    ErrorView errorView3 = k.this.T().f8742c;
                    String string = this.f15292g.getResources().getString(R.string.empty_response);
                    jc.l.e(string, "view.resources.getString(R.string.empty_response)");
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

    /* compiled from: SearchFragment.kt */
    @cc.f(c = "com.anslayer.ui.search.SearchFragment$onViewCreated$3", f = "SearchFragment.kt", l = {119}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15294f;

        /* compiled from: SearchFragment.kt */
        @cc.f(c = "com.anslayer.ui.search.SearchFragment$onViewCreated$3$1", f = "SearchFragment.kt", l = {120}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<k1.q0<p4.p>, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f15296f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f15297g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ k f15298h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(k kVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f15298h = kVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f15298h, dVar);
                aVar.f15297g = obj;
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
                int i10 = this.f15296f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k1.q0 q0Var = (k1.q0) this.f15297g;
                    w6.d dVar = this.f15298h.f15285i;
                    if (dVar != null) {
                        this.f15296f = 1;
                        if (dVar.k(q0Var, this) == d10) {
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

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15294f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.f<k1.q0<p4.p>> g10 = k.this.V().g();
                a aVar = new a(k.this, null);
                this.f15294f = 1;
                if (uc.h.g(g10, aVar, this) == d10) {
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

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<vb.p> {
        public d() {
            super(0);
        }

        public final void a() {
            w6.d dVar = k.this.f15285i;
            if (dVar == null) {
                return;
            }
            dVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<vb.p> {
        public e() {
            super(0);
        }

        public final void a() {
            w6.d dVar = k.this.f15285i;
            if (dVar == null) {
                return;
            }
            dVar.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<CharSequence, Long> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ImageView f15301f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ k f15302g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ImageView imageView, k kVar) {
            super(1);
            this.f15301f = imageView;
            this.f15302g = kVar;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke(CharSequence charSequence) {
            jc.l.f(charSequence, "it");
            this.f15301f.setVisibility(8);
            ProgressBar progressBar = this.f15302g.T().f8744e;
            jc.l.e(progressBar, "binding.progressQuery");
            progressBar.setVisibility(0);
            return 500L;
        }
    }

    /* compiled from: SearchFragment.kt */
    @cc.f(c = "com.anslayer.ui.search.SearchFragment$setupSearchView$2", f = "SearchFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.q<uc.g<? super CharSequence>, Throwable, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15303f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15304g;

        public g(ac.d<? super g> dVar) {
            super(3, dVar);
        }

        @Override // ic.q
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object i(uc.g<? super CharSequence> gVar, Throwable th, ac.d<? super vb.p> dVar) {
            g gVar2 = new g(dVar);
            gVar2.f15304g = th;
            return gVar2.invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f15303f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            ((Throwable) this.f15304g).printStackTrace();
            return vb.p.f15031a;
        }
    }

    /* compiled from: SearchFragment.kt */
    @cc.f(c = "com.anslayer.ui.search.SearchFragment$setupSearchView$3", f = "SearchFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class h extends cc.k implements ic.p<CharSequence, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15305f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15306g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ImageView f15308i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ImageView imageView, ac.d<? super h> dVar) {
            super(2, dVar);
            this.f15308i = imageView;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            h hVar = new h(this.f15308i, dVar);
            hVar.f15306g = obj;
            return hVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CharSequence charSequence, ac.d<? super vb.p> dVar) {
            return ((h) create(charSequence, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f15305f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            CharSequence charSequence = (CharSequence) this.f15306g;
            k.this.d0(charSequence);
            this.f15308i.setVisibility(charSequence.length() > 0 ? 0 : 8);
            ProgressBar progressBar = k.this.T().f8744e;
            jc.l.e(progressBar, "binding.progressQuery");
            progressBar.setVisibility(8);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SearchFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.q<s2.c, Integer, CharSequence, vb.p> {
        public i() {
            super(3);
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            jc.l.f(cVar, "$noName_0");
            jc.l.f(charSequence, "$noName_2");
            k.this.U().e0(y3.a.f16424a.a()[i10]);
            k.this.c0();
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ vb.p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final j f15310f = new j();

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
    /* renamed from: w6.k$k, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0397k extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f15311f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0397k(Fragment fragment) {
            super(0);
            this.f15311f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f15311f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f15312f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(ic.a aVar) {
            super(0);
            this.f15312f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f15312f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    public static final void Y(k kVar, v0 v0Var, View view) {
        jc.l.f(kVar, "this$0");
        jc.l.f(v0Var, "$dialogBinding");
        ChipGroup chipGroup = v0Var.f8771k;
        jc.l.e(chipGroup, "dialogBinding.animeYearTags");
        MaterialButton materialButton = v0Var.f8772l;
        jc.l.e(materialButton, "dialogBinding.animeYearToggle");
        kVar.m0(chipGroup, materialButton);
    }

    public static final void Z(k kVar, v0 v0Var, View view) {
        jc.l.f(kVar, "this$0");
        jc.l.f(v0Var, "$dialogBinding");
        ChipGroup chipGroup = v0Var.f8767g;
        jc.l.e(chipGroup, "dialogBinding.animeStudioTags");
        MaterialButton materialButton = v0Var.f8768h;
        jc.l.e(materialButton, "dialogBinding.animeStudioToggle");
        kVar.m0(chipGroup, materialButton);
    }

    public static final void a0(k kVar, v0 v0Var, View view) {
        jc.l.f(kVar, "this$0");
        jc.l.f(v0Var, "$dialogBinding");
        ChipGroup chipGroup = v0Var.f8763c;
        jc.l.e(chipGroup, "dialogBinding.animeGenreTags");
        MaterialButton materialButton = v0Var.f8764d;
        jc.l.e(materialButton, "dialogBinding.animeGenreToggle");
        kVar.m0(chipGroup, materialButton);
    }

    public static final void b0(k kVar) {
        jc.l.f(kVar, "this$0");
        w6.d dVar = kVar.f15285i;
        if (dVar == null) {
            return;
        }
        dVar.h();
    }

    public static final void g0(k kVar, View view) {
        jc.l.f(kVar, "this$0");
        androidx.fragment.app.e activity = kVar.getActivity();
        if (activity != null) {
            SupportExtentionKt.hideKeyboard(activity);
        }
        androidx.fragment.app.e activity2 = kVar.getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.onBackPressed();
    }

    public static final boolean h0(k kVar, MenuItem menuItem) {
        jc.l.f(kVar, "this$0");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_filter) {
            kVar.k0();
            return true;
        }
        if (itemId != R.id.action_sort) {
            return true;
        }
        kVar.l0();
        return true;
    }

    public final void S() {
        V().t(V().f());
        c0();
    }

    public final u1 T() {
        return (u1) this.f15282f.f(this, f15281n[0]);
    }

    public final f4.d U() {
        return (f4.d) this.f15283g.getValue();
    }

    public final m V() {
        return (m) this.f15284h.getValue();
    }

    public final void W() {
        o4.g gVar;
        o4.d dVar;
        Object obj;
        Bundle arguments = getArguments();
        Object obj2 = null;
        this.f15289m = arguments == null ? null : arguments.getString("arg_model_key");
        Bundle arguments2 = getArguments();
        this.f15288l = arguments2 == null ? false : arguments2.getBoolean("arg_apply_filter");
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (dVar = (o4.d) arguments3.getParcelable("anime_genre_ids")) != null) {
            Iterator it2 = V().i().b().iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj = it2.next();
                    if (jc.l.a(((q) obj).d(), dVar.a())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            q qVar = (q) obj;
            if (qVar != null) {
                qVar.c(Boolean.TRUE);
            }
            V().t(V().f());
        }
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (gVar = (o4.g) arguments4.getParcelable("anime_studio_ids")) == null) {
            return;
        }
        for (o4.a<?> aVar : V().f()) {
            if (aVar instanceof p) {
                p pVar = (p) aVar;
                Iterable b10 = pVar.b();
                boolean z10 = true;
                if (!(b10 instanceof Collection) || !((Collection) b10).isEmpty()) {
                    Iterator it3 = b10.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!(!jc.l.a(((q) it3.next()).d(), gVar.a()))) {
                                z10 = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (z10) {
                    pVar.b().add(new q(gVar.c(), gVar.a()));
                }
            }
        }
        Iterator it4 = V().o().b().iterator();
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            Object next = it4.next();
            if (jc.l.a(((q) next).d(), gVar.a())) {
                obj2 = next;
                break;
            }
        }
        q qVar2 = (q) obj2;
        if (qVar2 != null) {
            qVar2.c(Boolean.TRUE);
        }
        V().t(V().f());
    }

    public final void X(Context context) {
        s2.c cVar = new s2.c(context, null, 2, null);
        s2.c.y(cVar, Integer.valueOf(R.string.title_dialog_filter), null, 2, null);
        s2.c.p(cVar, Integer.valueOf(R.string.Cancel), null, null, 6, null);
        s2.c.v(cVar, Integer.valueOf(R.string.apply), null, new a(), 2, null);
        final v0 c10 = v0.c(LayoutInflater.from(context));
        jc.l.e(c10, "inflate(LayoutInflater.from(context))");
        w2.a.b(cVar, null, c10.b(), false, false, false, false, 61, null);
        ChipGroup chipGroup = c10.f8766f;
        jc.l.e(chipGroup, "dialogBinding.animeStatusTags");
        o n10 = V().n();
        chipGroup.removeAllViews();
        String[] d10 = n10.d();
        int length = d10.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= length) {
                break;
            }
            int i12 = i11 + 1;
            String str = d10[i10];
            Chip chip = new Chip(chipGroup.getContext(), null, R.attr.chipChoiceStyle);
            chip.setText(str);
            chipGroup.addView(chip);
            if (i11 != n10.b().intValue()) {
                z10 = false;
            }
            chip.setChecked(z10);
            i10++;
            i11 = i12;
        }
        chipGroup.setOnCheckedChangeListener(new l7.n(n10, chipGroup));
        ChipGroup chipGroup2 = c10.f8769i;
        jc.l.e(chipGroup2, "dialogBinding.animeTypeTags");
        r q10 = V().q();
        chipGroup2.removeAllViews();
        String[] d11 = q10.d();
        int length2 = d11.length;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length2) {
            int i15 = i14 + 1;
            String str2 = d11[i13];
            Chip chip2 = new Chip(chipGroup2.getContext(), null, R.attr.chipChoiceStyle);
            chip2.setText(str2);
            chipGroup2.addView(chip2);
            chip2.setChecked(i14 == q10.b().intValue());
            i13++;
            i14 = i15;
        }
        chipGroup2.setOnCheckedChangeListener(new l7.n(q10, chipGroup2));
        ChipGroup chipGroup3 = c10.f8765e;
        jc.l.e(chipGroup3, "dialogBinding.animeSeasonTags");
        n m10 = V().m();
        chipGroup3.removeAllViews();
        String[] d12 = m10.d();
        int length3 = d12.length;
        int i16 = 0;
        int i17 = 0;
        while (i16 < length3) {
            int i18 = i17 + 1;
            String str3 = d12[i16];
            Chip chip3 = new Chip(chipGroup3.getContext(), null, R.attr.chipChoiceStyle);
            chip3.setText(str3);
            chipGroup3.addView(chip3);
            chip3.setChecked(i17 == m10.b().intValue());
            i16++;
            i17 = i18;
        }
        chipGroup3.setOnCheckedChangeListener(new l7.n(m10, chipGroup3));
        ChipGroup chipGroup4 = c10.f8762b;
        jc.l.e(chipGroup4, "dialogBinding.animeAgeRatingTags");
        w6.a e10 = V().e();
        chipGroup4.removeAllViews();
        int i19 = 0;
        for (Object obj : e10.b()) {
            int i20 = i19 + 1;
            if (i19 < 0) {
                wb.l.p();
            }
            q qVar = (q) obj;
            Chip chip4 = new Chip(chipGroup4.getContext(), null, R.attr.chipChoiceStyle);
            chip4.setText(qVar.a());
            chip4.setChecked(qVar.b().booleanValue());
            chip4.setOnCheckedChangeListener(new l7.l(qVar));
            chipGroup4.addView(chip4);
            i19 = i20;
        }
        ChipGroup chipGroup5 = c10.f8771k;
        jc.l.e(chipGroup5, "dialogBinding.animeYearTags");
        t r10 = V().r();
        chipGroup5.removeAllViews();
        int i21 = 0;
        for (Object obj2 : r10.b()) {
            int i22 = i21 + 1;
            if (i21 < 0) {
                wb.l.p();
            }
            q qVar2 = (q) obj2;
            Chip chip5 = new Chip(chipGroup5.getContext(), null, R.attr.chipChoiceStyle);
            chip5.setText(qVar2.a());
            chip5.setChecked(qVar2.b().booleanValue());
            chip5.setOnCheckedChangeListener(new l7.l(qVar2));
            chipGroup5.addView(chip5);
            i21 = i22;
        }
        c10.f8772l.setOnClickListener(new View.OnClickListener() { // from class: w6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.Y(k.this, c10, view);
            }
        });
        ChipGroup chipGroup6 = c10.f8767g;
        jc.l.e(chipGroup6, "dialogBinding.animeStudioTags");
        p o10 = V().o();
        chipGroup6.removeAllViews();
        int i23 = 0;
        for (Object obj3 : o10.b()) {
            int i24 = i23 + 1;
            if (i23 < 0) {
                wb.l.p();
            }
            q qVar3 = (q) obj3;
            Chip chip6 = new Chip(chipGroup6.getContext(), null, R.attr.chipChoiceStyle);
            chip6.setText(qVar3.a());
            chip6.setChecked(qVar3.b().booleanValue());
            chip6.setOnCheckedChangeListener(new l7.m(qVar3));
            chipGroup6.addView(chip6);
            i23 = i24;
        }
        c10.f8768h.setOnClickListener(new View.OnClickListener() { // from class: w6.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.Z(k.this, c10, view);
            }
        });
        ChipGroup chipGroup7 = c10.f8763c;
        jc.l.e(chipGroup7, "dialogBinding.animeGenreTags");
        w6.b i25 = V().i();
        chipGroup7.removeAllViews();
        int i26 = 0;
        for (Object obj4 : i25.b()) {
            int i27 = i26 + 1;
            if (i26 < 0) {
                wb.l.p();
            }
            q qVar4 = (q) obj4;
            Chip chip7 = new Chip(chipGroup7.getContext(), null, R.attr.chipChoiceStyle);
            chip7.setText(qVar4.a());
            chip7.setChecked(qVar4.b().booleanValue());
            chip7.setOnCheckedChangeListener(new l7.l(qVar4));
            chipGroup7.addView(chip7);
            i26 = i27;
        }
        c10.f8764d.setOnClickListener(new View.OnClickListener() { // from class: w6.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.a0(k.this, c10, view);
            }
        });
        this.f15287k = cVar;
    }

    @Override // w6.d.b
    public void a(p4.p pVar, int i10) {
        jc.l.f(pVar, "anime");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        if (this.f15288l) {
            String str = this.f15289m;
            if (str == null) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(str, pVar);
            activity.setResult(-1, intent);
            activity.finish();
            return;
        }
        startActivity(SeriesActivity.f4161l.a(activity, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
    }

    public final void c0() {
        RecyclerView recyclerView = this.f15286j;
        if (recyclerView != null) {
            w6.d dVar = this.f15285i;
            recyclerView.setAdapter(dVar == null ? null : dVar.l(new g6.u(new d())));
        }
        w6.d dVar2 = this.f15285i;
        if (dVar2 == null) {
            return;
        }
        dVar2.h();
    }

    public final void d0(CharSequence charSequence) {
        V().u(charSequence.toString());
        c0();
    }

    public final void e0(u1 u1Var) {
        this.f15282f.a(this, f15281n[0], u1Var);
    }

    public final void f0() {
        T().f8746g.setNavigationIcon(R.drawable.ic_player_backarrow);
        T().f8746g.setNavigationOnClickListener(new View.OnClickListener() { // from class: w6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.g0(k.this, view);
            }
        });
        T().f8746g.inflateMenu(R.menu.search);
        T().f8746g.setOnMenuItemClickListener(new Toolbar.f() { // from class: w6.i
            @Override // androidx.appcompat.widget.Toolbar.f
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean h02;
                h02 = k.h0(k.this, menuItem);
                return h02;
            }
        });
    }

    public final void i0(View view) {
        int i10;
        SupportRecyclerView supportRecyclerView;
        RecyclerView.p layoutManager;
        View childAt = T().f8741b.getChildAt(1);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            RecyclerView.p layoutManager2 = recyclerView.getLayoutManager();
            if (layoutManager2 != null) {
                i10 = ((StaggeredGridLayoutManager) layoutManager2).G(null)[0];
                recyclerView.setAdapter(null);
                T().f8741b.removeView(childAt);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
            }
        } else {
            i10 = -1;
        }
        if (U().H()) {
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
        w6.d dVar = this.f15285i;
        supportRecyclerView.setAdapter(dVar != null ? dVar.l(new g6.u(new e())) : null);
        T().f8741b.addView(supportRecyclerView, 1);
        if (i10 != -1 && (layoutManager = supportRecyclerView.getLayoutManager()) != null) {
            layoutManager.scrollToPosition(i10);
        }
        this.f15286j = supportRecyclerView;
    }

    public final void j0() {
        T().f8745f.F(V().l(), false);
        View findViewById = T().f8745f.findViewById(R.id.search_close_btn);
        jc.l.e(findViewById, "binding.searchQuery.find…Id(R.id.search_close_btn)");
        ImageView imageView = (ImageView) findViewById;
        SearchView searchView = T().f8745f;
        jc.l.e(searchView, "binding.searchQuery");
        uc.f w10 = uc.h.w(uc.h.d(uc.h.k(uc.h.j(nd.b.a(searchView).f(), new f(imageView, this))), new g(null)), new h(imageView, null));
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        uc.h.t(w10, androidx.lifecycle.r.a(viewLifecycleOwner));
    }

    public final void k0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        if (this.f15287k == null) {
            X(activity);
        }
        s2.c cVar = this.f15287k;
        if (cVar == null) {
            return;
        }
        cVar.show();
    }

    public final void l0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        String C = U().C();
        if (C == null) {
            C = "latest_first";
        }
        int r10 = wb.i.r(y3.a.f16424a.a(), C);
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.y(cVar, Integer.valueOf(R.string.action_sort), null, 2, null);
        s2.c.v(cVar, Integer.valueOf(R.string.text_ok), null, null, 6, null);
        b3.b.b(cVar, Integer.valueOf(R.array.sort), null, null, r10, false, new i(), 22, null);
        cVar.show();
    }

    public final void m0(ChipGroup chipGroup, MaterialButton materialButton) {
        boolean z10 = !(chipGroup.getVisibility() == 0);
        materialButton.setIconResource(z10 ? R.drawable.ic_baseline_expand_less_24dp : R.drawable.ic_baseline_expand_more_24dp);
        chipGroup.setVisibility(z10 ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        u1 c10 = u1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        e0(c10);
        return T().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f15286j = null;
        this.f15285i = null;
        s2.c cVar = this.f15287k;
        if (cVar != null) {
            cVar.dismiss();
        }
        this.f15287k = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        W();
        f0();
        w6.d dVar = new w6.d(this, null, 2, null);
        this.f15285i = dVar;
        dVar.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
        i0(view);
        j0();
        T().f8747h.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: w6.j
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                k.b0(k.this);
            }
        });
        w6.d dVar2 = this.f15285i;
        if (dVar2 != null) {
            dVar2.f(new b(view));
        }
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(androidx.lifecycle.r.a(viewLifecycleOwner), null, null, new c(null), 3, null);
    }
}
