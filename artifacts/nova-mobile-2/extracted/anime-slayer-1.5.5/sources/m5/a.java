package m5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import com.anslayer.ui.authintication.AuthActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import j4.d1;
import java.util.Locale;
import jc.m;
import jc.y;
import k5.o;
import oc.g;
import qc.t;
import qc.u;
import vb.p;

/* compiled from: RegisterFragment.kt */
/* loaded from: classes.dex */
public final class a extends p5.a<w4.e, k5.b, w4.e> implements View.OnClickListener {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f10955j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f10956k = vb.f.a(new b());

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f10957l = c0.a(this, y.b(o.class), new d(new c(this)), new e());

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ g<Object>[] f10954n = {y.e(new jc.o(a.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentRegisterBinding;", 0))};

    /* renamed from: m, reason: collision with root package name */
    public static final C0252a f10953m = new C0252a(null);

    /* compiled from: RegisterFragment.kt */
    /* renamed from: m5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0252a extends InstanceUtil<a, Bundle> {

        /* compiled from: RegisterFragment.kt */
        /* renamed from: m5.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0253a extends m implements l<Bundle, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0253a f10958f = new C0253a();

            public C0253a() {
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

        public C0252a() {
            super(C0253a.f10958f);
        }

        public /* synthetic */ C0252a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: RegisterFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<k5.b> {
        public b() {
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
    public static final class c extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f10960f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f10960f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f10960f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f10961f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f10961f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f10961f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: RegisterFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<l0.b> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = a.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new o.a(requireActivity, a.this);
        }
    }

    /* compiled from: RegisterFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements l<s2.c, p> {
        public f() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            w4.e modelData = a.this.O().getModelData();
            String I = modelData == null ? null : modelData.I();
            androidx.fragment.app.e activity = a.this.getActivity();
            Bundle bundle = new Bundle();
            a aVar = a.this;
            bundle.putString("userEmail", String.valueOf(I));
            bundle.putString("arg_request_type", "LOGIN_WITH_EMAIL");
            Context context = aVar.getContext();
            bundle.putString("arg_title", context != null ? context.getString(R.string.title_activity_login) : null);
            androidx.fragment.app.e activity2 = aVar.getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
            Intent intent = new Intent(activity, (Class<?>) AuthActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            if (activity == null) {
                return;
            }
            activity.startActivity(intent);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    public final d1 M() {
        return (d1) this.f10955j.f(this, f10954n[0]);
    }

    @Override // n5.a
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public k5.b p() {
        return (k5.b) this.f10956k.getValue();
    }

    public o O() {
        return (o) this.f10957l.getValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0240, code lost:
    
        if (r3.equals("hotmail") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0270, code lost:
    
        M().f8244d.setErrorEnabled(false);
        M().f8244d.setError(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0249, code lost:
    
        if (r3.equals("yahoo") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0252, code lost:
    
        if (r3.equals("gmail") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x025b, code lost:
    
        if (r3.equals("live") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0264, code lost:
    
        if (r3.equals("msn") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x026d, code lost:
    
        if (r3.equals("outlook") == false) goto L98;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean P() {
        int i10;
        Editable text = M().f8243c.getText();
        if (text == null || t.s(text)) {
            M().f8244d.setErrorEnabled(true);
            M().f8244d.setError(getString(R.string.error_field_required));
            i10 = 1;
        } else {
            M().f8244d.setErrorEnabled(false);
            M().f8244d.setError(null);
            i10 = 0;
        }
        Editable text2 = M().f8245e.getText();
        if (text2 == null || t.s(text2)) {
            M().f8246f.setErrorEnabled(true);
            M().f8246f.setError(getString(R.string.error_field_required));
            i10++;
        } else {
            M().f8246f.setErrorEnabled(false);
            M().f8246f.setError(null);
        }
        int length = M().f8245e.length();
        if (!(5 <= length && length < 26)) {
            M().f8246f.setErrorEnabled(true);
            M().f8246f.setError("يجب ادخال 5 الى 25 حرف");
            i10++;
        } else {
            M().f8246f.setErrorEnabled(false);
            M().f8246f.setError(null);
        }
        Editable text3 = M().f8247g.getText();
        if (text3 == null || t.s(text3)) {
            M().f8250j.setErrorEnabled(true);
            M().f8250j.setError(getString(R.string.error_field_required));
            i10++;
        } else {
            M().f8250j.setErrorEnabled(false);
            M().f8250j.setError(null);
        }
        if (M().f8247g.length() < 6) {
            M().f8250j.setErrorEnabled(true);
            M().f8250j.setError("يجب ادخال 6 احرف على الاقل");
            i10++;
        } else {
            M().f8250j.setErrorEnabled(false);
            M().f8250j.setError(null);
        }
        Editable text4 = M().f8248h.getText();
        if (text4 == null || t.s(text4)) {
            M().f8249i.setErrorEnabled(true);
            M().f8249i.setError(getString(R.string.error_field_required));
            i10++;
        } else {
            M().f8249i.setErrorEnabled(false);
            M().f8249i.setError(null);
        }
        Editable text5 = M().f8247g.getText();
        if (!(text5 == null || t.s(text5))) {
            Editable text6 = M().f8248h.getText();
            if (!(text6 == null || t.s(text6))) {
                if (!jc.l.a(String.valueOf(M().f8247g.getText()), String.valueOf(M().f8248h.getText()))) {
                    M().f8249i.setErrorEnabled(true);
                    M().f8249i.setError(getString(R.string.text_password_mismatch));
                    i10++;
                } else {
                    M().f8249i.setErrorEnabled(false);
                    M().f8249i.setError(null);
                }
            }
        }
        String s02 = u.s0(u.m0(String.valueOf(M().f8243c.getText()), "@", null, 2, null), ".", null, 2, null);
        Locale locale = Locale.ENGLISH;
        jc.l.e(locale, "ENGLISH");
        String lowerCase = s02.toLowerCase(locale);
        jc.l.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        switch (lowerCase.hashCode()) {
            case -1106239763:
                break;
            case 108424:
                break;
            case 3322092:
                break;
            case 98466462:
                break;
            case 114739264:
                break;
            case 1099410308:
                break;
            default:
                M().f8244d.setErrorEnabled(true);
                M().f8244d.setError("عناوين البريد المسموحة Yahoo, Gmail, Outlook, Hotmail");
                i10++;
                break;
        }
        return i10 < 1;
    }

    @Override // androidx.lifecycle.z
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void B(w4.e eVar) {
        if (eVar == null) {
            M().f8251k.m();
        } else {
            m();
        }
    }

    public final void R(d1 d1Var) {
        this.f10955j.a(this, f10954n[0], d1Var);
    }

    @Override // n5.a
    public void e() {
        M().f8251k.o();
        o O = O();
        Bundle bundle = new Bundle();
        bundle.putString("arg_request_type", "CREATE_USER");
        bundle.putString("userEmail", String.valueOf(M().f8243c.getText()));
        bundle.putString("userPassword", String.valueOf(M().f8247g.getText()));
        bundle.putString("userPasswordConfirm", String.valueOf(M().f8248h.getText()));
        bundle.putString("userFullName", String.valueOf(M().f8245e.getText()));
        O.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        s2.c a10;
        s2.c y10;
        s2.c n10;
        s2.c a11;
        M().f8251k.m();
        androidx.fragment.app.e activity = getActivity();
        if (activity == null || (a10 = k7.c.a(activity)) == null || (y10 = s2.c.y(a10, Integer.valueOf(R.string.action_notification), null, 2, null)) == null || (n10 = s2.c.n(y10, Integer.valueOf(R.string.text_account_registration_require), null, null, 6, null)) == null) {
            return;
        }
        s2.c v10 = s2.c.v(n10, Integer.valueOf(R.string.text_ok), null, new f(), 2, null);
        if (v10 == null || (a11 = v10.a(false)) == null) {
            return;
        }
        a11.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.action_sign_up) {
            androidx.fragment.app.e activity = getActivity();
            if (activity != null) {
                SupportExtentionKt.hideKeyboard(activity);
            }
            if (P()) {
                e();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        d1 c10 = d1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        R(c10);
        ProgressLayout b10 = M().b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        d1 M = M();
        AppCompatEditText appCompatEditText = M.f8243c;
        Bundle arguments = getArguments();
        appCompatEditText.setText(arguments == null ? null : arguments.getString("userEmail"));
        M.f8242b.setOnClickListener(this);
    }
}
