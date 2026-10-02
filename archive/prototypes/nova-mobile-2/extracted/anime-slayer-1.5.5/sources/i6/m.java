package i6;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.fragment.app.v;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.z;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.anslayer.ui.profile.FullscreenImageActivity;
import com.anslayer.widget.ErrorView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.twitter.sdk.android.core.identity.AuthHandler;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import g7.c;
import io.wax911.support.SupportExtentionKt;
import j4.n1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import jc.s;
import jc.y;
import qc.t;

/* compiled from: PeopleProfileFragment.kt */
/* loaded from: classes.dex */
public final class m extends Fragment implements AppBarLayout.OnOffsetChangedListener {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f7838k = {y.f(new s(m.class, "binding", "getBinding()Lcom/anslayer/databinding/PeopleProfileFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f7839f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f7840g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f7841h;

    /* renamed from: i, reason: collision with root package name */
    public p f7842i;

    /* renamed from: j, reason: collision with root package name */
    public int f7843j;

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends v {

        /* renamed from: a, reason: collision with root package name */
        public final w4.e f7844a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f7845b;

        /* renamed from: c, reason: collision with root package name */
        public final int f7846c;

        /* renamed from: d, reason: collision with root package name */
        public final List<String> f7847d;

        public /* synthetic */ a(Fragment fragment, w4.e eVar, boolean z10, int i10, jc.g gVar) {
            this(fragment, eVar, (i10 & 4) != 0 ? false : z10);
        }

        @Override // b2.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String getPageTitle(int i10) {
            String str = this.f7847d.get(i10);
            jc.l.e(str, "tabTitles[position]");
            return str;
        }

        public final w4.e b() {
            return this.f7844a;
        }

        @Override // b2.a
        public int getCount() {
            return this.f7846c;
        }

        @Override // androidx.fragment.app.v
        public Fragment getItem(int i10) {
            if (i10 == 0) {
                m6.a aVar = new m6.a();
                aVar.setArguments(m0.b.a(vb.n.a("user", b())));
                return aVar;
            }
            if (i10 == 1) {
                j6.f fVar = new j6.f();
                fVar.setArguments(m0.b.a(vb.n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(b().D()))));
                return fVar;
            }
            if (i10 == 2) {
                k6.b bVar = new k6.b();
                bVar.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(b().D()))).toString())));
                return bVar;
            }
            if (i10 != 3) {
                l6.a aVar2 = new l6.a();
                aVar2.setArguments(m0.b.a(vb.n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(b().D()))));
                return aVar2;
            }
            u6.f fVar2 = new u6.f();
            fVar2.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("list_type", "user_recommendations"), vb.n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(b().D())), vb.n.a("All", Boolean.TRUE)).toString())));
            return fVar2;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Fragment fragment, w4.e eVar, boolean z10) {
            super(fragment.getChildFragmentManager(), 1);
            jc.l.f(fragment, "fragment");
            jc.l.f(eVar, "user");
            this.f7844a = eVar;
            this.f7845b = z10;
            this.f7846c = z10 ? 1 : 5;
            List l10 = wb.l.l(Integer.valueOf(R.string.user_statics), Integer.valueOf(R.string.people_list), Integer.valueOf(R.string.label_characters), Integer.valueOf(R.string.label_recommendation), Integer.valueOf(R.string.label_customlist));
            ArrayList arrayList = new ArrayList(wb.m.q(l10, 10));
            Iterator it2 = l10.iterator();
            while (it2.hasNext()) {
                arrayList.add(fragment.getResources().getString(((Number) it2.next()).intValue()));
            }
            this.f7847d = arrayList;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class b extends jc.j implements ic.l<View, n1> {

        /* renamed from: o, reason: collision with root package name */
        public static final b f7848o = new b();

        public b() {
            super(1, n1.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/PeopleProfileFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final n1 invoke(View view) {
            jc.l.f(view, "p0");
            return n1.a(view);
        }
    }

    /* compiled from: ErrorView.kt */
    /* loaded from: classes.dex */
    public static final class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            m.this.Q().l();
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.l<vb.p, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f7850f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view) {
            super(1);
            this.f7850f = view;
        }

        public final void a(vb.p pVar) {
            jc.l.f(pVar, "it");
            Context context = this.f7850f.getContext();
            jc.l.e(context, "view.context");
            k7.b.r(context, "تم الابلاغ بنجاح", 0, 2, null);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(vb.p pVar) {
            a(pVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<w4.e, vb.p> {
        public e() {
            super(1);
        }

        public final void a(w4.e eVar) {
            jc.l.f(eVar, "user");
            m.this.a0(eVar);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(w4.e eVar) {
            a(eVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<String, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f7852f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(View view) {
            super(1);
            this.f7852f = view;
        }

        public final void a(String str) {
            jc.l.f(str, "message");
            if (str.length() > 0) {
                Context context = this.f7852f.getContext();
                jc.l.e(context, "view.context");
                k7.b.r(context, str, 0, 2, null);
            } else {
                Context context2 = this.f7852f.getContext();
                jc.l.e(context2, "view.context");
                k7.b.q(context2, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(String str) {
            a(str);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.l<s2.c, vb.p> {
        public g() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            m.this.Q().n();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.l<s2.c, vb.p> {
        public h() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            m.this.Q().f();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.l<s2.c, vb.p> {
        public i() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            m.this.Q().o();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final j f7856f = new j();

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
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f7857f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(Fragment fragment) {
            super(0);
            this.f7857f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f7857f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f7858f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(ic.a aVar) {
            super(0);
            this.f7858f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f7858f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: PeopleProfileFragment.kt */
    /* renamed from: i6.m$m, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0154m extends jc.m implements ic.a<l0.b> {

        /* compiled from: PeopleProfileFragment.kt */
        /* renamed from: i6.m$m$a */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m f7860b;

            public a(m mVar) {
                this.f7860b = mVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                long j10 = this.f7860b.requireArguments().getLong(AuthHandler.EXTRA_USER_ID);
                androidx.fragment.app.e requireActivity = this.f7860b.requireActivity();
                jc.l.e(requireActivity, "requireActivity()");
                return new n((UserEndpoint) z3.b.f17284d.getInstance(requireActivity).b(UserEndpoint.class), j10);
            }
        }

        public C0154m() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(m.this);
        }
    }

    public m() {
        super(R.layout.people_profile_fragment);
        this.f7839f = lb.a.a(this, b.f7848o);
        this.f7840g = c0.a(this, y.b(n.class), new l(new k(this)), new C0154m());
        this.f7841h = vb.f.a(j.f7856f);
        this.f7843j = -1;
    }

    public static final void T(m mVar, w4.e eVar, View view) {
        jc.l.f(mVar, "this$0");
        jc.l.f(eVar, "$user");
        FullscreenImageActivity.a aVar = FullscreenImageActivity.f4238i;
        Context requireContext = mVar.requireContext();
        jc.l.e(requireContext, "requireContext()");
        mVar.startActivity(aVar.a(requireContext, eVar.y()));
        androidx.fragment.app.e activity = mVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public static final void U(m mVar, w4.e eVar, View view) {
        jc.l.f(mVar, "this$0");
        jc.l.f(eVar, "$user");
        FullscreenImageActivity.a aVar = FullscreenImageActivity.f4238i;
        Context requireContext = mVar.requireContext();
        jc.l.e(requireContext, "requireContext()");
        mVar.startActivity(aVar.a(requireContext, eVar.E()));
        androidx.fragment.app.e activity = mVar.getActivity();
        if (activity == null) {
            return;
        }
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public static final void V(w4.e eVar, m mVar, View view) {
        String str;
        jc.l.f(eVar, "$user");
        jc.l.f(mVar, "this$0");
        if (jc.l.a(eVar.o(), "editor")) {
            str = "فريق التعديل يمكنه تعديل بيانات الانمي (يتطلب موافقة مشرف التعديلات)";
        } else if (!jc.l.a(eVar.o(), "moderator")) {
            return;
        } else {
            str = "مشرف التعديلات مسؤول على موافقة و تعديل البيانات من قبل الاعضاء الاخرين";
        }
        new MaterialAlertDialogBuilder(mVar.requireActivity()).setMessage((CharSequence) str).show();
    }

    public static final boolean W(m mVar, View view, View view2) {
        jc.l.f(mVar, "this$0");
        jc.l.f(view, "$view");
        w4.e m10 = mVar.Q().m();
        if (m10 == null) {
            return false;
        }
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        k7.b.b(context, m10.C(), R.string.username_copied);
        return true;
    }

    public static final void X(m mVar, View view, View view2) {
        jc.l.f(mVar, "this$0");
        jc.l.f(view, "$view");
        if (!mVar.P().b()) {
            Context context = view.getContext();
            jc.l.e(context, "view.context");
            k7.b.q(context, R.string.text_login_required, 0, 2, null);
            return;
        }
        mVar.f0();
    }

    public static final void Y(m mVar, g7.c cVar) {
        jc.l.f(mVar, "this$0");
        if (cVar == null) {
            return;
        }
        if (cVar instanceof c.b) {
            ErrorView errorView = mVar.O().f8562f;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(8);
            CoordinatorLayout coordinatorLayout = mVar.O().f8561e;
            jc.l.e(coordinatorLayout, "binding.content");
            coordinatorLayout.setVisibility(8);
            ProgressBar progressBar = mVar.O().f8567k;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(0);
            return;
        }
        if (cVar instanceof c.C0133c) {
            mVar.S((w4.e) ((c.C0133c) cVar).a());
        } else if (cVar instanceof c.a) {
            mVar.R(((c.a) cVar).a());
        }
    }

    public static final void c0(m mVar, View view) {
        jc.l.f(mVar, "this$0");
        mVar.requireActivity().onBackPressed();
    }

    public static final boolean d0(m mVar, MenuItem menuItem) {
        jc.l.f(mVar, "this$0");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_report_user_image) {
            mVar.Z();
            return true;
        }
        if (itemId == R.id.block) {
            mVar.e0();
            return true;
        }
        if (itemId != R.id.unblock) {
            return true;
        }
        mVar.f0();
        return true;
    }

    public final n1 O() {
        return (n1) this.f7839f.c(this, f7838k[0]);
    }

    public final f4.d P() {
        return (f4.d) this.f7841h.getValue();
    }

    public final n Q() {
        return (n) this.f7840g.getValue();
    }

    public final void R(Throwable th) {
        androidx.fragment.app.e activity = getActivity();
        if ((activity == null || SupportExtentionKt.isConnectedToNetwork(activity)) ? false : true) {
            O().f8562f.b();
        } else {
            O().f8562f.c();
        }
        ProgressBar progressBar = O().f8567k;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        CoordinatorLayout coordinatorLayout = O().f8561e;
        jc.l.e(coordinatorLayout, "binding.content");
        coordinatorLayout.setVisibility(8);
        ErrorView errorView = O().f8562f;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(0);
    }

    public final void S(final w4.e eVar) {
        String str;
        O().f8572p.setOnClickListener(new View.OnClickListener() { // from class: i6.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m.T(m.this, eVar, view);
            }
        });
        O().f8573q.setOnClickListener(new View.OnClickListener() { // from class: i6.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m.U(m.this, eVar, view);
            }
        });
        d4.c<Drawable> s10 = d4.a.b(O().f8572p).s(eVar.y());
        r7.j jVar = r7.j.f12974c;
        s10.g(jVar).G0().u0(O().f8572p);
        d4.a.b(O().f8573q).s(eVar.E()).g(jVar).G0().u0(O().f8573q);
        O().f8564h.setText(eVar.B());
        TextView textView = O().f8568l;
        jc.l.e(textView, "binding.role");
        textView.setVisibility(w4.f.a(eVar) ? 0 : 8);
        TextView textView2 = O().f8568l;
        if (jc.l.a(eVar.o(), "editor")) {
            str = "فريق التعديل";
        } else {
            str = jc.l.a(eVar.o(), "moderator") ? "مشرف التعديلات" : "";
        }
        textView2.setText(str);
        O().f8568l.setOnClickListener(new View.OnClickListener() { // from class: i6.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m.V(w4.e.this, this, view);
            }
        });
        O().f8574r.setText(jc.l.m("@", eVar.C()));
        TextView textView3 = O().f8571o;
        String f10 = eVar.f();
        textView3.setText(f10 == null ? null : new qc.i("\n+").c(f10, " "));
        TextView textView4 = O().f8571o;
        jc.l.e(textView4, "binding.userBio");
        String f11 = eVar.f();
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
            if (!(n10 == null || n10.length() == 0)) {
                c10.add(new o(eVar.n()));
            }
        }
        List a10 = wb.k.a(c10);
        p pVar = this.f7842i;
        if (pVar != null) {
            pVar.h(a10);
        }
        O().f8565i.setOffscreenPageLimit(3);
        if (jc.l.a(eVar.p(), "No")) {
            O().f8558b.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
            O().f8565i.setAdapter(new a(this, eVar, true));
            O().f8569m.setupWithViewPager(O().f8565i);
        } else {
            O().f8565i.setAdapter(new a(this, eVar, false, 4, null));
            O().f8569m.setupWithViewPager(O().f8565i);
        }
        a0(eVar);
        ProgressBar progressBar = O().f8567k;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        ErrorView errorView = O().f8562f;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(8);
        CoordinatorLayout coordinatorLayout = O().f8561e;
        jc.l.e(coordinatorLayout, "binding.content");
        coordinatorLayout.setVisibility(0);
    }

    public final void Z() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, null, "هل انت متأكد من الابلاغ", null, 5, null);
        s2.c.p(cVar, Integer.valueOf(R.string.action_cancel), null, null, 6, null);
        s2.c.v(cVar, null, "نعم", new g(), 1, null);
        cVar.show();
    }

    public final void a0(w4.e eVar) {
        MenuItem findItem;
        MenuItem findItem2 = O().f8570n.getMenu().findItem(R.id.block);
        if (findItem2 == null || (findItem = O().f8570n.getMenu().findItem(R.id.unblock)) == null) {
            return;
        }
        if (!P().b()) {
            findItem2.setVisible(false);
            findItem.setVisible(false);
            return;
        }
        boolean a10 = jc.l.a(eVar.i(), "Yes");
        findItem2.setVisible(!a10);
        findItem.setVisible(a10);
        MaterialButton materialButton = O().f8559c;
        jc.l.e(materialButton, "binding.blocked");
        materialButton.setVisibility(a10 ? 0 : 8);
    }

    public final void b0() {
        O().f8570n.getBackground().setAlpha(0);
        MaterialToolbar materialToolbar = O().f8570n;
        Context requireContext = requireContext();
        jc.l.e(requireContext, "requireContext()");
        materialToolbar.setOverflowIcon(SupportExtentionKt.getCompatDrawable(requireContext, R.drawable.ic_menu_overflow_profile_circle));
        O().f8570n.setNavigationOnClickListener(new View.OnClickListener() { // from class: i6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m.c0(m.this, view);
            }
        });
        O().f8570n.inflateMenu(R.menu.people_profile);
        O().f8570n.setOnMenuItemClickListener(new Toolbar.f() { // from class: i6.k
            @Override // androidx.appcompat.widget.Toolbar.f
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean d02;
                d02 = m.d0(m.this, menuItem);
                return d02;
            }
        });
    }

    public final void e0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        w4.e m10 = Q().m();
        String B = m10 == null ? null : m10.B();
        if (B == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, null, "هل انت متأكد من حظر " + B + " ؟", null, 5, null);
        s2.c.p(cVar, Integer.valueOf(R.string.Cancel), null, null, 6, null);
        s2.c.v(cVar, null, "حظر", new h(), 1, null);
        cVar.show();
    }

    public final void f0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        w4.e m10 = Q().m();
        String B = m10 == null ? null : m10.B();
        if (B == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, null, "هل تريد الغاء الحظر عن " + B + " ؟", null, 5, null);
        s2.c.p(cVar, null, "لا", null, 5, null);
        s2.c.v(cVar, Integer.valueOf(R.string.Ok), null, new i(), 2, null);
        cVar.show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f7842i = null;
        super.onDestroyView();
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
        if (this.f7843j == -1) {
            this.f7843j = appBarLayout != null ? appBarLayout.getTotalScrollRange() : -1;
        }
        if (this.f7843j + i10 == 0) {
            if (Q().m() != null) {
                CollapsingToolbarLayout collapsingToolbarLayout = O().f8560d;
                w4.e m10 = Q().m();
                collapsingToolbarLayout.setTitle(m10 == null ? null : m10.B());
            } else {
                O().f8560d.setTitle(" ");
            }
            O().f8570n.getBackground().setAlpha(BaseProgressIndicator.MAX_ALPHA);
            return;
        }
        O().f8560d.setTitle(" ");
        O().f8570n.getBackground().setAlpha(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        b0();
        O().f8574r.setOnLongClickListener(new View.OnLongClickListener() { // from class: i6.j
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean W;
                W = m.W(m.this, view, view2);
                return W;
            }
        });
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        this.f7842i = new p(context);
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(getContext());
        flexboxLayoutManager.Z(0);
        flexboxLayoutManager.b0(0);
        O().f8563g.setLayoutManager(flexboxLayoutManager);
        O().f8563g.setAdapter(this.f7842i);
        O().f8559c.setOnClickListener(new View.OnClickListener() { // from class: i6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m.X(m.this, view, view2);
            }
        });
        O().f8558b.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        O().f8562f.getBinding().f8511b.setOnClickListener(new c());
        Q().j().i(getViewLifecycleOwner(), new z() { // from class: i6.l
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                m.Y(m.this, (g7.c) obj);
            }
        });
        Q().i().i(getViewLifecycleOwner(), new g7.b(new d(view)));
        Q().g().i(getViewLifecycleOwner(), new g7.b(new e()));
        Q().h().i(getViewLifecycleOwner(), new g7.b(new f(view)));
    }
}
