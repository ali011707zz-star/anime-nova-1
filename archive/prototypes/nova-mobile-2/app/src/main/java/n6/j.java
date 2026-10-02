package n6;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import androidx.lifecycle.z;
import com.anslayer.R;
import com.anslayer.data.comment_notification.NotificationWorker;
import com.anslayer.data.profile.UpdateProfileService;
import com.anslayer.ui.profile.FullscreenImageActivity;
import com.anslayer.ui.profile.self.blocked.BlockedUsersActivity;
import com.anslayer.ui.profile.self.edit.EditProfileActivity;
import com.anslayer.ui.profile.self.settings.UserSettingsActivity;
import com.anslayer.ui.recommend.RecommendActivity;
import com.anslayer.ui.webview.WebViewActivity;
import com.github.mikephil.charting.charts.PieChart;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import i6.o;
import i6.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.google.GoogleAuth;
import io.wax911.support.twitter.TwitterAuth;
import io.wax911.support.util.SupportAnalyticUtil;
import j4.p1;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import jc.m;
import jc.s;
import jc.y;
import n6.k;
import qc.t;
import rc.q0;
import x8.e;

/* compiled from: ProfileFragment.kt */
/* loaded from: classes.dex */
public final class j extends Fragment {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f11275n = {y.f(new s(j.class, "binding", "getBinding()Lcom/anslayer/databinding/ProfileFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f11276f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f11277g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f11278h;

    /* renamed from: i, reason: collision with root package name */
    public p f11279i;

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f11280j;

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f11281k;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f11282l;

    /* renamed from: m, reason: collision with root package name */
    public m7.b f11283m;

    /* compiled from: ProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* renamed from: n6.j$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0271a extends oa.a<r4.b> {
        }

        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f U = j.this.U();
                String n10 = j.this.W().n();
                jc.l.c(n10);
                Type type = new C0271a().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = U.l(n10, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: ProfileFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class b extends jc.j implements ic.l<View, p1> {

        /* renamed from: o, reason: collision with root package name */
        public static final b f11285o = new b();

        public b() {
            super(1, p1.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/ProfileFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final p1 invoke(View view) {
            jc.l.f(view, "p0");
            return p1.a(view);
        }
    }

    /* compiled from: ProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<s2.c, vb.p> {
        public c() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            j.this.Y();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ProfileFragment.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.ProfileFragment$onViewCreated$2", f = "ProfileFragment.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<pd.c, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11287f;

        public d(ac.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(dVar);
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(pd.c cVar, ac.d<? super vb.p> dVar) {
            return ((d) create(cVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f11287f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            j.this.s0();
            return vb.p.f15031a;
        }
    }

    /* compiled from: ProfileFragment.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.ProfileFragment$onViewCreated$4", f = "ProfileFragment.kt", l = {441}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11289f;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<w4.e> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ j f11291f;

            public a(j jVar) {
                this.f11291f = jVar;
            }

            @Override // uc.g
            public Object a(w4.e eVar, ac.d<? super vb.p> dVar) {
                this.f11291f.a0(eVar);
                return vb.p.f15031a;
            }
        }

        /* compiled from: SafeCollector.common.kt */
        /* loaded from: classes.dex */
        public static final class b implements uc.f<w4.e> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.f f11292f;

            /* compiled from: Collect.kt */
            /* loaded from: classes.dex */
            public static final class a implements uc.g<w4.e> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ uc.g f11293f;

                @cc.f(c = "com.anslayer.ui.profile.self.ProfileFragment$onViewCreated$4$invokeSuspend$$inlined$filter$1$2", f = "ProfileFragment.kt", l = {137}, m = "emit")
                /* renamed from: n6.j$e$b$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C0272a extends cc.d {

                    /* renamed from: f, reason: collision with root package name */
                    public /* synthetic */ Object f11294f;

                    /* renamed from: g, reason: collision with root package name */
                    public int f11295g;

                    public C0272a(ac.d dVar) {
                        super(dVar);
                    }

                    @Override // cc.a
                    public final Object invokeSuspend(Object obj) {
                        this.f11294f = obj;
                        this.f11295g |= Integer.MIN_VALUE;
                        return a.this.a(null, this);
                    }
                }

                public a(uc.g gVar) {
                    this.f11293f = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // uc.g
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public Object a(w4.e eVar, ac.d dVar) {
                    C0272a c0272a;
                    int i10;
                    if (dVar instanceof C0272a) {
                        c0272a = (C0272a) dVar;
                        int i11 = c0272a.f11295g;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c0272a.f11295g = i11 - Integer.MIN_VALUE;
                            Object obj = c0272a.f11294f;
                            Object d10 = bc.c.d();
                            i10 = c0272a.f11295g;
                            if (i10 != 0) {
                                vb.k.b(obj);
                                uc.g gVar = this.f11293f;
                                if (!eVar.J()) {
                                    c0272a.f11295g = 1;
                                    if (gVar.a(eVar, c0272a) == d10) {
                                        return d10;
                                    }
                                }
                            } else if (i10 == 1) {
                                vb.k.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            return vb.p.f15031a;
                        }
                    }
                    c0272a = new C0272a(dVar);
                    Object obj2 = c0272a.f11294f;
                    Object d102 = bc.c.d();
                    i10 = c0272a.f11295g;
                    if (i10 != 0) {
                    }
                    return vb.p.f15031a;
                }
            }

            public b(uc.f fVar) {
                this.f11292f = fVar;
            }

            @Override // uc.f
            public Object b(uc.g<? super w4.e> gVar, ac.d dVar) {
                Object b10 = this.f11292f.b(new a(gVar), dVar);
                return b10 == bc.c.d() ? b10 : vb.p.f15031a;
            }
        }

        public e(ac.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11289f;
            if (i10 == 0) {
                vb.k.b(obj);
                b bVar = new b(UpdateProfileService.f4088k.a());
                a aVar = new a(j.this);
                this.f11289f = 1;
                if (bVar.b(aVar, this) == d10) {
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

    /* compiled from: ProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.l<vb.p, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f11297f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ j f11298g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(View view, j jVar) {
            super(1);
            this.f11297f = view;
            this.f11298g = jVar;
        }

        public final void a(vb.p pVar) {
            jc.l.f(pVar, "it");
            NotificationWorker.a aVar = NotificationWorker.f4072s;
            Context context = this.f11297f.getContext();
            jc.l.e(context, "view.context");
            aVar.a(context);
            this.f11298g.requireActivity().finish();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(vb.p pVar) {
            a(pVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final g f11299f = new g();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public g() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final h f11300f = new h();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public h() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class i extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final i f11301f = new i();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public i() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: n6.j$j, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0273j extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f11302f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0273j(Fragment fragment) {
            super(0);
            this.f11302f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f11302f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class k extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f11303f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(ic.a aVar) {
            super(0);
            this.f11303f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f11303f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    public j() {
        super(R.layout.profile_fragment);
        this.f11276f = lb.a.a(this, b.f11285o);
        this.f11277g = c0.a(this, y.b(l.class), new k(new C0273j(this)), null);
        this.f11278h = vb.f.a(g.f11299f);
        this.f11280j = vb.f.a(h.f11300f);
        this.f11281k = vb.f.a(i.f11301f);
        this.f11282l = vb.f.a(new a());
    }

    public static final void b0(w4.e eVar, j jVar, View view) {
        String str;
        jc.l.f(eVar, "$model");
        jc.l.f(jVar, "this$0");
        if (jc.l.a(eVar.o(), "editor")) {
            str = "فريق التعديل يمكنه تعديل بيانات الانمي (يتطلب موافقة مشرف التعديلات)";
        } else if (!jc.l.a(eVar.o(), "moderator")) {
            return;
        } else {
            str = "مشرف التعديلات مسؤول على موافقة و تعديل البيانات من قبل الاعضاء الاخرين";
        }
        new MaterialAlertDialogBuilder(jVar.requireActivity()).setMessage((CharSequence) str).show();
    }

    public static final void c0(j jVar, w4.e eVar, View view) {
        jc.l.f(jVar, "this$0");
        jc.l.f(eVar, "$model");
        FullscreenImageActivity.a aVar = FullscreenImageActivity.f4238i;
        Context requireContext = jVar.requireContext();
        jc.l.e(requireContext, "requireContext()");
        jVar.startActivity(aVar.a(requireContext, eVar.y()));
        androidx.fragment.app.e activity = jVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public static final void d0(j jVar, w4.e eVar, View view) {
        jc.l.f(jVar, "this$0");
        jc.l.f(eVar, "$model");
        FullscreenImageActivity.a aVar = FullscreenImageActivity.f4238i;
        Context requireContext = jVar.requireContext();
        jc.l.e(requireContext, "requireContext()");
        jVar.startActivity(aVar.a(requireContext, eVar.E()));
        androidx.fragment.app.e activity = jVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public static final boolean e0(j jVar, View view, View view2) {
        jc.l.f(jVar, "this$0");
        jc.l.f(view, "$view");
        w4.e o10 = jVar.X().o();
        if (o10 == null) {
            return false;
        }
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        k7.b.b(context, o10.C(), R.string.username_copied);
        return true;
    }

    public static final void f0(j jVar, View view) {
        jc.l.f(jVar, "this$0");
        androidx.fragment.app.e activity = jVar.getActivity();
        if (activity == null) {
            return;
        }
        jVar.startActivity(new Intent(activity, (Class<?>) EditProfileActivity.class));
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public static final void g0(j jVar, n6.k kVar) {
        jc.l.f(jVar, "this$0");
        if (kVar == null) {
            return;
        }
        ProgressBar progressBar = jVar.T().f8627h;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        if (kVar instanceof k.c) {
            jVar.a0(((k.c) kVar).a());
            return;
        }
        if (kVar instanceof k.a) {
            jVar.Z(((k.a) kVar).a());
            return;
        }
        if (kVar instanceof k.b) {
            w4.e eVar = jVar.V().N().get();
            if (!eVar.J()) {
                jVar.a0(eVar);
            } else {
                jVar.Z(((k.b) kVar).a());
            }
        }
    }

    public static final void m0(j jVar, View view) {
        jc.l.f(jVar, "this$0");
        androidx.fragment.app.e activity = jVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.onBackPressed();
    }

    public static final boolean n0(final j jVar, MenuItem menuItem) {
        jc.l.f(jVar, "this$0");
        switch (menuItem.getItemId()) {
            case R.id.action_anime_contribution_dashboard /* 2131361845 */:
                jVar.h0();
                return true;
            case R.id.action_blocked_accounts /* 2131361854 */:
                jVar.i0();
                return true;
            case R.id.action_logout /* 2131361878 */:
                new MaterialAlertDialogBuilder(jVar.requireContext()).setMessage((CharSequence) "هل انت متأكد من تسجيل الخروج؟").setNegativeButton(R.string.Cancel, (DialogInterface.OnClickListener) null).setPositiveButton((CharSequence) "تسجيل الخروج", new DialogInterface.OnClickListener() { // from class: n6.a
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10) {
                        j.o0(j.this, dialogInterface, i10);
                    }
                }).show();
                return true;
            case R.id.action_my_recommends /* 2131361886 */:
                jVar.j0();
                return true;
            case R.id.action_user_settings /* 2131361903 */:
                jVar.k0();
                return true;
            default:
                return true;
        }
    }

    public static final void o0(j jVar, DialogInterface dialogInterface, int i10) {
        jc.l.f(jVar, "this$0");
        jVar.Y();
    }

    public final r4.b S() {
        return (r4.b) this.f11282l.getValue();
    }

    public final p1 T() {
        return (p1) this.f11276f.c(this, f11275n[0]);
    }

    public final ja.f U() {
        return (ja.f) this.f11280j.getValue();
    }

    public final f4.d V() {
        return (f4.d) this.f11278h.getValue();
    }

    public final f4.d W() {
        return (f4.d) this.f11281k.getValue();
    }

    public final l X() {
        return (l) this.f11277g.getValue();
    }

    public final void Y() {
        SupportAnalyticUtil d10;
        if (V().I()) {
            try {
                String r10 = V().r();
                if (jc.l.a(r10, "LOGIN_WITH_GOOGLE")) {
                    ICommonAuth.DefaultImpls.revokeProvider$default(GoogleAuth.INSTANCE, getContext(), null, 2, null);
                } else if (jc.l.a(r10, "LOGIN_WITH_TWITTER")) {
                    TwitterAuth.INSTANCE.disconnectProvider(getContext());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                Context context = getContext();
                if (context != null && (d10 = k7.b.d(context)) != null) {
                    d10.logException(e10);
                }
                toString();
            }
        }
        f4.d V = V();
        V.c(false);
        V.d0(false);
        V.S(null);
        f4.d.U(V, 0L, 1, null);
        V.N().set(w4.e.Companion.a());
        V.b0(0);
        V.i0(false);
        X().r();
    }

    public final void Z(Throwable th) {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, Integer.valueOf(R.string.text_account_failed_login_retry), null, null, 6, null);
        s2.c.v(cVar, Integer.valueOf(R.string.Ok), null, new c(), 2, null);
        cVar.show();
    }

    public final void a0(final w4.e eVar) {
        String str;
        eVar.toString();
        r0(eVar);
        T().f8632m.setOnClickListener(new View.OnClickListener() { // from class: n6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.c0(j.this, eVar, view);
            }
        });
        T().f8633n.setOnClickListener(new View.OnClickListener() { // from class: n6.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.d0(j.this, eVar, view);
            }
        });
        d4.c<Drawable> s10 = d4.a.b(T().f8632m).s(eVar.y());
        r7.j jVar = r7.j.f12974c;
        s10.g(jVar).G0().u0(T().f8632m);
        d4.a.b(T().f8633n).s(eVar.E()).g(jVar).G0().u0(T().f8633n);
        T().f8624e.setText(eVar.B());
        TextView textView = T().f8628i;
        jc.l.e(textView, "binding.role");
        textView.setVisibility(w4.f.a(eVar) ? 0 : 8);
        TextView textView2 = T().f8628i;
        if (jc.l.a(eVar.o(), "editor")) {
            str = "فريق التعديل";
        } else {
            str = jc.l.a(eVar.o(), "moderator") ? "مشرف التعديلات" : "";
        }
        textView2.setText(str);
        T().f8628i.setOnClickListener(new View.OnClickListener() { // from class: n6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.b0(w4.e.this, this, view);
            }
        });
        T().f8635p.setText(jc.l.m("@", eVar.C()));
        TextView textView3 = T().f8631l;
        String f10 = eVar.f();
        textView3.setText(f10 == null ? null : new qc.i("\n+").c(f10, " "));
        TextView textView4 = T().f8631l;
        jc.l.e(textView4, "binding.userBio");
        String f11 = eVar.f();
        boolean z10 = true;
        textView4.setVisibility(f11 == null || t.s(f11) ? 8 : 0);
        List c10 = wb.k.c();
        Locale locale = new Locale("ar");
        String m10 = eVar.m();
        if (!(m10 == null || m10.length() == 0)) {
            String m11 = eVar.m();
            jc.l.c(m11);
            c10.add(new i6.d(m11));
        }
        String g10 = eVar.g();
        if (!(g10 == null || g10.length() == 0)) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
                String g11 = eVar.g();
                jc.l.c(g11);
                Date parse = simpleDateFormat.parse(g11);
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("d MMMM yyyy", locale);
                jc.l.c(parse);
                String format = simpleDateFormat2.format(parse);
                jc.l.e(format, "birthTime");
                c10.add(new i6.a(format));
            } catch (Exception unused) {
            }
        }
        try {
            Date parse2 = new SimpleDateFormat("yyyy-MM-dd", locale).parse(eVar.A());
            SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("MMMM yyyy", locale);
            jc.l.c(parse2);
            String format2 = simpleDateFormat3.format(parse2);
            jc.l.e(format2, "joinTime");
            c10.add(new i6.c(format2));
        } catch (Exception unused2) {
        }
        if (w4.f.a(eVar)) {
            String n10 = eVar.n();
            if (n10 != null && n10.length() != 0) {
                z10 = false;
            }
            if (!z10) {
                c10.add(new o(eVar.n()));
            }
        }
        List a10 = wb.k.a(c10);
        p pVar = this.f11279i;
        if (pVar != null) {
            pVar.h(a10);
        }
        T().f8630k.setText(eVar.e());
        q0(eVar);
        boolean a11 = w4.f.a(V().N().get());
        MenuItem findItem = T().f8629j.getMenu().findItem(R.id.action_anime_contribution_dashboard);
        if (findItem != null) {
            findItem.setVisible(a11);
        }
        NestedScrollView nestedScrollView = T().f8622c;
        jc.l.e(nestedScrollView, "binding.contentGroup");
        nestedScrollView.setVisibility(0);
    }

    public final void h0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(WebViewActivity.f4369r.a(activity));
    }

    public final void i0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        w4.e o10 = X().o();
        Long valueOf = o10 == null ? null : Long.valueOf(o10.D());
        if (valueOf == null) {
            return;
        }
        startActivity(BlockedUsersActivity.f4250l.a(activity, "الحسابات المحظورة", valueOf.longValue()));
    }

    public final void j0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        w4.e o10 = X().o();
        Long valueOf = o10 == null ? null : Long.valueOf(o10.D());
        if (valueOf == null) {
            return;
        }
        startActivity(RecommendActivity.f4334l.a(activity, "توصياتي", "user_recommendations", valueOf.longValue(), true));
    }

    public final void k0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(new Intent(activity, (Class<?>) UserSettingsActivity.class));
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public final void l0() {
        T().f8629j.getBackground().setAlpha(0);
        MaterialToolbar materialToolbar = T().f8629j;
        androidx.fragment.app.e requireActivity = requireActivity();
        jc.l.e(requireActivity, "requireActivity()");
        materialToolbar.setOverflowIcon(SupportExtentionKt.getCompatDrawable(requireActivity, R.drawable.ic_menu_overflow_profile_circle));
        T().f8629j.setNavigationOnClickListener(new View.OnClickListener() { // from class: n6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.m0(j.this, view);
            }
        });
        T().f8629j.inflateMenu(R.menu.profile);
        T().f8629j.setOnMenuItemClickListener(new Toolbar.f() { // from class: n6.h
            @Override // androidx.appcompat.widget.Toolbar.f
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean n02;
                n02 = j.n0(j.this, menuItem);
                return n02;
            }
        });
        MenuItem findItem = T().f8629j.getMenu().findItem(R.id.action_anime_contribution_dashboard);
        if (findItem == null) {
            return;
        }
        findItem.setVisible(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f11279i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        l0();
        T().f8635p.setOnLongClickListener(new View.OnLongClickListener() { // from class: n6.g
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean e02;
                e02 = j.e0(j.this, view, view2);
                return e02;
            }
        });
        p0();
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        this.f11279i = new p(context);
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(getContext());
        flexboxLayoutManager.Z(0);
        flexboxLayoutManager.b0(0);
        T().f8625f.setLayoutManager(flexboxLayoutManager);
        T().f8625f.setAdapter(this.f11279i);
        ProgressBar progressBar = T().f8627h;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        NestedScrollView nestedScrollView = T().f8622c;
        jc.l.e(nestedScrollView, "binding.contentGroup");
        nestedScrollView.setVisibility(8);
        NestedScrollView nestedScrollView2 = T().f8622c;
        jc.l.e(nestedScrollView2, "binding.contentGroup");
        uc.f w10 = uc.h.w(pd.b.a(nestedScrollView2), new d(null));
        q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        uc.h.t(w10, r.a(viewLifecycleOwner));
        T().f8623d.setOnClickListener(new View.OnClickListener() { // from class: n6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                j.f0(j.this, view2);
            }
        });
        q viewLifecycleOwner2 = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner2, "viewLifecycleOwner");
        r.a(viewLifecycleOwner2).f(new e(null));
        X().m().i(getViewLifecycleOwner(), new z() { // from class: n6.i
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                j.g0(j.this, (k) obj);
            }
        });
        X().k().i(getViewLifecycleOwner(), new g7.b(new f(view, this)));
    }

    public final void p0() {
        r4.a a10;
        r4.b S = S();
        r4.j e10 = (S == null || (a10 = S.a()) == null) ? null : a10.e();
        if (e10 == null) {
            return;
        }
        Context requireContext = requireContext();
        jc.l.e(requireContext, "requireContext()");
        m7.b bVar = new m7.b(requireContext, null, 2, null);
        bVar.setData(e10);
        T().f8621b.addView(bVar, l7.c.d(-1, -2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 12.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        this.f11283m = bVar;
    }

    public final void q0(w4.e eVar) {
        d7.d dVar = d7.d.f5712a;
        Context context = T().f8634o.getContext();
        jc.l.e(context, "binding.userStatsBarChart.context");
        List<y8.m> a10 = dVar.a(context, l4.a.Companion.a(eVar));
        if (a10.isEmpty()) {
            return;
        }
        PieChart pieChart = T().f8634o;
        jc.l.e(pieChart, "binding.userStatsBarChart");
        pieChart.setVisibility(0);
        y8.l lVar = new y8.l(a10, "");
        lVar.F0(2.0f);
        y8.k kVar = new y8.k(lVar);
        kVar.t(false);
        lVar.u0(Color.parseColor("#c26fc1ea"), Color.parseColor("#c248c76d"), Color.parseColor("#c2f7464a"), Color.parseColor("#c29256f3"), Color.parseColor("#c2c956f3"), Color.parseColor("#c2fba640"));
        PieChart pieChart2 = T().f8634o;
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
        x8.e legend = T().f8634o.getLegend();
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
        PieChart pieChart3 = T().f8634o;
        pieChart3.setDrawEntryLabels(false);
        pieChart3.setData(kVar);
        pieChart3.invalidate();
    }

    public final void r0(w4.e eVar) {
        if (jc.l.a(V().N().get(), eVar)) {
            return;
        }
        V().N().set(eVar);
    }

    public final void s0() {
        Rect rect = new Rect();
        if ((T().f8632m.getGlobalVisibleRect(rect) && rect.height() <= k7.b.g(80)) || !T().f8632m.getGlobalVisibleRect(rect)) {
            T().f8629j.getBackground().setAlpha(BaseProgressIndicator.MAX_ALPHA);
        } else {
            T().f8629j.getBackground().setAlpha(0);
        }
        if (T().f8624e.getGlobalVisibleRect(rect)) {
            T().f8629j.setTitle("");
        } else {
            T().f8629j.setTitle(T().f8624e.getText());
        }
    }
}
