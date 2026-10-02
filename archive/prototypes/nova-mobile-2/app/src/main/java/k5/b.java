package k5;

import android.content.Context;
import android.widget.Toast;
import com.anslayer.R;
import com.anslayer.api.endpoint.AuthEndpoint;
import com.anslayer.api.endpoint.UserEndpoint;
import ic.p;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtil;
import okhttp3.ResponseBody;
import rc.g1;
import rc.n2;
import rc.q0;
import rc.y0;

/* compiled from: AuthPresenter.kt */
/* loaded from: classes.dex */
public final class b extends r5.a {

    /* renamed from: g, reason: collision with root package name */
    public static final a f9905g = new a(null);

    /* compiled from: AuthPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<b, Context> {

        /* compiled from: AuthPresenter.kt */
        /* renamed from: k5.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0206a extends jc.m implements ic.l<Context, b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0206a f9906f = new C0206a();

            public C0206a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke(Context context) {
                return new b(context, null);
            }
        }

        public a() {
            super(C0206a.f9906f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: AuthPresenter.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthPresenter", f = "AuthPresenter.kt", l = {21, 22}, m = "forgotPassword")
    /* renamed from: k5.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0207b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f9907f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9908g;

        /* renamed from: i, reason: collision with root package name */
        public int f9910i;

        public C0207b(ac.d<? super C0207b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9908g = obj;
            this.f9910i |= Integer.MIN_VALUE;
            return b.this.k(null, this);
        }
    }

    /* compiled from: AuthPresenter.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthPresenter$forgotPassword$2", f = "AuthPresenter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9911f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ModelWrapper<ResponseBody> f9912g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ b f9913h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ModelWrapper<ResponseBody> modelWrapper, b bVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f9912g = modelWrapper;
            this.f9913h = bVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f9912g, this.f9913h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9911f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            int i10 = this.f9912g.isSuccessful() ? R.string.text_request_email_success : R.string.text_request_error;
            Context d10 = this.f9913h.d();
            if (d10 != null) {
                Toast.makeText(d10, i10, 1).show();
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: AuthPresenter.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthPresenter", f = "AuthPresenter.kt", l = {37, 38}, m = "resendActivationCode")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f9914f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f9915g;

        /* renamed from: i, reason: collision with root package name */
        public int f9917i;

        public d(ac.d<? super d> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9915g = obj;
            this.f9917i |= Integer.MIN_VALUE;
            return b.this.l(null, this);
        }
    }

    /* compiled from: AuthPresenter.kt */
    @cc.f(c = "com.anslayer.ui.authintication.AuthPresenter$resendActivationCode$2", f = "AuthPresenter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9918f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ModelWrapper<ResponseBody> f9919g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ b f9920h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ModelWrapper<ResponseBody> modelWrapper, b bVar, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f9919g = modelWrapper;
            this.f9920h = bVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f9919g, this.f9920h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9918f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            int i10 = this.f9919g.isSuccessful() ? R.string.text_request_email_success : R.string.text_request_error;
            Context d10 = this.f9920h.d();
            if (d10 != null) {
                Toast.makeText(d10, i10, 1).show();
            }
            return vb.p.f15031a;
        }
    }

    public b(Context context) {
        super(context);
    }

    public /* synthetic */ b(Context context, jc.g gVar) {
        this(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0087 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k(String str, ac.d<? super vb.p> dVar) {
        C0207b c0207b;
        Object d10;
        int i10;
        b bVar;
        n2 c10;
        c cVar;
        if (dVar instanceof C0207b) {
            c0207b = (C0207b) dVar;
            int i11 = c0207b.f9910i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c0207b.f9910i = i11 - Integer.MIN_VALUE;
                Object obj = c0207b.f9908g;
                d10 = bc.c.d();
                i10 = c0207b.f9910i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    Context d11 = d();
                    AuthEndpoint authEndpoint = d11 == null ? null : (AuthEndpoint) z3.b.f17284d.getInstance(d11).b(AuthEndpoint.class);
                    if (authEndpoint == null) {
                        return vb.p.f15031a;
                    }
                    y0 executeUsing = g().executeUsing(authEndpoint.forgotPassword(str));
                    c0207b.f9907f = this;
                    c0207b.f9910i = 1;
                    obj = executeUsing.k0(c0207b);
                    if (obj == d10) {
                        return d10;
                    }
                    bVar = this;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    bVar = (b) c0207b.f9907f;
                    vb.k.b(obj);
                }
                c10 = g1.c();
                cVar = new c((ModelWrapper) obj, bVar, null);
                c0207b.f9907f = null;
                c0207b.f9910i = 2;
                if (rc.i.g(c10, cVar, c0207b) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            }
        }
        c0207b = new C0207b(dVar);
        Object obj2 = c0207b.f9908g;
        d10 = bc.c.d();
        i10 = c0207b.f9910i;
        if (i10 != 0) {
        }
        c10 = g1.c();
        cVar = new c((ModelWrapper) obj2, bVar, null);
        c0207b.f9907f = null;
        c0207b.f9910i = 2;
        if (rc.i.g(c10, cVar, c0207b) == d10) {
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0087 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object l(String str, ac.d<? super vb.p> dVar) {
        d dVar2;
        Object d10;
        int i10;
        b bVar;
        n2 c10;
        e eVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.f9917i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.f9917i = i11 - Integer.MIN_VALUE;
                Object obj = dVar2.f9915g;
                d10 = bc.c.d();
                i10 = dVar2.f9917i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    Context d11 = d();
                    UserEndpoint userEndpoint = d11 == null ? null : (UserEndpoint) z3.b.f17284d.getInstance(d11).b(UserEndpoint.class);
                    if (userEndpoint == null) {
                        return vb.p.f15031a;
                    }
                    y0 executeUsing = g().executeUsing(userEndpoint.sendActivationCode(str));
                    dVar2.f9914f = this;
                    dVar2.f9917i = 1;
                    obj = executeUsing.k0(dVar2);
                    if (obj == d10) {
                        return d10;
                    }
                    bVar = this;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    bVar = (b) dVar2.f9914f;
                    vb.k.b(obj);
                }
                c10 = g1.c();
                eVar = new e((ModelWrapper) obj, bVar, null);
                dVar2.f9914f = null;
                dVar2.f9917i = 2;
                if (rc.i.g(c10, eVar, dVar2) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            }
        }
        dVar2 = new d(dVar);
        Object obj2 = dVar2.f9915g;
        d10 = bc.c.d();
        i10 = dVar2.f9917i;
        if (i10 != 0) {
        }
        c10 = g1.c();
        eVar = new e((ModelWrapper) obj2, bVar, null);
        dVar2.f9914f = null;
        dVar2.f9917i = 2;
        if (rc.i.g(c10, eVar, dVar2) == d10) {
        }
        return vb.p.f15031a;
    }

    @Override // r5.b, io.wax911.support.base.event.LifecycleListener
    public void onDestroy() {
        g().cancel();
        super.onDestroy();
    }
}
