package l5;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import cc.k;
import com.anslayer.R;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.google.android.gms.common.Scopes;
import com.google.android.material.snackbar.Snackbar;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import ic.l;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import j4.c1;
import jc.m;
import jc.o;
import jc.y;
import l5.a;
import l5.e;
import org.apache.http.HttpStatus;
import qc.t;
import rc.q0;
import rc.y0;

/* compiled from: LoginFragment.kt */
/* loaded from: classes.dex */
public final class a extends p5.a<w4.e, k5.b, t4.a> implements View.OnClickListener {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f10412j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final int f10413k = 33;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f10414l = vb.f.a(new d());

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f10415m = c0.a(this, y.b(l5.e.class), new f(new e(this)), new g());

    /* renamed from: n, reason: collision with root package name */
    public final c f10416n = new c();

    /* renamed from: o, reason: collision with root package name */
    public final b f10417o = new b();

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f10411q = {y.e(new o(a.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentLoginBinding;", 0))};

    /* renamed from: p, reason: collision with root package name */
    public static final C0232a f10410p = new C0232a(null);

    /* compiled from: LoginFragment.kt */
    /* renamed from: l5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0232a extends InstanceUtil<a, Bundle> {

        /* compiled from: LoginFragment.kt */
        /* renamed from: l5.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0233a extends m implements l<Bundle, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0233a f10418f = new C0233a();

            public C0233a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final a invoke(Bundle bundle) {
                a aVar = new a();
                aVar.setArguments(bundle);
                return aVar;
            }
        }

        public C0232a() {
            super(C0233a.f10418f);
        }

        public /* synthetic */ C0232a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: LoginFragment.kt */
    /* loaded from: classes.dex */
    public static final class b implements p<s2.c, CharSequence, vb.p> {

        /* compiled from: LoginFragment.kt */
        @cc.f(c = "com.anslayer.ui.authintication.login.LoginFragment$activationCodeCallback$1$invoke$2", f = "LoginFragment.kt", l = {HttpStatus.SC_RESET_CONTENT}, m = "invokeSuspend")
        /* renamed from: l5.a$b$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0234a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10420f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a f10421g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ CharSequence f10422h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0234a(a aVar, CharSequence charSequence, ac.d<? super C0234a> dVar) {
                super(2, dVar);
                this.f10421g = aVar;
                this.f10422h = charSequence;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0234a(this.f10421g, this.f10422h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0234a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10420f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k5.b p10 = this.f10421g.p();
                    String obj2 = this.f10422h.toString();
                    this.f10420f = 1;
                    if (p10.l(obj2, this) == d10) {
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

        /* compiled from: LoginFragment.kt */
        /* renamed from: l5.a$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0235b extends m implements l<Throwable, vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0235b f10423f = new C0235b();

            public C0235b() {
                super(1);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
                invoke2(th);
                return vb.p.f15031a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th == null) {
                    return;
                }
                th.printStackTrace();
            }
        }

        public b() {
        }

        public static final void c(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            Snackbar E = aVar.E();
            if (E == null) {
                return;
            }
            E.dismiss();
        }

        public void b(s2.c cVar, CharSequence charSequence) {
            y0 b10;
            jc.l.f(cVar, "dialog");
            jc.l.f(charSequence, Scopes.EMAIL);
            a aVar = a.this;
            ProgressLayout progressLayout = aVar.P().f8193g;
            jc.l.e(progressLayout, "binding.stateLayout");
            final a aVar2 = a.this;
            Snackbar make = Snackbar.make(progressLayout, progressLayout.getContext().getString(R.string.text_please_wait), -2);
            jc.l.e(make, "make(this, context.getString(message), length)");
            View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
            jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
            ((TextView) findViewById).setGravity(3);
            make.setAction(R.string.Ok, new View.OnClickListener() { // from class: l5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.b.c(a.this, view);
                }
            });
            make.show();
            aVar.J(make);
            a aVar3 = a.this;
            b10 = rc.k.b(aVar3, null, null, new C0234a(aVar3, charSequence, null), 3, null);
            b10.h0(C0235b.f10423f);
            cVar.dismiss();
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar, CharSequence charSequence) {
            b(cVar, charSequence);
            return vb.p.f15031a;
        }
    }

    /* compiled from: LoginFragment.kt */
    /* loaded from: classes.dex */
    public static final class c implements p<s2.c, CharSequence, vb.p> {

        /* compiled from: LoginFragment.kt */
        @cc.f(c = "com.anslayer.ui.authintication.login.LoginFragment$forgotPasswordCallback$1$invoke$2", f = "LoginFragment.kt", l = {190}, m = "invokeSuspend")
        /* renamed from: l5.a$c$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0236a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10425f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ a f10426g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ CharSequence f10427h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0236a(a aVar, CharSequence charSequence, ac.d<? super C0236a> dVar) {
                super(2, dVar);
                this.f10426g = aVar;
                this.f10427h = charSequence;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new C0236a(this.f10426g, this.f10427h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((C0236a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f10425f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    k5.b p10 = this.f10426g.p();
                    String obj2 = this.f10427h.toString();
                    this.f10425f = 1;
                    if (p10.k(obj2, this) == d10) {
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

        /* compiled from: LoginFragment.kt */
        /* loaded from: classes.dex */
        public static final class b extends m implements l<Throwable, vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public static final b f10428f = new b();

            public b() {
                super(1);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
                invoke2(th);
                return vb.p.f15031a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th == null) {
                    return;
                }
                th.printStackTrace();
            }
        }

        public c() {
        }

        public static final void c(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            Snackbar E = aVar.E();
            if (E == null) {
                return;
            }
            E.dismiss();
        }

        public void b(s2.c cVar, CharSequence charSequence) {
            y0 b10;
            jc.l.f(cVar, "dialog");
            jc.l.f(charSequence, Scopes.EMAIL);
            a aVar = a.this;
            ProgressLayout progressLayout = aVar.P().f8193g;
            jc.l.e(progressLayout, "binding.stateLayout");
            final a aVar2 = a.this;
            Snackbar make = Snackbar.make(progressLayout, progressLayout.getContext().getString(R.string.text_please_wait), -2);
            jc.l.e(make, "make(this, context.getString(message), length)");
            View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
            jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
            ((TextView) findViewById).setGravity(3);
            make.setAction(R.string.Ok, new View.OnClickListener() { // from class: l5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.c.c(a.this, view);
                }
            });
            make.show();
            aVar.J(make);
            a aVar3 = a.this;
            b10 = rc.k.b(aVar3, null, null, new C0236a(aVar3, charSequence, null), 3, null);
            b10.h0(b.f10428f);
            cVar.dismiss();
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar, CharSequence charSequence) {
            b(cVar, charSequence);
            return vb.p.f15031a;
        }
    }

    /* compiled from: LoginFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<k5.b> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final k5.b invoke() {
            return k5.b.f9905g.newInstance(a.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f10430f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Fragment fragment) {
            super(0);
            this.f10430f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f10430f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f10431f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ic.a aVar) {
            super(0);
            this.f10431f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f10431f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: LoginFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<l0.b> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = a.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new e.a(requireActivity, a.this);
        }
    }

    public final c1 P() {
        return (c1) this.f10412j.f(this, f10411q[0]);
    }

    @Override // n5.a
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public k5.b p() {
        return (k5.b) this.f10414l.getValue();
    }

    public l5.e R() {
        return (l5.e) this.f10415m.getValue();
    }

    public final boolean S() {
        int i10;
        Editable text = P().f8194h.getText();
        if (text == null || t.s(text)) {
            P().f8194h.setError(getString(R.string.error_field_required));
            i10 = 1;
        } else {
            i10 = 0;
        }
        Editable text2 = P().f8191e.getText();
        if (text2 == null || text2.length() == 0) {
            P().f8191e.setError(getString(R.string.error_field_required));
            i10++;
        }
        return i10 < 1;
    }

    @Override // androidx.lifecycle.z
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public void B(t4.a aVar) {
        if (aVar == null) {
            P().f8193g.m();
        } else {
            p().i(aVar.b());
            m();
        }
    }

    public final void U(c1 c1Var) {
        this.f10412j.a(this, f10411q[0], c1Var);
    }

    @Override // n5.a
    public void e() {
        P().f8193g.o();
        l5.e R = R();
        Bundle bundle = new Bundle();
        bundle.putString("arg_request_type", "LOGIN_WITH_EMAIL");
        bundle.putString("userEmail", String.valueOf(P().f8194h.getText()));
        bundle.putString("userPassword", String.valueOf(P().f8191e.getText()));
        Context context = getContext();
        bundle.putString("userDeviceId", context == null ? null : k7.b.e(context));
        R.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        if (id2 == R.id.action_forgot_password) {
            androidx.fragment.app.e activity = getActivity();
            if (activity != null) {
                SupportExtentionKt.hideKeyboard(activity);
            }
            s2.c b10 = k7.c.b(getActivity(), this.f10413k, this.f10416n);
            if (b10 == null) {
                return;
            }
            x2.a.a(b10).setText(P().f8194h.getText());
            b10.show();
            return;
        }
        if (id2 != R.id.action_resend_activation) {
            if (id2 != R.id.action_sign_in) {
                return;
            }
            androidx.fragment.app.e activity2 = getActivity();
            if (activity2 != null) {
                SupportExtentionKt.hideKeyboard(activity2);
            }
            if (S()) {
                e();
                return;
            }
            return;
        }
        androidx.fragment.app.e activity3 = getActivity();
        if (activity3 != null) {
            SupportExtentionKt.hideKeyboard(activity3);
        }
        s2.c b11 = k7.c.b(getActivity(), this.f10413k, this.f10417o);
        if (b11 == null) {
            return;
        }
        x2.a.a(b11).setText(P().f8194h.getText());
        b11.show();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        c1 c10 = c1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        U(c10);
        ProgressLayout b10 = P().b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AppCompatEditText appCompatEditText = P().f8194h;
        Bundle arguments = getArguments();
        appCompatEditText.setText(arguments == null ? null : arguments.getString("userEmail"));
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        c1 P = P();
        AppCompatEditText appCompatEditText = P.f8194h;
        Bundle arguments = getArguments();
        appCompatEditText.setText(arguments == null ? null : arguments.getString("userEmail"));
        P.f8190d.setOnClickListener(this);
        P.f8188b.setOnClickListener(this);
        P.f8189c.setOnClickListener(this);
        P.f8193g.m();
    }
}
