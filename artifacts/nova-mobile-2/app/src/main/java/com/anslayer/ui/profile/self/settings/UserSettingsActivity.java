package com.anslayer.ui.profile.self.settings;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.d;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import com.anslayer.R;
import com.anslayer.ui.profile.self.settings.UserSettingsActivity;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.snackbar.Snackbar;
import g7.c;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.model.SocialUser;
import io.wax911.support.google.GoogleAuth;
import io.wax911.support.twitter.TwitterAuth;
import j4.y2;
import java.util.Map;
import jc.x;
import jc.y;
import k5.i;
import q6.a;
import qc.u;
import rd.q;
import retrofit2.HttpException;
import vb.p;

/* compiled from: UserSettingsActivity.kt */
/* loaded from: classes.dex */
public final class UserSettingsActivity extends o5.a<y2> implements a.InterfaceC0306a {

    /* renamed from: n, reason: collision with root package name */
    public m7.i f4314n;

    /* renamed from: o, reason: collision with root package name */
    public Snackbar f4315o;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4312l = new k0(y.b(q6.m.class), new n(this), new m(this));

    /* renamed from: m, reason: collision with root package name */
    public w4.e f4313m = ((f4.d) yd.a.a().a(new l().getType())).N().get();

    /* renamed from: p, reason: collision with root package name */
    public final o f4316p = new o();

