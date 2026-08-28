package j5;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.cardview.widget.CardView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.z;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.charts.PieChart;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.u;
import j5.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.j;
import jc.m;
import jc.s;
import jc.y;
import oc.g;
import x4.f;
import x8.e;
import y8.k;

/* compiled from: AnimeStaticsFragment.kt */
/* loaded from: classes.dex */
public final class b extends Fragment {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ g<Object>[] f8877j = {y.f(new s(b.class, "binding", "getBinding()Lcom/anslayer/databinding/AnimeStaticsFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f8878f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f8879g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f8880h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f8881i;

    /* compiled from: AnimeStaticsFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a extends j implements l<View, u> {

        /* renamed from: o, reason: collision with root package name */
        public static final a f8882o = new a();

        public a() {
            super(1, u.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/AnimeStaticsFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final u invoke(View view) {
            jc.l.f(view, "p0");
            return u.a(view);
        }
    }

    /* compiled from: ErrorView.kt */
    /* renamed from: j5.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class ViewOnClickListenerC0161b implements View.OnClickListener {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ long f8884g;

        public ViewOnClickListenerC0161b(long j10) {
            this.f8884g = j10;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProgressBar progressBar = b.this.G().f8730d;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(0);
            ErrorView errorView = b.this.G().f8729c;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(8);
            b.this.I().b(this.f8884g);
        }
    }

    /* compiled from: AnimeStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<r5.a> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(b.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f8886f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment) {
            super(0);
            this.f8886f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f8886f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f8887f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ic.a aVar) {
            super(0);
            this.f8887f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f8887f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: AnimeStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<l0.b> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new c.a(b.this.getActivity());
        }
    }

    public b() {
        super(R.layout.anime_statics_fragment);
        this.f8878f = lb.a.a(this, a.f8882o);
        this.f8879g = c0.a(this, y.b(j5.c.class), new e(new d(this)), new f());
        this.f8880h = vb.f.a(new c());
    }

    public static final void L(b bVar, x4.f fVar) {
        jc.l.f(bVar, "this$0");
        if (fVar == null) {
            return;
        }
        ErrorView errorView = bVar.G().f8729c;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(8);
        ProgressBar progressBar = bVar.G().f8730d;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        NestedScrollView nestedScrollView = bVar.G().f8728b;
        jc.l.e(nestedScrollView, "binding.contentGroup");
        nestedScrollView.setVisibility(0);
        if (fVar instanceof f.b) {
            bVar.K((l4.c) ((f.b) fVar).a());
        } else if (fVar instanceof f.a) {
            bVar.J(((f.a) fVar).a());
        }
    }

    public final u G() {
        return (u) this.f8878f.c(this, f8877j[0]);
    }

    public final r5.a H() {
        return (r5.a) this.f8880h.getValue();
    }

    public final j5.c I() {
        return (j5.c) this.f8879g.getValue();
    }

    public final void J(Throwable th) {
        NestedScrollView nestedScrollView = G().f8728b;
        jc.l.e(nestedScrollView, "binding.contentGroup");
        nestedScrollView.setVisibility(8);
        ErrorView errorView = G().f8729c;
        jc.l.e(errorView, "binding.errorView");
        boolean z10 = false;
        errorView.setVisibility(0);
        androidx.fragment.app.e activity = getActivity();
        if (activity != null && !SupportExtentionKt.isConnectedToNetwork(activity)) {
            z10 = true;
        }
        if (z10) {
            G().f8729c.b();
        } else {
            G().f8729c.c();
        }
    }

    public final void K(l4.c cVar) {
        M(cVar.a());
        if (!this.f8881i) {
            N(cVar.b());
            return;
        }
        CardView cardView = G().f8731e;
        jc.l.e(cardView, "binding.ratingCard");
        cardView.setVisibility(8);
    }

    public final void M(l4.a aVar) {
        d7.d dVar = d7.d.f5712a;
        Context context = G().f8734h.getContext();
        jc.l.e(context, "binding.userStatsBarChart.context");
        List<y8.m> a10 = dVar.a(context, aVar);
        if (a10.isEmpty()) {
            return;
        }
        PieChart pieChart = G().f8734h;
        jc.l.e(pieChart, "binding.userStatsBarChart");
        SupportExtentionKt.visible(pieChart);
        y8.l lVar = new y8.l(a10, "");
        lVar.F0(2.0f);
        k kVar = new k(lVar);
        kVar.t(false);
        lVar.u0(Color.parseColor("#c26fc1ea"), Color.parseColor("#c248c76d"), Color.parseColor("#c2f7464a"), Color.parseColor("#c29256f3"), Color.parseColor("#c2c956f3"), Color.parseColor("#c2fba640"));
        PieChart pieChart2 = G().f8734h;
        pieChart2.setNoDataText(getString(R.string.seriesStatsEmpty));
        pieChart2.setUsePercentValues(true);
        pieChart2.getDescription().g(false);
        pieChart2.t(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 50.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        pieChart2.setHoleColor(0);
        pieChart2.setDrawHoleEnabled(true);
        pieChart2.setHoleRadius(58.0f);
        pieChart2.setTransparentCircleRadius(61.0f);
        pieChart2.setRotationAngle(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        pieChart2.setRotationEnabled(false);
        pieChart2.setHighlightPerTapEnabled(false);
        x8.e legend = G().f8734h.getLegend();
        legend.L(e.f.TOP);
        legend.J(e.d.RIGHT);
        legend.K(e.EnumC0417e.VERTICAL);
        Context requireContext = requireContext();
        jc.l.e(requireContext, "requireContext()");
        legend.h(SupportExtentionKt.getColorFromAttr(requireContext, android.R.attr.textColorPrimary));
        legend.H(false);
        legend.M(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        legend.N(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        legend.j(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        PieChart pieChart3 = G().f8734h;
        pieChart3.setDrawEntryLabels(false);
        pieChart3.setData(kVar);
        pieChart3.invalidate();
    }

    public final void N(List<l4.b> list) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        for (l4.b bVar : list) {
            arrayList.add(new y8.c(bVar.a(), bVar.b()));
        }
        y8.b bVar2 = new y8.b(arrayList, "توزيع الاصوات");
        bVar2.x0(10.0f);
        bVar2.v0(false);
        bVar2.w0(SupportExtentionKt.getColorFromAttr(context, android.R.attr.textColorPrimary));
        f4.d e10 = H().e();
        String str = e10 != null && e10.G() ? "#004ba0" : "#63a4ff";
        bVar2.u0(Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str), Color.parseColor(str));
        G().f8732f.getDescription().g(false);
        G().f8732f.setDrawGridBackground(false);
        G().f8732f.setDrawBarShadow(false);
        G().f8732f.setHighlightFullBarEnabled(true);
        d7.e eVar = new d7.e();
        ArrayList arrayList2 = new ArrayList(wb.m.q(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((l4.b) it2.next()).a()));
        }
        d7.e i10 = eVar.i(arrayList2);
        BarChart barChart = G().f8732f;
        jc.l.e(barChart, "binding.ratingChart");
        i10.h(barChart).g(context);
        d7.f fVar = new d7.f();
        BarChart barChart2 = G().f8732f;
        jc.l.e(barChart2, "binding.ratingChart");
        fVar.h(barChart2).g(context);
        y8.a aVar = new y8.a(bVar2);
        aVar.v(0.6f);
        G().f8732f.setData(aVar);
        G().f8732f.g();
        G().f8732f.setFitBars(true);
        G().f8732f.setPinchZoom(false);
        G().f8732f.setDoubleTapToZoomEnabled(false);
        G().f8732f.setScaleEnabled(false);
        G().f8732f.invalidate();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        ProgressBar progressBar = G().f8730d;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        NestedScrollView nestedScrollView = G().f8728b;
        jc.l.e(nestedScrollView, "binding.contentGroup");
        nestedScrollView.setVisibility(8);
        long j10 = requireArguments().getLong("anime_id");
        this.f8881i = requireArguments().getBoolean("not_yet_released");
        I().b(j10);
        G().f8729c.getBinding().f8511b.setOnClickListener(new ViewOnClickListenerC0161b(j10));
        I().c().i(getViewLifecycleOwner(), new z() { // from class: j5.a
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                b.L(b.this, (f) obj);
            }
        });
    }
}
