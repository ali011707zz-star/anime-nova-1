package c5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import c5.k;
import com.anslayer.R;
import com.anslayer.ui.anime.characters.details.CharacterDetailsActivity;
import com.anslayer.ui.anime.characters.more.CharacterStaffBrowseActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import io.wax911.support.util.InstanceUtil;
import j4.j0;
import java.util.List;
import jc.m;
import jc.o;
import jc.y;
import p4.q;
import vb.n;
import vb.p;

/* compiled from: CharactersFragment.kt */
/* loaded from: classes.dex */
public final class i extends p5.a<p4.d, r5.a, p4.d> {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f3687j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f3688k = vb.f.a(new b());

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f3689l = c0.a(this, y.b(k.class), new d(new c(this)), new e());

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f3686n = {y.e(new o(i.class, "binding", "getBinding()Lcom/anslayer/databinding/CharactersFragmentBinding;", 0))};

    /* renamed from: m, reason: collision with root package name */
    public static final a f3685m = new a(null);

    /* compiled from: CharactersFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<i, Bundle> {

        /* compiled from: CharactersFragment.kt */
        /* renamed from: c5.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0075a extends m implements ic.l<Bundle, i> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0075a f3690f = new C0075a();

            public C0075a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final i invoke(Bundle bundle) {
                i iVar = new i();
                iVar.setArguments(bundle);
                return iVar;
            }
        }

        public a() {
            super(C0075a.f3690f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CharactersFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<r5.a> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(i.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f3692f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f3692f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f3692f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f3693f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f3693f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f3693f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: CharactersFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<l0.b> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = i.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new k.a(requireActivity, i.this);
        }
    }

    /* compiled from: CharactersFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.l<p4.e, p> {
        public f() {
            super(1);
        }

        public final void a(p4.e eVar) {
            jc.l.f(eVar, "mainCharacter");
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity == null) {
                return;
            }
            i.this.startActivity(CharacterDetailsActivity.f4162l.a(activity, eVar.b(), eVar.d()));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p4.e eVar) {
            a(eVar);
            return p.f15031a;
        }
    }

    /* compiled from: CharactersFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.l<p4.e, p> {
        public g() {
            super(1);
        }

        public final void a(p4.e eVar) {
            jc.l.f(eVar, "supportCharacter");
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity == null) {
                return;
            }
            i.this.startActivity(CharacterDetailsActivity.f4162l.a(activity, eVar.b(), eVar.d()));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p4.e eVar) {
            a(eVar);
            return p.f15031a;
        }
    }

    public static final void U(i iVar, View view) {
        jc.l.f(iVar, "this$0");
        ProgressLayout progressLayout = iVar.Q().f8453h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        iVar.e();
    }

    public static final void W(i iVar, long j10, View view) {
        jc.l.f(iVar, "this$0");
        Context context = iVar.getContext();
        Bundle bundle = new Bundle();
        bundle.putString("arg_title", "الشخصيات الرئيسية");
        bundle.putString("role", "main");
        bundle.putLong("anime_id", j10);
        Intent intent = new Intent(context, (Class<?>) CharacterStaffBrowseActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (context == null) {
            return;
        }
        context.startActivity(intent);
    }

    public static final void X(i iVar, long j10, View view) {
        jc.l.f(iVar, "this$0");
        Context context = iVar.getContext();
        Bundle bundle = new Bundle();
        bundle.putString("arg_title", "الشخصيات المساعدة");
        bundle.putString("role", "support");
        bundle.putLong("anime_id", j10);
        Intent intent = new Intent(context, (Class<?>) CharacterStaffBrowseActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (context == null) {
            return;
        }
        context.startActivity(intent);
    }

    public static final void Y(i iVar, long j10, View view) {
        jc.l.f(iVar, "this$0");
        Context context = iVar.getContext();
        Bundle bundle = new Bundle();
        bundle.putString("arg_title", "طاقم العمل");
        bundle.putBoolean("show_staff", true);
        bundle.putLong("anime_id", j10);
        Intent intent = new Intent(context, (Class<?>) CharacterStaffBrowseActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (context == null) {
            return;
        }
        context.startActivity(intent);
    }

    public final j0 Q() {
        return (j0) this.f3687j.f(this, f3686n[0]);
    }

    @Override // n5.a
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f3688k.getValue();
    }

    public k S() {
        return (k) this.f3689l.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public void B(p4.d dVar) {
        if (dVar == null) {
            k7.b.m(getContext(), Q().f8453h, R.string.empty_response, R.string.action_retry, new View.OnClickListener() { // from class: c5.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.U(i.this, view);
                }
            });
        } else {
            m();
        }
    }

    public final void V(j0 j0Var) {
        this.f3687j.a(this, f3686n[0], j0Var);
    }

    @Override // n5.a
    public void e() {
        k S = S();
        vb.i[] iVarArr = new vb.i[2];
        Bundle arguments = getArguments();
        iVarArr[0] = n.a("anime_id", arguments == null ? null : Long.valueOf(arguments.getLong("anime_id")));
        iVarArr[1] = n.a("type", "all");
        S.queryFor(m0.b.a(n.a("arg_json", com.github.salomonbrys.kotson.a.b(iVarArr).toString())), getContext());
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a7, code lost:
    
        if ((r1 == null || r1.isEmpty()) != false) goto L89;
     */
    @Override // n5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m() {
        p4.d modelData = S().getModelData();
        if (modelData == null) {
            return;
        }
        Bundle arguments = getArguments();
        Long valueOf = arguments == null ? null : Long.valueOf(arguments.getLong("anime_id"));
        if (valueOf == null) {
            return;
        }
        final long longValue = valueOf.longValue();
        List<p4.e> a10 = modelData.a();
        boolean z10 = true;
        if (a10 == null || a10.isEmpty()) {
            Group group = Q().f8451f;
            jc.l.e(group, "binding.mainGroup");
            group.setVisibility(8);
        } else {
            List<p4.e> a11 = modelData.a();
            SupportRecyclerView supportRecyclerView = Q().f8449d;
            jc.l.e(supportRecyclerView, "binding.mainCharactersList");
            h7.c.b(a11, supportRecyclerView, false, new f(), 2, null);
            Q().f8452g.setOnClickListener(new View.OnClickListener() { // from class: c5.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.W(i.this, longValue, view);
                }
            });
            TextView textView = Q().f8452g;
            jc.l.e(textView, "binding.mainSeeMore");
            textView.setVisibility(modelData.a().size() == 10 ? 0 : 8);
        }
        List<p4.e> c10 = modelData.c();
        if (c10 == null || c10.isEmpty()) {
            Group group2 = Q().f8463r;
            jc.l.e(group2, "binding.supportGroup");
            group2.setVisibility(8);
        } else {
            List<p4.e> c11 = modelData.c();
            SupportRecyclerView supportRecyclerView2 = Q().f8461p;
            jc.l.e(supportRecyclerView2, "binding.supportCharactersList");
            h7.c.b(c11, supportRecyclerView2, false, new g(), 2, null);
            Q().f8464s.setOnClickListener(new View.OnClickListener() { // from class: c5.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.X(i.this, longValue, view);
                }
            });
            TextView textView2 = Q().f8464s;
            jc.l.e(textView2, "binding.supportSeeMore");
            textView2.setVisibility(modelData.c().size() == 10 ? 0 : 8);
        }
        List<q> b10 = modelData.b();
        if (b10 == null || b10.isEmpty()) {
            Group group3 = Q().f8457l;
            jc.l.e(group3, "binding.staffGroup");
            group3.setVisibility(8);
        } else {
            List<q> b11 = modelData.b();
            SupportRecyclerView supportRecyclerView3 = Q().f8455j;
            jc.l.e(supportRecyclerView3, "binding.staffCharactersList");
            h7.c.j(b11, supportRecyclerView3, false, 2, null);
            Q().f8459n.setOnClickListener(new View.OnClickListener() { // from class: c5.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.Y(i.this, longValue, view);
                }
            });
            TextView textView3 = Q().f8459n;
            jc.l.e(textView3, "binding.staffSeeMore");
            textView3.setVisibility(modelData.b().size() == 10 ? 0 : 8);
        }
        TextView textView4 = Q().f8447b;
        jc.l.e(textView4, "binding.emptyText");
        List<p4.e> a12 = modelData.a();
        if (a12 == null || a12.isEmpty()) {
            List<p4.e> c12 = modelData.c();
            if (c12 == null || c12.isEmpty()) {
                List<q> b12 = modelData.b();
            }
        }
        z10 = false;
        textView4.setVisibility(z10 ? 0 : 8);
        ProgressLayout progressLayout = Q().f8453h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showLoadedContent(progressLayout);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        j0 c10 = j0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        V(c10);
        return Q().b();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ProgressLayout progressLayout = Q().f8453h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        if (S().hasModelData()) {
            m();
        } else {
            e();
        }
    }
}