    /* renamed from: q, reason: collision with root package name */
    public final a f4317q = new a();

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class a implements AuthCallback {
        public a() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onCancel() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onError(Throwable th) {
            jc.l.f(th, "error");
            k7.b.q(UserSettingsActivity.this, R.string.text_request_error, 0, 2, null);
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onSuccess(SocialUser socialUser) {
            jc.l.f(socialUser, "socialUser");
            UserSettingsActivity.this.H().A(socialUser, UserSettingsActivity.this.f4313m);
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<p, p> {
        public b() {
            super(1);
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "it");
            ProgressBar progressBar = UserSettingsActivity.this.c().f8857m;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(0);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p pVar) {
            a(pVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.l<p, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f4321g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i10) {
            super(1);
            this.f4321g = i10;
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "it");
            ProgressBar progressBar = UserSettingsActivity.this.c().f8857m;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(8);
            UserSettingsActivity.this.Q(this.f4321g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p pVar) {
            a(pVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.l<p, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f4323g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(int i10) {
            super(1);
            this.f4323g = i10;
        }

        public final void a(p pVar) {
            jc.l.f(pVar, "it");
            ProgressBar progressBar = UserSettingsActivity.this.c().f8857m;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(8);
            UserSettingsActivity.this.R(this.f4323g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(p pVar) {
            a(pVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<Exception, p> {
        public e() {
            super(1);
        }

        public final void a(Exception exc) {
            jc.l.f(exc, "exception");
            ProgressBar progressBar = UserSettingsActivity.this.c().f8857m;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(8);
            if (exc instanceof HttpException) {
                q<?> c10 = ((HttpException) exc).c();
                Map<String, String> b10 = x4.b.b(c10 == null ? null : c10.d());
                String str = b10 == null ? null : b10.get("detail");
                if (str == null) {
                    str = UserSettingsActivity.this.getString(R.string.text_request_error);
                    jc.l.e(str, "getString(R.string.text_request_error)");
                }
                k7.b.r(UserSettingsActivity.this, str, 0, 2, null);
                return;
            }
            k7.b.q(UserSettingsActivity.this, R.string.text_request_error, 0, 2, null);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Exception exc) {
            a(exc);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<g7.c<? extends String>, p> {
        public f() {
            super(1);
        }

        public final void a(g7.c<String> cVar) {
            jc.l.f(cVar, "it");
            if (jc.l.a(cVar, c.b.f7022a)) {
                UserSettingsActivity.this.G();
                UserSettingsActivity.this.f4314n = new m7.i(UserSettingsActivity.this, false, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                m7.i iVar = UserSettingsActivity.this.f4314n;
                jc.l.c(iVar);
                iVar.show();
                return;
            }
            if (cVar instanceof c.a) {
                UserSettingsActivity.this.G();
                Exception a10 = ((c.a) cVar).a();
                if (a10 instanceof HttpException) {
                    q<?> c10 = ((HttpException) a10).c();
                    Map<String, String> b10 = x4.b.b(c10 == null ? null : c10.d());
                    String str = b10 != null ? b10.get("detail") : null;
                    if (str == null) {
                        str = UserSettingsActivity.this.getString(R.string.text_request_error);
                        jc.l.e(str, "getString(R.string.text_request_error)");
                    }
                    k7.b.p(UserSettingsActivity.this, str, 1);
                    return;
                }
                k7.b.q(UserSettingsActivity.this, R.string.text_request_error, 0, 2, null);
                return;
            }
            if (cVar instanceof c.C0133c) {
                String str2 = (String) ((c.C0133c) cVar).a();
                UserSettingsActivity.this.G();
                k7.b.p(UserSettingsActivity.this, str2, 1);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends String> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.l<g7.c<? extends p>, p> {
        public g() {
            super(1);
        }

        public final void a(g7.c<p> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.b) {
                UserSettingsActivity.this.G();
                UserSettingsActivity.this.f4314n = new m7.i(UserSettingsActivity.this, false, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                m7.i iVar = UserSettingsActivity.this.f4314n;
                jc.l.c(iVar);
                iVar.show();
                return;
            }
            if (cVar instanceof c.C0133c) {
                m7.i iVar2 = UserSettingsActivity.this.f4314n;
                if (iVar2 != null) {
                    iVar2.dismiss();
                }
                Snackbar snackbar = UserSettingsActivity.this.f4315o;
                if (snackbar != null) {
                    snackbar.dismiss();
                }
                UserSettingsActivity userSettingsActivity = UserSettingsActivity.this;
                ConstraintLayout b10 = userSettingsActivity.c().b();
                jc.l.e(b10, "binding.root");
                Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.user_settings_change_password_succeeded), 0);
                jc.l.e(make, "make(this, context.getString(message), length)");
                View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
                jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
                ((TextView) findViewById).setGravity(3);
                p pVar = p.f15031a;
                make.show();
                userSettingsActivity.f4315o = make;
                return;
            }
            if (cVar instanceof c.a) {
                m7.i iVar3 = UserSettingsActivity.this.f4314n;
                if (iVar3 != null) {
                    iVar3.dismiss();
                }
                k7.b.q(UserSettingsActivity.this, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends p> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.l<g7.c<? extends p>, p> {
        public h() {
            super(1);
        }

        public final void a(g7.c<p> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.b) {
                UserSettingsActivity.this.c().f8856l.setEnabled(false);
                UserSettingsActivity.this.c().f8859o.setEnabled(false);
                return;
            }
            if (cVar instanceof c.C0133c) {
                UserSettingsActivity.this.c().f8856l.setEnabled(true);
                UserSettingsActivity.this.c().f8859o.setEnabled(true);
                Snackbar snackbar = UserSettingsActivity.this.f4315o;
                if (snackbar != null) {
                    snackbar.dismiss();
                }
                UserSettingsActivity userSettingsActivity = UserSettingsActivity.this;
                ConstraintLayout b10 = userSettingsActivity.c().b();
                jc.l.e(b10, "binding.root");
                Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.user_settings_saved), 0);
                jc.l.e(make, "make(this, context.getString(message), length)");
                View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
                jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
                ((TextView) findViewById).setGravity(3);
                p pVar = p.f15031a;
                make.show();
                userSettingsActivity.f4315o = make;
                return;
            }
            if (cVar instanceof c.a) {
                UserSettingsActivity.this.c().f8856l.setChecked(!UserSettingsActivity.this.c().f8856l.isChecked());
                UserSettingsActivity.this.c().f8856l.setEnabled(true);
                UserSettingsActivity.this.c().f8859o.setEnabled(true);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends p> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.l<g7.c<? extends p>, p> {
        public i() {
            super(1);
        }

        public final void a(g7.c<p> cVar) {
            jc.l.f(cVar, "it");
            if (cVar instanceof c.b) {
                UserSettingsActivity.this.c().f8856l.setEnabled(false);
                UserSettingsActivity.this.c().f8859o.setEnabled(false);
                return;
            }
            if (cVar instanceof c.C0133c) {
                UserSettingsActivity.this.c().f8856l.setEnabled(true);
                UserSettingsActivity.this.c().f8859o.setEnabled(true);
                Snackbar snackbar = UserSettingsActivity.this.f4315o;
                if (snackbar != null) {
                    snackbar.dismiss();
                }
                UserSettingsActivity userSettingsActivity = UserSettingsActivity.this;
                ConstraintLayout b10 = userSettingsActivity.c().b();
                jc.l.e(b10, "binding.root");
                Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.user_settings_saved), 0);
                jc.l.e(make, "make(this, context.getString(message), length)");
                View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
                jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
                ((TextView) findViewById).setGravity(3);
                p pVar = p.f15031a;
                make.show();
                userSettingsActivity.f4315o = make;
                return;
            }
            if (cVar instanceof c.a) {
                UserSettingsActivity.this.c().f8859o.setChecked(!UserSettingsActivity.this.c().f8859o.isChecked());
                UserSettingsActivity.this.c().f8859o.setEnabled(true);
                UserSettingsActivity.this.c().f8856l.setEnabled(true);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(g7.c<? extends p> cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class j extends d.a {
        public j() {
            super(UserSettingsActivity.this);
        }

        @Override // androidx.appcompat.app.d.a
        public androidx.appcompat.app.d create() {
            androidx.appcompat.app.d create = super.create();
            jc.l.e(create, "super.create()");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            Window window = create.getWindow();
            layoutParams.copyFrom(window == null ? null : window.getAttributes());
            layoutParams.softInputMode = 4;
            Window window2 = create.getWindow();
            if (window2 != null) {
                window2.setAttributes(layoutParams);
            }
            return create;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.l<String, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ x<String> f4330f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(x<String> xVar) {
            super(1);
            this.f4330f = xVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(String str) {
            jc.l.f(str, "it");
            this.f4330f.f9194f = str;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(String str) {
            a(str);
            return p.f15031a;
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class l extends zd.a<f4.d> {
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4331f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(ComponentActivity componentActivity) {
            super(0);
            this.f4331f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f4331f.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class n extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4332f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(ComponentActivity componentActivity) {
            super(0);
            this.f4332f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4332f.getViewModelStore();
            jc.l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class o implements AuthCallback {
        public o() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onCancel() {
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onError(Throwable th) {
            jc.l.f(th, "error");
            k7.b.q(UserSettingsActivity.this, R.string.text_request_error, 0, 2, null);
        }

        @Override // io.wax911.support.common.callback.AuthCallback
        public void onSuccess(SocialUser socialUser) {
            jc.l.f(socialUser, "socialUser");
            UserSettingsActivity.this.H().B(socialUser, UserSettingsActivity.this.f4313m);
        }
    }

    public static final void I(UserSettingsActivity userSettingsActivity, View view) {
        jc.l.f(userSettingsActivity, "this$0");
        userSettingsActivity.onBackPressed();
    }

    public static final void J(UserSettingsActivity userSettingsActivity, View view) {
        jc.l.f(userSettingsActivity, "this$0");
        new q6.a(userSettingsActivity).show(userSettingsActivity.getSupportFragmentManager(), (String) null);
    }

    public static final void K(UserSettingsActivity userSettingsActivity, CompoundButton compoundButton, boolean z10) {
        jc.l.f(userSettingsActivity, "this$0");
        userSettingsActivity.H().C(userSettingsActivity.f4313m, z10);
    }

    public static final void L(UserSettingsActivity userSettingsActivity, CompoundButton compoundButton, boolean z10) {
        jc.l.f(userSettingsActivity, "this$0");
        userSettingsActivity.H().D(userSettingsActivity.f4313m, z10);
    }

    public static final void M(UserSettingsActivity userSettingsActivity, CompoundButton compoundButton, boolean z10) {
        jc.l.f(userSettingsActivity, "this$0");
        userSettingsActivity.g().l().set(Boolean.valueOf(z10));
    }

    public static final void N(UserSettingsActivity userSettingsActivity, View view) {
        jc.l.f(userSettingsActivity, "this$0");
        ICommonAuth.DefaultImpls.connectToProvider$default(GoogleAuth.INSTANCE, userSettingsActivity, userSettingsActivity.f4317q, null, 4, null);
    }

    public static final void O(UserSettingsActivity userSettingsActivity, View view) {
        jc.l.f(userSettingsActivity, "this$0");
        ICommonAuth.DefaultImpls.connectToProvider$default(TwitterAuth.INSTANCE, userSettingsActivity, userSettingsActivity.f4316p, null, 4, null);
    }

    public static final void P(UserSettingsActivity userSettingsActivity, View view) {
        jc.l.f(userSettingsActivity, "this$0");
        userSettingsActivity.S();
    }

    public static final void T(i.b bVar, final androidx.appcompat.app.d dVar, final x xVar, final UserSettingsActivity userSettingsActivity, DialogInterface dialogInterface) {
        jc.l.f(bVar, "$inputCell");
        jc.l.f(dVar, "$dialog");
        jc.l.f(xVar, "$currentEmail");
        jc.l.f(userSettingsActivity, "this$0");
        bVar.getEditText().requestFocus();
        l7.p.i(bVar.getEditText());
        dVar.a(-1).setOnClickListener(new View.OnClickListener() { // from class: q6.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.U(x.this, userSettingsActivity, dVar, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void U(x xVar, UserSettingsActivity userSettingsActivity, androidx.appcompat.app.d dVar, View view) {
        jc.l.f(xVar, "$currentEmail");
        jc.l.f(userSettingsActivity, "this$0");
        jc.l.f(dVar, "$dialog");
        if (k5.i.f9927n.a().matcher((CharSequence) xVar.f9194f).matches()) {
            userSettingsActivity.H().n((String) xVar.f9194f);
            dVar.dismiss();
        } else {
            k7.b.r(userSettingsActivity, "يرجى ادخال gmail فقط", 0, 2, null);
        }
    }

    public static final void V(DialogInterface dialogInterface, int i10) {
    }

    public final void G() {
        m7.i iVar = this.f4314n;
        if (iVar != null) {
            try {
                jc.l.c(iVar);
                iVar.dismiss();
            } catch (Exception unused) {
            }
            this.f4314n = null;
        }
    }

    public final q6.m H() {
        return (q6.m) this.f4312l.getValue();
    }

    public final void Q(int i10) {
        c().f8852h.setText("مرتبط مع جوجل");
        c().f8852h.setTextColor(i10);
        c().f8852h.setEnabled(false);
    }

    public final void R(int i10) {
        c().f8861q.setText("مرتبط مع تويتر");
        c().f8861q.setTextColor(i10);
        c().f8861q.setEnabled(false);
    }

    public final void S() {
        final x xVar = new x();
        xVar.f9194f = "";
        ScrollView scrollView = new ScrollView(this);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        final i.b bVar = new i.b(this, getString(R.string.email), new k(xVar));
        linearLayout.addView(bVar, new LinearLayout.LayoutParams(-1, -2));
        final androidx.appcompat.app.d create = new j().setTitle("اضافة بريد الكتروني").setView(scrollView).setPositiveButton(R.string.Ok, new DialogInterface.OnClickListener() { // from class: q6.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                UserSettingsActivity.V(dialogInterface, i10);
            }
        }).setNegativeButton(R.string.Cancel, (DialogInterface.OnClickListener) null).create();
        jc.l.e(create, "private fun showInputDia…      dialog.show()\n    }");
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: q6.d
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                UserSettingsActivity.T(i.b.this, create, xVar, this, dialogInterface);
            }
        });
        create.show();
    }

    @Override // q6.a.InterfaceC0306a
    public void a(String str, String str2, String str3) {
        jc.l.f(str, "currentPassword");
        jc.l.f(str2, "newPassword");
        jc.l.f(str3, "confirmedPassword");
        H().o(str, str2, str3);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_close_enter, R.anim.activity_close_exit);
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        y2 c10 = y2.c(getLayoutInflater());
        jc.l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8860p);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8860p.setNavigationOnClickListener(new View.OnClickListener() { // from class: q6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.I(UserSettingsActivity.this, view);
            }
        });
        String I = this.f4313m.I();
        boolean z10 = I != null && u.C(I, "@", false, 2, null);
        MaterialButton materialButton = c().f8851g;
        jc.l.e(materialButton, "binding.emailLink");
        materialButton.setVisibility(z10 ^ true ? 0 : 8);
        if (z10) {
            c().f8860p.setSubtitle(this.f4313m.I());
        }
        TextView textView = c().f8849e;
        jc.l.e(textView, "binding.changePassword");
        textView.setVisibility(g().I() ? 8 : 0);
        c().f8849e.setOnClickListener(new View.OnClickListener() { // from class: q6.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.J(UserSettingsActivity.this, view);
            }
        });
        c().f8856l.setChecked(jc.l.a(this.f4313m.H(), "Yes"));
        c().f8856l.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: q6.k
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                UserSettingsActivity.K(UserSettingsActivity.this, compoundButton, z11);
            }
        });
        c().f8859o.setChecked(jc.l.a(this.f4313m.p(), "Yes"));
        c().f8859o.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: q6.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                UserSettingsActivity.L(UserSettingsActivity.this, compoundButton, z11);
            }
        });
        c().f8848d.setChecked(g().l().get().booleanValue());
        c().f8848d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: q6.l
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                UserSettingsActivity.M(UserSettingsActivity.this, compoundButton, z11);
            }
        });
        H().s().i(this, new g7.b(new g()));
        H().r().i(this, new g7.b(new h()));
        H().t().i(this, new g7.b(new i()));
        int colorFromAttr = SupportExtentionKt.getColorFromAttr(this, android.R.attr.textColorHint);
        int colorFromAttr2 = SupportExtentionKt.getColorFromAttr(this, R.attr.colorSecondary);
        if (this.f4313m.l()) {
            Q(colorFromAttr);
        } else {
            c().f8852h.setText(getString(R.string.edit_profile_google_link));
            c().f8852h.setTextColor(colorFromAttr2);
            c().f8852h.setEnabled(true);
        }
        if (this.f4313m.w()) {
            R(colorFromAttr);
        } else {
            c().f8861q.setText(getString(R.string.edit_profile_twitter_link));
            c().f8861q.setTextColor(colorFromAttr2);
            c().f8861q.setEnabled(true);
        }
        c().f8852h.setOnClickListener(new View.OnClickListener() { // from class: q6.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.N(UserSettingsActivity.this, view);
            }
        });
        c().f8861q.setOnClickListener(new View.OnClickListener() { // from class: q6.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.O(UserSettingsActivity.this, view);
            }
        });
        c().f8851g.setOnClickListener(new View.OnClickListener() { // from class: q6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSettingsActivity.P(UserSettingsActivity.this, view);
            }
        });
        H().x().i(this, new g7.b(new b()));
        H().v().i(this, new g7.b(new c(colorFromAttr)));
        H().y().i(this, new g7.b(new d(colorFromAttr)));
        H().u().i(this, new g7.b(new e()));
        H().p().i(this, new g7.b(new f()));
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        G();
        Snackbar snackbar = this.f4315o;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f4315o = null;
    }
}
