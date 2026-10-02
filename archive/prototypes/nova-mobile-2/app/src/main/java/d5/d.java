package d5;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.ui.actor.ActorDetailsActivity;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.profile.FullscreenImageActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import d5.f;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import j4.f0;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import jc.m;
import jc.o;
import jc.y;
import org.apache.http.HttpStatus;
import p4.p;
import p4.q;
import rc.g1;
import rc.q0;

/* compiled from: CharacterDetailsFragment.kt */
/* loaded from: classes.dex */
public final class d extends p5.a<p4.f, r5.a, p4.f> {

    /* renamed from: m, reason: collision with root package name */
    public d5.h f5626m;

    /* renamed from: n, reason: collision with root package name */
    public k f5627n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5629p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5630q;

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f5622t = {y.e(new o(d.class, "binding", "getBinding()Lcom/anslayer/databinding/CharacterDetailsBinding;", 0))};

    /* renamed from: s, reason: collision with root package name */
    public static final a f5621s = new a(null);

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f5623j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f5624k = vb.f.a(new e());

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f5625l = c0.a(this, y.b(d5.f.class), new h(new g(this)), new i());

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f5628o = vb.f.a(new f());

    /* renamed from: r, reason: collision with root package name */
    public final vb.e f5631r = vb.f.a(new b());

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<d, Bundle> {

        /* compiled from: CharacterDetailsFragment.kt */
        /* renamed from: d5.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0099a extends m implements ic.l<Bundle, d> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0099a f5632f = new C0099a();

            public C0099a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final d invoke(Bundle bundle) {
                d dVar = new d();
                dVar.setArguments(bundle);
                return dVar;
            }
        }

        public a() {
            super(C0099a.f5632f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<View> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final View invoke() {
            return LayoutInflater.from(d.this.getActivity()).inflate(R.layout.menu_progress, (ViewGroup) null);
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<p, vb.p> {
        public c() {
            super(1);
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "anime");
            androidx.fragment.app.e activity = d.this.getActivity();
            if (activity == null) {
                return;
            }
            d.this.startActivity(SeriesActivity.f4161l.a(activity, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(p pVar) {
            a(pVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* renamed from: d5.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0100d extends m implements ic.l<q, vb.p> {
        public C0100d() {
            super(1);
        }

        public final void a(q qVar) {
            jc.l.f(qVar, "it");
            androidx.fragment.app.e activity = d.this.getActivity();
            if (activity == null) {
                return;
            }
            d.this.startActivity(ActorDetailsActivity.f4160l.a(activity, qVar.a(), qVar.d()));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(q qVar) {
            a(qVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<r5.a> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(d.this.getContext());
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<SeriesEndpoint> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesEndpoint invoke() {
            Context context = d.this.getContext();
            if (context == null) {
                return null;
            }
            return (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class);
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f5638f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Fragment fragment) {
            super(0);
            this.f5638f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f5638f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f5639f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ic.a aVar) {
            super(0);
            this.f5639f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f5639f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends m implements ic.a<l0.b> {
        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = d.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new f.a(requireActivity, d.this);
        }
    }

    /* compiled from: CharacterDetailsFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.characters.details.CharacterDetailsFragment$toggleFavorite$1", f = "CharacterDetailsFragment.kt", l = {HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 209}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class j extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f5641f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p4.f f5643h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(p4.f fVar, ac.d<? super j> dVar) {
            super(2, dVar);
            this.f5643h = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new j(this.f5643h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((j) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f5641f;
            try {
            } catch (Exception unused) {
                d.this.W();
                androidx.fragment.app.e activity = d.this.getActivity();
                if (activity != null) {
                    k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                }
            }
            if (i10 != 0) {
                if (i10 == 1) {
                    vb.k.b(obj);
                    this.f5643h.c().h("No");
                    p4.e c10 = this.f5643h.c();
                    c10.j(c10.g() - 1);
                    d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
                    d.this.a0(false);
                    return vb.p.f15031a;
                }
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                this.f5643h.c().h("Yes");
                p4.e c11 = this.f5643h.c();
                c11.j(c11.g() + 1);
                d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
                d.this.a0(true);
                return vb.p.f15031a;
            }
            vb.k.b(obj);
            d.this.b0();
            if (d.this.f5629p) {
                SeriesEndpoint U = d.this.U();
                if (U != null) {
                    int b10 = this.f5643h.c().b();
                    this.f5641f = 1;
                    obj = U.unFavoriteCharacter(b10, this);
                    if (obj == d10) {
                        return d10;
                    }
                    this.f5643h.c().h("No");
                    p4.e c102 = this.f5643h.c();
                    c102.j(c102.g() - 1);
                    d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
                    d.this.a0(false);
                    return vb.p.f15031a;
                }
                this.f5643h.c().h("No");
                p4.e c1022 = this.f5643h.c();
                c1022.j(c1022.g() - 1);
                d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
                d.this.a0(false);
                return vb.p.f15031a;
            }
            SeriesEndpoint U2 = d.this.U();
            if (U2 != null) {
                int b11 = this.f5643h.c().b();
                this.f5641f = 2;
                obj = U2.favoriteCharacter(b11, this);
                if (obj == d10) {
                    return d10;
                }
                this.f5643h.c().h("Yes");
                p4.e c112 = this.f5643h.c();
                c112.j(c112.g() + 1);
                d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
                d.this.a0(true);
                return vb.p.f15031a;
            }
            this.f5643h.c().h("Yes");
            p4.e c1122 = this.f5643h.c();
            c1122.j(c1122.g() + 1);
            d.this.R().f8339f.setText(String.valueOf(this.f5643h.c().g()));
            d.this.a0(true);
            return vb.p.f15031a;
        }
    }

    public static final void Y(d dVar, View view) {
        jc.l.f(dVar, "this$0");
        ProgressLayout progressLayout = dVar.R().f8344k;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        dVar.e();
    }

    public static final void d0(View view, p4.f fVar, d dVar, View view2) {
        jc.l.f(view, "$view");
        jc.l.f(fVar, "$model");
        jc.l.f(dVar, "this$0");
        FullscreenImageActivity.a aVar = FullscreenImageActivity.f4238i;
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        dVar.startActivity(aVar.a(context, fVar.c().c()));
        androidx.fragment.app.e activity = dVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public final f0 R() {
        return (f0) this.f5623j.f(this, f5622t[0]);
    }

    public final View S() {
        return (View) this.f5631r.getValue();
    }

    @Override // n5.a
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f5624k.getValue();
    }

    public final SeriesEndpoint U() {
        return (SeriesEndpoint) this.f5628o.getValue();
    }

    public d5.f V() {
        return (d5.f) this.f5625l.getValue();
    }

    public final void W() {
        this.f5630q = false;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.invalidateOptionsMenu();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public void B(p4.f fVar) {
        if (fVar == null) {
            k7.b.m(getContext(), R().f8344k, R.string.empty_response, R.string.action_retry, new View.OnClickListener() { // from class: d5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.Y(d.this, view);
                }
            });
        } else {
            m();
        }
    }

    public final void Z(f0 f0Var) {
        this.f5623j.a(this, f5622t[0], f0Var);
    }

    public final void a0(boolean z10) {
        this.f5630q = false;
        this.f5629p = z10;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.invalidateOptionsMenu();
    }

    public final void b0() {
        this.f5630q = true;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.invalidateOptionsMenu();
    }

    public final void c0() {
        p4.f modelData = V().getModelData();
        if (modelData == null) {
            return;
        }
        rc.k.d(this, g1.c(), null, new j(modelData, null), 2, null);
    }

    @Override // n5.a
    public void e() {
        d5.f V = V();
        Bundle bundle = new Bundle();
        bundle.putAll(getArguments());
        V.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        final View view;
        final p4.f modelData = V().getModelData();
        if (modelData == null || (view = getView()) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            R().f8337d.setClipToOutline(true);
        }
        d4.a.a(view.getContext()).s(modelData.c().c()).g(r7.j.f12975d).G0().T(android.R.color.transparent).u0(R().f8337d);
        R().f8337d.setOnClickListener(new View.OnClickListener() { // from class: d5.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                d.d0(view, modelData, this, view2);
            }
        });
        R().f8340g.setText(modelData.c().d());
        TextView textView = R().f8339f;
        String format = String.format(Locale.US, "%,d", Arrays.copyOf(new Object[]{Integer.valueOf(modelData.c().g())}, 1));
        jc.l.e(format, "format(locale, this, *args)");
        textView.setText(format);
        a0(jc.l.a(modelData.c().a(), "Yes"));
        TextView textView2 = R().f8338e;
        jc.l.e(textView2, "binding.characterDescription");
        String e10 = modelData.c().e();
        textView2.setVisibility(e10 == null || e10.length() == 0 ? 8 : 0);
        R().f8338e.setText(modelData.c().e());
        TextView textView3 = R().f8347n;
        jc.l.e(textView3, "binding.voiceHeader");
        List<q> a10 = modelData.a();
        textView3.setVisibility((a10 == null || a10.isEmpty()) ^ true ? 0 : 8);
        k kVar = this.f5627n;
        if (kVar != null) {
            kVar.h(modelData.a());
        }
        d5.h hVar = this.f5626m;
        if (hVar != null) {
            hVar.h(modelData.b());
        }
        ProgressLayout progressLayout = R().f8344k;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showLoadedContent(progressLayout);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        I(R.menu.character_details);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        f0 c10 = f0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        Z(c10);
        return R().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f5626m = null;
        this.f5627n = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_favorite) {
            f4.d e10 = p().e();
            if ((e10 == null || e10.b()) ? false : true) {
                androidx.fragment.app.e activity = getActivity();
                if (activity != null) {
                    k7.b.q(activity, R.string.text_login_required, 0, 2, null);
                }
            } else {
                c0();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        jc.l.f(menu, "menu");
        MenuItem findItem = menu.findItem(R.id.action_favorite);
        boolean z10 = this.f5630q;
        if (z10) {
            if (findItem == null) {
                return;
            }
            findItem.setActionView(S());
        } else {
            if (!this.f5629p || z10) {
                if (findItem != null) {
                    findItem.setActionView((View) null);
                }
                if (findItem == null) {
                    return;
                }
                findItem.setIcon(R.drawable.ic_bx_heart_outline);
                return;
            }
            if (findItem != null) {
                findItem.setActionView((View) null);
            }
            if (findItem == null) {
                return;
            }
            findItem.setIcon(R.drawable.ic_bx_heart);
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ProgressLayout progressLayout = R().f8344k;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        if (V().hasModelData()) {
            m();
        } else {
            e();
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f5626m = new d5.h(new c());
        R().f8336c.setAdapter(this.f5626m);
        R().f8336c.setLayoutManager(new LinearLayoutManager(view.getContext()));
        R().f8336c.setHasFixedSize(true);
        this.f5627n = new k(new C0100d());
        R().f8346m.setAdapter(this.f5627n);
        R().f8346m.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        R().f8346m.setHasFixedSize(true);
    }
}
