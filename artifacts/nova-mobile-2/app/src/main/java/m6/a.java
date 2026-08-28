package m6;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.github.mikephil.charting.charts.PieChart;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;
import j4.z2;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import jc.l;
import jc.o;
import jc.y;
import org.apache.http.HttpStatus;
import r4.j;
import x8.e;
import y8.k;
import y8.m;

/* compiled from: UserStaticsFragment.kt */
/* loaded from: classes.dex */
public final class a extends Fragment {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f10964n = {y.e(new o(a.class, "binding", "getBinding()Lcom/anslayer/databinding/UserStaticsFragmentBinding;", 0))};

    /* renamed from: h, reason: collision with root package name */
    public C0254a f10967h;

    /* renamed from: i, reason: collision with root package name */
    public w4.e f10968i;

    /* renamed from: j, reason: collision with root package name */
    public int f10969j;

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f10965f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f10966g = vb.f.a(new e());

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f10970k = vb.f.a(f.f10979f);

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f10971l = vb.f.a(g.f10980f);

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f10972m = vb.f.a(new d());

    /* compiled from: UserStaticsFragment.kt */
    /* renamed from: m6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0254a extends RecyclerView.h<RecyclerView.e0> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f10973a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ a f10974b;

        public C0254a(a aVar, Context context) {
            l.f(aVar, "this$0");
            l.f(context, "context");
            this.f10974b = aVar;
            this.f10973a = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            return this.f10974b.L();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            return i10 == 0 ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
            r4.a a10;
            l.f(e0Var, "holder");
            if (i10 == 0) {
                b bVar = (b) e0Var.itemView;
                if (this.f10974b.J() != null) {
                    w4.e J = this.f10974b.J();
                    l.c(J);
                    bVar.setData(J);
                    return;
                }
                return;
            }
            if (i10 != 1) {
                return;
            }
            m7.b bVar2 = (m7.b) e0Var.itemView;
            r4.b G = this.f10974b.G();
            j jVar = null;
            if (G != null && (a10 = G.a()) != null) {
                jVar = a10.e();
            }
            if (jVar != null) {
                bVar2.setData(jVar);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
            FrameLayout frameLayout;
            l.f(viewGroup, "parent");
            if (i10 == 1) {
                frameLayout = new b(this.f10973a);
            } else {
                m7.b bVar = new m7.b(this.f10973a, null, 2, null);
                bVar.c();
                frameLayout = bVar;
            }
            frameLayout.setLayoutParams(new RecyclerView.q(-1, -2));
            return new c(frameLayout);
        }
    }

    /* compiled from: UserStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends FrameLayout {

        /* renamed from: f, reason: collision with root package name */
        public final PieChart f10975f;

