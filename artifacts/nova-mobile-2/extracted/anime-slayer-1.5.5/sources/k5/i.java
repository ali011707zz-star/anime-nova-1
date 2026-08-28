package k5;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.z;
import com.anslayer.R;
import com.anslayer.ui.authintication.AuthActivity;
import com.google.android.gms.common.Scopes;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import g7.c;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.model.SocialUser;
import io.wax911.support.google.GoogleAuth;
import io.wax911.support.twitter.TwitterAuth;
import j4.y0;
import java.util.Map;
import java.util.regex.Pattern;
import jc.s;
import jc.y;
import k5.i;
import k5.l;
import k5.m;
import rd.q;
import retrofit2.HttpException;
import vb.p;

/* compiled from: AuthSelectionFragment.kt */
/* loaded from: classes.dex */
public final class i extends Fragment {

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f9930f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f9931g;

    /* renamed from: h, reason: collision with root package name */
    public Snackbar f9932h;

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f9933i;

    /* renamed from: j, reason: collision with root package name */
    public m7.i f9934j;

    /* renamed from: k, reason: collision with root package name */
    public final j f9935k;

    /* renamed from: l, reason: collision with root package name */
    public final d f9936l;

    /* renamed from: m, reason: collision with root package name */
    public final e f9937m;

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f9928o = {y.f(new s(i.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentAuthSelectionBinding;", 0))};

    /* renamed from: n, reason: collision with root package name */
    public static final a f9927n = new a(null);

    /* renamed from: p, reason: collision with root package name */
    public static final Pattern f9929p = Pattern.compile("([a-zA-Z0-9]+)([\\.{1}])?([a-zA-Z0-9]+)\\@g(oogle)?mail([\\.])[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}");

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final Pattern a() {
            return i.f9929p;
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    @SuppressLint({"ViewConstructor"})
    /* loaded from: classes.dex */
    public static final class b extends FrameLayout {

        /* renamed from: f, reason: collision with root package name */
        public final TextInputLayout f9938f;

        /* renamed from: g, reason: collision with root package name */
        public final TextInputEditText f9939g;

        /* compiled from: TextView.kt */
        /* loaded from: classes.dex */
        public static final class a implements TextWatcher {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ ic.l f9940f;

            public a(ic.l lVar) {
                this.f9940f = lVar;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String obj;
                ic.l lVar = this.f9940f;
                String str = "";
                if (editable != null && (obj = editable.toString()) != null) {
                    str = obj;
                }
                lVar.invoke(str);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, String str, ic.l<? super String, p> lVar) {
            super(context);
            jc.l.f(context, "context");
            jc.l.f(lVar, "onTextChanged");
            TextInputLayout textInputLayout = new TextInputLayout(context);
            this.f9938f = textInputLayout;
            TextInputEditText textInputEditText = new TextInputEditText(textInputLayout.getContext());
            this.f9939g = textInputEditText;
            textInputLayout.addView(textInputEditText);
            addView(textInputLayout, new FrameLayout.LayoutParams(-1, -2));
            textInputLayout.setHint(str);
            textInputEditText.setInputType(33);
            textInputEditText.setFocusable(true);
            textInputEditText.setImeOptions(6);
            textInputEditText.addTextChangedListener(new a(lVar));
            textInputEditText.requestFocus();
            setPadding(k7.b.g(24), k7.b.g(8), k7.b.g(24), k7.b.g(12));
        }

        public final TextInputEditText getEditText() {
            return this.f9939g;
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class c extends jc.j implements ic.l<View, y0> {

        /* renamed from: o, reason: collision with root package name */
        public static final c f9941o = new c();

        public c() {
            super(1, y0.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/FragmentAuthSelectionBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final y0 invoke(View view) {
            jc.l.f(view, "p0");
            return y0.a(view);
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public static final class d implements AuthCallback {
        public d() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onCancel() {
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity != null) {
                k7.b.q(activity, R.string.text_request_cancelled, 0, 2, null);
            }
            i.this.U().S(null);
            i.this.T().f8833e.m();
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onError(Throwable th) {
            jc.l.f(th, "error");
            th.printStackTrace();
            i.this.T().f8833e.m();
            i.this.U().S(null);
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onSuccess(SocialUser socialUser) {
            jc.l.f(socialUser, "socialUser");
            i.this.V().r(socialUser.getAccessToken());
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public static final class e implements ic.p<s2.c, CharSequence, p> {
        public e() {
        }

        public static final void c(i iVar, View view) {
            jc.l.f(iVar, "this$0");
            Snackbar snackbar = iVar.f9932h;
            if (snackbar == null) {
                return;
            }
            snackbar.dismiss();
        }

        public void b(s2.c cVar, CharSequence charSequence) {
            jc.l.f(cVar, "dialog");
            jc.l.f(charSequence, Scopes.EMAIL);
            i iVar = i.this;
            Snackbar make = Snackbar.make(iVar.T().f8833e, R.string.text_checking_email, -2);
            final i iVar2 = i.this;
            make.setAction(R.string.Ok, new View.OnClickListener() { // from class: k5.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.e.c(i.this, view);
                }
            });
            iVar.f9932h = make;
            Snackbar snackbar = i.this.f9932h;
            if (snackbar != null) {
                snackbar.show();
            }
            i.this.V().h(charSequence.toString());
            cVar.dismiss();
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar, CharSequence charSequence) {
            b(cVar, charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<g7.c<? extends String>, p> {
        public f() {
            super(1);
        }

        public final void a(g7.c<String> cVar) {
            jc.l.f(cVar, "it");
            if (jc.l.a(cVar, c.b.f7022a)) {
                i.this.S();
                i iVar = i.this;
                Context requireContext = i.this.requireContext();
                jc.l.e(requireContext, "requireContext()");
                iVar.f9934j = new m7.i(requireContext, false, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                m7.i iVar2 = i.this.f9934j;
                jc.l.c(iVar2);
                iVar2.show();
                return;
            }
            if (cVar instanceof c.a) {
                i.this.S();
                Exception a10 = ((c.a) cVar).a();
                if (a10 instanceof HttpException) {
                    q<?> c10 = ((HttpException) a10).c();
                    Map<String, String> b10 = x4.b.b(c10 == null ? null : c10.d());
                    String str = b10 != null ? b10.get("detail") : null;
                    if (str == null) {
                        str = i.this.getString(R.string.text_request_error);
                        jc.l.e(str, "getString(R.string.text_request_error)");
                    }
                    androidx.fragment.app.e activity = i.this.getActivity();
                    if (activity == null) {
                        return;
                    }
                    k7.b.p(activity, str, 1);
                    return;
                }
                androidx.fragment.app.e activity2 = i.this.getActivity();
                if (activity2 == null) {
                    return;
                }
                k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                return;
            }
            if (cVar instanceof c.C0133c) {
                String str2 = (String) ((c.C0133c) cVar).a();
                i.this.S();
                androidx.fragment.app.e activity3 = i.this.getActivity();
                if (activity3 == null) {
                    return;
                }
                k7.b.p(activity3, str2, 1);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends String> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final g f9945f = new g();

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

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f9946f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Fragment fragment) {
            super(0);
            this.f9946f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f9946f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: k5.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0208i extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f9947f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0208i(ic.a aVar) {
            super(0);
            this.f9947f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f9947f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: AuthSelectionFragment.kt */
    /* loaded from: classes.dex */
    public static final class j implements AuthCallback {
        public j() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onCancel() {
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity != null) {
                k7.b.q(activity, R.string.text_request_cancelled, 0, 2, null);
            }
            i.this.U().S(null);
            i.this.T().f8833e.m();
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onError(Throwable th) {
            jc.l.f(th, "error");
            th.printStackTrace();
            i.this.T().f8833e.m();
            i.this.U().S(null);
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onSuccess(SocialUser socialUser) {
            jc.l.f(socialUser, "socialUser");
            i.this.V().u(socialUser.getAccessToken(), socialUser.getSecretToken());
        }
    }

    public i() {
        super(R.layout.fragment_auth_selection);
        this.f9930f = lb.a.a(this, c.f9941o);
        this.f9931g = vb.f.a(g.f9945f);
        this.f9933i = c0.a(this, y.b(k.class), new C0208i(new h(this)), null);
        this.f9935k = new j();
        this.f9936l = new d();
        this.f9937m = new e();
    }

    public static final void Y(i iVar, View view) {
        jc.l.f(iVar, "this$0");
        s2.c b10 = k7.c.b(iVar.getActivity(), 33, iVar.f9937m);
        if (b10 == null) {
            return;
        }
        b10.show();
    }

    public static final void Z(i iVar, View view) {
        jc.l.f(iVar, "this$0");
        ICommonAuth.DefaultImpls.connectToProvider$default(TwitterAuth.INSTANCE, iVar.getContext(), iVar.f9935k, null, 4, null);
    }

    public static final void a0(i iVar, View view) {
        jc.l.f(iVar, "this$0");
        ICommonAuth.DefaultImpls.connectToProvider$default(GoogleAuth.INSTANCE, iVar.getContext(), iVar.f9936l, null, 4, null);
    }

    public static final void b0(i iVar, m mVar) {
        jc.l.f(iVar, "this$0");
        if (mVar == null) {
            return;
        }
        if (mVar instanceof m.b) {
            iVar.T().f8833e.o();
            return;
        }
        if (mVar instanceof m.c) {
            androidx.fragment.app.e activity = iVar.getActivity();
            if (activity == null) {
                return;
            }
            activity.finish();
            return;
        }
        if (mVar instanceof m.a) {
            iVar.T().f8833e.m();
            m.a aVar = (m.a) mVar;
            if (aVar.a() != null) {
                androidx.fragment.app.e activity2 = iVar.getActivity();
                if (activity2 == null) {
                    return;
                }
                k7.b.p(activity2, aVar.a(), 1);
                return;
            }
            androidx.fragment.app.e activity3 = iVar.getActivity();
            if (activity3 == null) {
                return;
            }
            k7.b.q(activity3, R.string.text_request_error, 0, 2, null);
        }
    }

    public static final void c0(i iVar, l lVar) {
        androidx.fragment.app.e activity;
        jc.l.f(iVar, "this$0");
        if (lVar == null) {
            return;
        }
        if (lVar instanceof l.b) {
            iVar.W(((l.b) lVar).a());
            return;
        }
        if (lVar instanceof l.c) {
            iVar.X(((l.c) lVar).a());
        } else {
            if (!(lVar instanceof l.a) || (activity = iVar.getActivity()) == null) {
                return;
            }
            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
        }
    }

    public final void S() {
        m7.i iVar = this.f9934j;
        if (iVar != null) {
            try {
                jc.l.c(iVar);
                iVar.dismiss();
            } catch (Exception unused) {
            }
            this.f9934j = null;
        }
    }

    public final y0 T() {
        return (y0) this.f9930f.c(this, f9928o[0]);
    }

    public final f4.d U() {
        return (f4.d) this.f9931g.getValue();
    }

    public final k V() {
        return (k) this.f9933i.getValue();
    }

    public final void W(String str) {
        androidx.fragment.app.e activity = getActivity();
        Bundle bundle = new Bundle();
        bundle.putString("userEmail", str);
        bundle.putString("arg_request_type", "LOGIN_WITH_EMAIL");
        Context context = getContext();
        bundle.putString("arg_title", context == null ? null : context.getString(R.string.title_activity_login));
        Intent intent = new Intent(activity, (Class<?>) AuthActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (activity != null) {
            activity.startActivity(intent);
        }
        androidx.fragment.app.e activity2 = getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.finish();
    }

    public final void X(String str) {
        androidx.fragment.app.e activity = getActivity();
        Bundle bundle = new Bundle();
        bundle.putString("userEmail", str);
        bundle.putString("arg_request_type", "CREATE_USER");
        Context context = getContext();
        bundle.putString("arg_title", context == null ? null : context.getString(R.string.title_activity_register));
        Intent intent = new Intent(activity, (Class<?>) AuthActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (activity != null) {
            activity.startActivity(intent);
        }
        androidx.fragment.app.e activity2 = getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        Snackbar snackbar = this.f9932h;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f9932h = null;
        S();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        T().f8830b.setOnClickListener(new View.OnClickListener() { // from class: k5.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                i.Y(i.this, view2);
            }
        });
        T().f8836h.setOnClickListener(new View.OnClickListener() { // from class: k5.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                i.Z(i.this, view2);
            }
        });
        T().f8831c.setOnClickListener(new View.OnClickListener() { // from class: k5.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                i.a0(i.this, view2);
            }
        });
        V().p().i(getViewLifecycleOwner(), new z() { // from class: k5.h
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                i.b0(i.this, (m) obj);
            }
        });
        V().m().i(getViewLifecycleOwner(), new z() { // from class: k5.g
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                i.c0(i.this, (l) obj);
            }
        });
        V().i().i(getViewLifecycleOwner(), new g7.b(new f()));
    }
}
