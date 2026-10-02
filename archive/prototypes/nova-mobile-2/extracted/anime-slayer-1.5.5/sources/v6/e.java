package v6;

import android.content.Context;
import android.os.Bundle;
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
import androidx.lifecycle.z;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.ErrorView;
import io.wax911.support.SupportExtentionKt;
import j4.s1;
import java.util.List;
import jc.l;
import jc.m;
import jc.o;
import jc.y;
import p4.p;
import x4.f;

/* compiled from: ScheduleFragment.kt */
/* loaded from: classes.dex */
public final class e extends Fragment {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f14848i = {y.e(new o(e.class, "binding", "getBinding()Lcom/anslayer/databinding/ScheduleFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f14849f = c0.a(this, y.b(g.class), new d(new c(this)), new C0388e());

    /* renamed from: g, reason: collision with root package name */
    public final kc.a f14850g = FragmentExtensionsKt.a(this);

    /* renamed from: h, reason: collision with root package name */
    public v6.b f14851h;

    /* compiled from: ErrorView.kt */
    /* loaded from: classes.dex */
    public static final class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProgressBar progressBar = e.this.G().f8710c;
            l.e(progressBar, "binding.progress");
            progressBar.setVisibility(0);
            ErrorView errorView = e.this.G().f8709b;
            l.e(errorView, "binding.errorView");
            errorView.setVisibility(8);
            e.this.H().d();
        }
    }

    /* compiled from: ScheduleFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.l<p, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f14853f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e f14854g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view, e eVar) {
            super(1);
            this.f14853f = view;
            this.f14854g = eVar;
        }

        public final void a(p pVar) {
            l.f(pVar, "anime");
            SeriesActivity.a aVar = SeriesActivity.f4161l;
            Context context = this.f14853f.getContext();
            l.e(context, "view.context");
            this.f14854g.startActivity(aVar.a(context, pVar.m(), pVar.n(), pVar.g0(), pVar.i0()));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(p pVar) {
            a(pVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f14855f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f14855f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f14855f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f14856f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f14856f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f14856f.invoke()).getViewModelStore();
            l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: ScheduleFragment.kt */
    /* renamed from: v6.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0388e extends m implements ic.a<l0.b> {

        /* compiled from: ScheduleFragment.kt */
        /* renamed from: v6.e$e$a */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e f14858b;

            public a(e eVar) {
                this.f14858b = eVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                l.f(cls, "modelClass");
                Context context = this.f14858b.getContext();
                return new g(context == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class));
            }
        }

        public C0388e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(e.this);
        }
    }

    public static final void K(e eVar, x4.f fVar) {
        l.f(eVar, "this$0");
        if (fVar == null) {
            return;
        }
        ProgressBar progressBar = eVar.G().f8710c;
        l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        if (fVar instanceof f.b) {
            eVar.J((List) ((f.b) fVar).a());
        } else if (fVar instanceof f.a) {
            eVar.I(((f.a) fVar).a());
        }
    }

    public final s1 G() {
        return (s1) this.f14850g.f(this, f14848i[0]);
    }

    public final g H() {
        return (g) this.f14849f.getValue();
    }

    public final void I(Throwable th) {
        ErrorView errorView = G().f8709b;
        l.e(errorView, "binding.errorView");
        boolean z10 = false;
        errorView.setVisibility(0);
        androidx.fragment.app.e activity = getActivity();
        if (activity != null && !SupportExtentionKt.isConnectedToNetwork(activity)) {
            z10 = true;
        }
        if (z10) {
            G().f8709b.b();
        } else {
            G().f8709b.c();
        }
    }

    public final void J(List<? extends p4.o> list) {
        if (list.isEmpty()) {
            ErrorView errorView = G().f8709b;
            l.e(errorView, "binding.errorView");
            errorView.setVisibility(0);
            G().f8709b.a("لا يوجد بيانات");
            return;
        }
        ErrorView errorView2 = G().f8709b;
        l.e(errorView2, "binding.errorView");
        errorView2.setVisibility(8);
        v6.b bVar = this.f14851h;
        if (bVar == null) {
            return;
        }
        bVar.h(list);
    }

    public final void L(s1 s1Var) {
        l.f(s1Var, "<set-?>");
        this.f14850g.a(this, f14848i[0], s1Var);
    }

    public final void M() {
        G().f8711d.setLayoutManager(new StaggeredGridLayoutManager(getResources().getInteger(R.integer.grid_list_x3), 1));
        G().f8711d.setHasFixedSize(true);
        G().f8711d.setAdapter(this.f14851h);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.f(menu, "menu");
        l.f(menuInflater, "inflater");
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setVisible(false);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        s1 c10 = s1.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        L(c10);
        return G().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f14851h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        ProgressBar progressBar = G().f8710c;
        l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        this.f14851h = new v6.b(new b(view, this));
        M();
        G().f8709b.getBinding().f8511b.setOnClickListener(new a());
        H().e().i(getViewLifecycleOwner(), new z() { // from class: v6.d
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                e.K(e.this, (x4.f) obj);
            }
        });
    }
}