        /* renamed from: g, reason: collision with root package name */
        public final TextView f10976g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(context);
            l.f(context, "context");
            FrameLayout frameLayout = new FrameLayout(context);
            addView(frameLayout, l7.c.b(-1, -2, 8.0f, 8.0f, 8.0f, 8.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            int g10 = k7.b.g(8);
            linearLayout.setPadding(g10, g10, g10, g10);
            frameLayout.addView(linearLayout, l7.c.a(-1, -2));
            PieChart pieChart = new PieChart(context);
            this.f10975f = pieChart;
            pieChart.setVisibility(8);
            linearLayout.addView(pieChart, l7.c.c(-1, HttpStatus.SC_OK));
            TextView textView = new TextView(context);
            this.f10976g = textView;
            textView.setGravity(5);
            textView.setTextSize(11.0f);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.addView(textView, l7.c.c(-1, -2));
        }

        private final void setupAnimeChart(w4.e eVar) {
            d7.d dVar = d7.d.f5712a;
            Context context = getContext();
            l.e(context, "context");
            List<m> a10 = dVar.a(context, l4.a.Companion.a(eVar));
            if (a10.isEmpty()) {
                return;
            }
            setupChart(a10);
        }

        private final void setupChart(List<? extends m> list) {
            this.f10975f.setVisibility(0);
            y8.l lVar = new y8.l(list, "");
            lVar.F0(2.0f);
            k kVar = new k(lVar);
            kVar.t(false);
            lVar.u0(Color.parseColor("#c26fc1ea"), Color.parseColor("#c248c76d"), Color.parseColor("#c2f7464a"), Color.parseColor("#c29256f3"), Color.parseColor("#c2c956f3"), Color.parseColor("#c2fba640"));
            PieChart pieChart = this.f10975f;
            pieChart.setNoDataText(pieChart.getContext().getString(R.string.seriesStatsEmpty));
            pieChart.setUsePercentValues(true);
            pieChart.getDescription().g(false);
            pieChart.t(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 50.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            pieChart.setHoleColor(0);
            pieChart.setDrawHoleEnabled(true);
            pieChart.setHoleRadius(58.0f);
            pieChart.setTransparentCircleRadius(61.0f);
            pieChart.setRotationAngle(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            pieChart.setRotationEnabled(false);
            pieChart.setHighlightPerTapEnabled(false);
            x8.e legend = this.f10975f.getLegend();
            legend.L(e.f.TOP);
            legend.J(e.d.RIGHT);
            legend.K(e.EnumC0417e.VERTICAL);
            Context context = getContext();
            l.e(context, "context");
            legend.h(SupportExtentionKt.getColorFromAttr(context, android.R.attr.textColorPrimary));
            legend.H(false);
            legend.M(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            legend.N(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            legend.j(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            PieChart pieChart2 = this.f10975f;
            pieChart2.setDrawEntryLabels(false);
            pieChart2.setData(kVar);
            pieChart2.invalidate();
        }

        public final void setData(w4.e eVar) {
            l.f(eVar, "model");
            this.f10976g.setText(eVar.e());
            setupAnimeChart(eVar);
        }
    }

    /* compiled from: UserStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends RecyclerView.e0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            l.f(view, "view");
        }
    }

    /* compiled from: UserStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* renamed from: m6.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0255a extends oa.a<r4.b> {
        }

        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f I = a.this.I();
                String n10 = a.this.K().n();
                l.c(n10);
                Type type = new C0255a().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = I.l(n10, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: UserStaticsFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<r5.a> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(a.this.getContext());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f10979f = new f();

        /* compiled from: TypeInfo.kt */
        /* renamed from: m6.a$f$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0256a extends zd.a<ja.f> {
        }

        public f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new C0256a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final g f10980f = new g();

        /* compiled from: TypeInfo.kt */
        /* renamed from: m6.a$g$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0257a extends zd.a<f4.d> {
        }

        public g() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new C0257a().getType());
        }
    }

    public final r4.b G() {
        return (r4.b) this.f10972m.getValue();
    }

    public final z2 H() {
        return (z2) this.f10965f.f(this, f10964n[0]);
    }

    public final ja.f I() {
        return (ja.f) this.f10970k.getValue();
    }

    public final w4.e J() {
        return this.f10968i;
    }

    public final f4.d K() {
        return (f4.d) this.f10971l.getValue();
    }

    public final int L() {
        return this.f10969j;
    }

    public final void M(z2 z2Var) {
        l.f(z2Var, "<set-?>");
        this.f10965f.a(this, f10964n[0], z2Var);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        z2 c10 = z2.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        M(c10);
        return H().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f10967h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        r4.a a10;
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = H().f8875b;
        l.e(recyclerView, "binding.recycler");
        recyclerView.setPadding(0, 0, 0, 0);
        recyclerView.setClipToPadding(false);
        recyclerView.setHorizontalScrollBarEnabled(false);
        recyclerView.setVerticalScrollBarEnabled(false);
        j jVar = null;
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutAnimation(null);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        recyclerView.addItemDecoration(new m7.f(k7.b.g(12)));
        Context context = view.getContext();
        l.e(context, "view.context");
        C0254a c0254a = new C0254a(this, context);
        this.f10967h = c0254a;
        recyclerView.setAdapter(c0254a);
        w4.e eVar = (w4.e) requireArguments().getParcelable("user");
        if (eVar != null) {
            this.f10968i = eVar;
            this.f10969j = 1;
            if (G() != null) {
                r4.b G = G();
                if (G != null && (a10 = G.a()) != null) {
                    jVar = a10.e();
                }
                if (jVar != null) {
                    this.f10969j = 2;
                }
            }
            C0254a c0254a2 = this.f10967h;
            if (c0254a2 == null) {
                return;
            }
            c0254a2.notifyDataSetChanged();
        }
    }
}
