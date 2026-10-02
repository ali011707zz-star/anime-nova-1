package t6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;
import androidx.lifecycle.k;
import cc.k;
import com.anslayer.R;
import com.anslayer.ui.authintication.AuthActivity;
import com.anslayer.ui.search.FilterActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.SlayerImage;
import ic.l;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import io.wax911.support.util.SupportAnalyticUtil;
import j4.a1;
import jc.a0;
import jc.m;
import jc.o;
import jc.y;
import qc.u;
import rc.g1;
import rc.i;
import rc.q0;
import rc.y0;

/* compiled from: ComposerFragment.kt */
/* loaded from: classes.dex */
public final class d extends p5.a {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f14023j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f14024k = vb.f.a(g.f14039f);

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f14025l = vb.f.a(new f());

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f14026m = vb.f.a(new e());

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f14022o = {y.e(new o(d.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentComposeBinding;", 0))};

    /* renamed from: n, reason: collision with root package name */
    public static final a f14021n = new a(null);

    /* compiled from: ComposerFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<d, Bundle> {

        /* compiled from: ComposerFragment.kt */
        /* renamed from: t6.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0347a extends m implements l<Bundle, d> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0347a f14027f = new C0347a();

            public C0347a() {
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
            super(C0347a.f14027f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: ComposerFragment.kt */
    @cc.f(c = "com.anslayer.ui.recommend.create.ComposerFragment$makeRequest$1", f = "ComposerFragment.kt", l = {298}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14028f;

        public b(ac.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14028f;
            if (i10 == 0) {
                vb.k.b(obj);
                t6.e p10 = d.this.p();
                e7.d T = d.this.T();
                this.f14028f = 1;
                if (p10.m(T, this) == d10) {
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

    /* compiled from: ComposerFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<Throwable, vb.p> {

        /* compiled from: ComposerFragment.kt */
        @cc.f(c = "com.anslayer.ui.recommend.create.ComposerFragment$makeRequest$2$2", f = "ComposerFragment.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f14031f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Throwable f14032g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f14033h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Throwable th, d dVar, ac.d<? super a> dVar2) {
                super(2, dVar2);
                this.f14032g = th;
                this.f14033h = dVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f14032g, this.f14033h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f14031f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                if (this.f14032g != null) {
                    Toast.makeText(this.f14033h.getContext(), R.string.text_request_error, 0).show();
                } else {
                    Toast.makeText(this.f14033h.getContext(), R.string.text_request_success, 0).show();
                    androidx.fragment.app.e activity = this.f14033h.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                }
                this.f14033h.Q().f8132c.m();
                return vb.p.f15031a;
            }
        }

        public c() {
            super(1);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            Context context;
            SupportAnalyticUtil d10;
            if (th != null && (context = d.this.getContext()) != null && (d10 = k7.b.d(context)) != null) {
                d10.log("submitRecommendation(requestParams: RequestUtil)", th.getLocalizedMessage());
                d10.logException(th);
            }
            i.e(g1.c(), new a(th, d.this, null));
        }
    }

    /* compiled from: TextView.kt */
    /* renamed from: t6.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0348d implements TextWatcher {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a1 f14034f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f14035g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f14036h;

        public C0348d(a1 a1Var, int i10, int i11) {
            this.f14034f = a1Var;
            this.f14035g = i10;
            this.f14036h = i11;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            int length = charSequence == null ? 0 : charSequence.length();
            this.f14034f.f8136g.setText(String.valueOf(length));
            if (length >= 70 && length <= 300) {
                this.f14034f.f8136g.setTextColor(this.f14036h);
            } else {
                this.f14034f.f8136g.setTextColor(this.f14035g);
            }
        }
    }

    /* compiled from: ComposerFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<t6.e> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t6.e invoke() {
            return t6.e.f14040h.newInstance(d.this.getContext());
        }
    }

    /* compiled from: ComposerFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<u4.a> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u4.a invoke() {
            String string = d.this.getString(R.string.label_select_item);
            jc.l.e(string, "getString(R.string.label_select_item)");
            a0 a0Var = a0.f9170a;
            String empty = SupportExtentionKt.empty(a0Var);
            String empty2 = SupportExtentionKt.empty(a0Var);
            String string2 = d.this.getString(R.string.label_select_item);
            jc.l.e(string2, "getString(R.string.label_select_item)");
            return new u4.a(0L, string, empty, empty2, 0L, string2, SupportExtentionKt.empty(a0Var), SupportExtentionKt.empty(a0Var), 0L, SupportExtentionKt.empty(a0Var), SupportExtentionKt.empty(a0Var), 0, SupportExtentionKt.empty(a0Var), 0L, SupportExtentionKt.empty(a0Var), SupportExtentionKt.empty(a0Var), "", null, 131072, null);
        }
    }

    /* compiled from: ComposerFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<e7.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final g f14039f = new g();

        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e7.d invoke() {
            return new e7.d();
        }
    }

    public static final void V(d dVar, Intent intent, View view) {
        jc.l.f(dVar, "this$0");
        jc.l.f(intent, "$searchIntent");
        intent.putExtra("arg_model_key", "SEARCH_RESULT_ORIGINAL");
        dVar.startActivityForResult(intent, 25);
    }

    public static final void W(d dVar, Intent intent, View view) {
        jc.l.f(dVar, "this$0");
        jc.l.f(intent, "$searchIntent");
        intent.putExtra("arg_model_key", "SEARCH_RESULT_RECOMMENDED");
        dVar.startActivityForResult(intent, 25);
    }

    public final a1 Q() {
        return (a1) this.f14023j.f(this, f14022o[0]);
    }

    @Override // n5.a
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public t6.e p() {
        return (t6.e) this.f14026m.getValue();
    }

    public final u4.a S() {
        return (u4.a) this.f14025l.getValue();
    }

    public final e7.d T() {
        return (e7.d) this.f14024k.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public void B(Void r12) {
    }

    public final void X(a1 a1Var) {
        this.f14023j.a(this, f14022o[0], a1Var);
    }

    @Override // n5.a
    public void e() {
        y0 b10;
        S().H(u.t0(Q().f8131b.getText().toString()).toString());
        e7.d T = T();
        T.d().put("anime_id", Long.valueOf(S().f()));
        T.d().put("recommended_anime_id", Long.valueOf(S().o()));
        T.d().put("recommendation_comments", S().m());
        if (p().l(T())) {
            Q().f8132c.o();
            b10 = rc.k.b(this, null, null, new b(null), 3, null);
            b10.h0(new c());
        } else {
            Context context = getContext();
            if (context == null) {
                return;
            }
            k7.b.r(context, "يرجى ملئ الحقول", 0, 2, null);
        }
    }

    @Override // n5.a
    public void m() {
        SlayerImage slayerImage = Q().f8134e;
        jc.l.e(slayerImage, "binding.seriesImage");
        l7.b.b(slayerImage, S().e());
        SlayerImage slayerImage2 = Q().f8135f;
        jc.l.e(slayerImage2, "binding.seriesImageRecommended");
        l7.b.b(slayerImage2, S().n());
        if (S().f() < 1) {
            Q().f8134e.setImageResource(R.drawable.ic_add_grey_600_24dp);
        }
        if (S().o() < 1) {
            Q().f8135f.setImageResource(R.drawable.ic_add_grey_600_24dp);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        p4.p pVar;
        super.onActivityResult(i10, i11, intent);
        if (H(k.c.CREATED) && i10 == 25 && i11 == -1 && intent != null) {
            if (intent.hasExtra("SEARCH_RESULT_ORIGINAL")) {
                p4.p pVar2 = (p4.p) intent.getParcelableExtra("SEARCH_RESULT_ORIGINAL");
                if (pVar2 != null) {
                    u4.a S = S();
                    S.B(pVar2.m());
                    S.A(pVar2.e());
                    S.C(pVar2.n());
                    return;
                }
                return;
            }
            if (!intent.hasExtra("SEARCH_RESULT_RECOMMENDED") || (pVar = (p4.p) intent.getParcelableExtra("SEARCH_RESULT_RECOMMENDED")) == null) {
                return;
            }
            u4.a S2 = S();
            S2.J(pVar.m());
            S2.I(pVar.e());
            S2.K(pVar.n());
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        I(R.menu.recommend);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        a1 c10 = a1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        X(c10);
        return Q().b();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_save) {
            f4.d e10 = p().e();
            if (jc.l.a(e10 == null ? null : Boolean.valueOf(e10.b()), Boolean.TRUE)) {
                e();
            } else {
                Context context = getContext();
                if (context != null) {
                    Bundle bundle = new Bundle();
                    Intent intent = new Intent(context, (Class<?>) AuthActivity.class);
                    intent.setFlags(268435456);
                    intent.putExtras(bundle);
                    context.startActivity(intent);
                    Toast.makeText(context, R.string.text_login_required, 0).show();
                }
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        jc.l.f(bundle, "outState");
        super.onSaveInstanceState(bundle);
        Editable text = Q().f8131b.getText();
        if (text != null) {
            S().H(text.toString());
        }
        bundle.putParcelable("arg_model", S());
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        a1 Q = Q();
        final Intent intent = new Intent(getActivity(), (Class<?>) FilterActivity.class);
        intent.putExtra("anime_type", "TV");
        intent.putExtra("arg_apply_filter", true);
        Q.f8134e.setOnClickListener(new View.OnClickListener() { // from class: t6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                d.V(d.this, intent, view2);
            }
        });
        Q.f8135f.setOnClickListener(new View.OnClickListener() { // from class: t6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                d.W(d.this, intent, view2);
            }
        });
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        int colorFromAttr = SupportExtentionKt.getColorFromAttr(context, R.attr.colorError);
        Context context2 = view.getContext();
        jc.l.e(context2, "view.context");
        int colorFromAttr2 = SupportExtentionKt.getColorFromAttr(context2, R.attr.colorOnBackground);
        EditText editText = Q.f8131b;
        jc.l.e(editText, "commentEditText");
        editText.addTextChangedListener(new C0348d(Q, colorFromAttr, colorFromAttr2));
        Q.f8132c.m();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        u4.a aVar;
        super.onViewStateRestored(bundle);
        if (bundle == null || (aVar = (u4.a) bundle.getParcelable("arg_model")) == null) {
            return;
        }
        u4.a S = S();
        S.B(aVar.f());
        S.C(aVar.g());
        S.A(aVar.e());
        S.J(aVar.o());
        S.K(aVar.p());
        S.I(aVar.n());
        S.H(aVar.m());
    }
}
