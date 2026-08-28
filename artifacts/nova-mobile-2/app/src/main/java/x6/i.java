package x6;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.ui.season.SeasonArchiveActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import j4.w1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.o;
import jc.y;
import x6.e;

/* compiled from: SeasonArchiveFragment.kt */
/* loaded from: classes.dex */
public class i extends Fragment implements e.c {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f16066j = {y.e(new o(i.class, "binding", "getBinding()Lcom/anslayer/databinding/SeasonArchiveFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f16067f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f16068g = vb.f.a(a.f16071f);

    /* renamed from: h, reason: collision with root package name */
    public e f16069h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f16070i;

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f16071f = new a();

        /* compiled from: TypeInfo.kt */
        /* renamed from: x6.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0414a extends zd.a<f4.d> {
        }

        public a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new C0414a().getType());
        }
    }

    public final List<String> E() {
        List<o4.h> list = G().g().get();
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((o4.h) it2.next()).a());
        }
        return arrayList;
    }

    public final w1 F() {
        return (w1) this.f16067f.f(this, f16066j[0]);
    }

    public final f4.d G() {
        return (f4.d) this.f16068g.getValue();
    }

    public final void H(w1 w1Var) {
        jc.l.f(w1Var, "<set-?>");
        this.f16067f.a(this, f16066j[0], w1Var);
    }

    @Override // x6.e.c
    public void f(String str) {
        jc.l.f(str, "year");
        Bundle a10 = m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", str), vb.n.a("anime_season", "Summer")).toString()), vb.n.a("current_season", jc.l.m("صيف ", str)));
        Intent intent = new Intent(requireActivity(), (Class<?>) SeasonArchiveActivity.class);
        intent.putExtras(a10);
        startActivity(intent);
    }

    @Override // x6.e.c
    public void k(String str) {
        jc.l.f(str, "year");
        Bundle a10 = m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", str), vb.n.a("anime_season", "Fall")).toString()), vb.n.a("current_season", jc.l.m("خريف ", str)));
        Intent intent = new Intent(requireActivity(), (Class<?>) SeasonArchiveActivity.class);
        intent.putExtras(a10);
        startActivity(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        w1 c10 = w1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        H(c10);
        return F().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f16070i = null;
        this.f16069h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ViewStub viewStub = F().f8787c;
        jc.l.e(viewStub, "binding.stubRecycler");
        if (viewStub.getVisibility() == 0) {
            return;
        }
        ViewStub viewStub2 = F().f8787c;
        jc.l.e(viewStub2, "binding.stubRecycler");
        viewStub2.setVisibility(0);
        ProgressBar progressBar = F().f8786b;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) F().b().findViewById(R.id.recycler);
        this.f16070i = recyclerView;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(F().b().getContext()));
        }
        RecyclerView recyclerView2 = this.f16070i;
        if (recyclerView2 != null) {
            recyclerView2.setHasFixedSize(true);
        }
        RecyclerView recyclerView3 = this.f16070i;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.f16069h);
        }
        e eVar = this.f16069h;
        if (eVar == null) {
            return;
        }
        eVar.h(E());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        e eVar = new e(this, requireArguments().getString("next_season_name"));
        this.f16069h = eVar;
        eVar.setStateRestorationPolicy(RecyclerView.h.a.PREVENT_WHEN_EMPTY);
    }

    @Override // x6.e.c
    public void r(String str) {
        jc.l.f(str, "year");
        Bundle a10 = m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", str), vb.n.a("anime_season", "Spring")).toString()), vb.n.a("current_season", jc.l.m("ربيع ", str)));
        Intent intent = new Intent(requireActivity(), (Class<?>) SeasonArchiveActivity.class);
        intent.putExtras(a10);
        startActivity(intent);
    }

    @Override // x6.e.c
    public void w(String str) {
        jc.l.f(str, "year");
        Bundle a10 = m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", str), vb.n.a("anime_season", "Winter")).toString()), vb.n.a("current_season", jc.l.m("شتاء ", str)));
        Intent intent = new Intent(requireActivity(), (Class<?>) SeasonArchiveActivity.class);
        intent.putExtras(a10);
        startActivity(intent);
    }
}
