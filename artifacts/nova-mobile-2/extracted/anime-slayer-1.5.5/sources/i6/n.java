package i6;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import com.anslayer.api.endpoint.UserEndpoint;
import g7.c;
import rc.q0;

/* compiled from: PeopleProfileViewModel.kt */
/* loaded from: classes.dex */
public final class n extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final UserEndpoint f7861a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7862b;

    /* renamed from: c, reason: collision with root package name */
    public y<g7.c<w4.e>> f7863c;

    /* renamed from: d, reason: collision with root package name */
    public final LiveData<g7.c<w4.e>> f7864d;

    /* renamed from: e, reason: collision with root package name */
    public y<g7.a<String>> f7865e;

    /* renamed from: f, reason: collision with root package name */
    public final LiveData<g7.a<String>> f7866f;

    /* renamed from: g, reason: collision with root package name */
    public y<g7.a<vb.p>> f7867g;

    /* renamed from: h, reason: collision with root package name */
    public final LiveData<g7.a<vb.p>> f7868h;

    /* renamed from: i, reason: collision with root package name */
    public y<g7.a<w4.e>> f7869i;

    /* renamed from: j, reason: collision with root package name */
    public final LiveData<g7.a<w4.e>> f7870j;

    /* compiled from: PeopleProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.PeopleProfileViewModel$blockAccount$1", f = "PeopleProfileViewModel.kt", l = {64}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7871f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ w4.e f7873h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(w4.e eVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f7873h = eVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f7873h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7871f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint userEndpoint = n.this.f7861a;
                    long D = this.f7873h.D();
                    this.f7871f = 1;
                    if (userEndpoint.blockUser(D, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f7873h.K("Yes");
                n.this.f7869i.o(new g7.a(this.f7873h));
            } catch (Exception unused) {
                n.this.f7865e.o(new g7.a(""));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.PeopleProfileViewModel$getUserInfo$1", f = "PeopleProfileViewModel.kt", l = {40}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7874f;

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
            int i10 = this.f7874f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    n.this.f7863c.o(c.b.f7022a);
                    UserEndpoint userEndpoint = n.this.f7861a;
                    String valueOf = String.valueOf(n.this.k());
                    this.f7874f = 1;
                    obj = userEndpoint.getUserStatusV2(valueOf, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                Object a10 = ((n4.c) obj).a();
                jc.l.c(a10);
                n.this.f7863c.o(new c.C0133c((w4.e) a10));
            } catch (Exception e10) {
                n.this.f7863c.o(new c.a(e10));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.PeopleProfileViewModel$reportImage$1", f = "PeopleProfileViewModel.kt", l = {52}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7876f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ w4.e f7878h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(w4.e eVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f7878h = eVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f7878h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7876f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint userEndpoint = n.this.f7861a;
                    long D = this.f7878h.D();
                    this.f7876f = 1;
                    if (userEndpoint.reportUserImage(D, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                n.this.f7867g.o(new g7.a(vb.p.f15031a));
            } catch (Exception unused) {
                n.this.f7865e.o(new g7.a(""));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: PeopleProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.PeopleProfileViewModel$unBlockAccount$1", f = "PeopleProfileViewModel.kt", l = {77}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7879f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ w4.e f7881h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(w4.e eVar, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7881h = eVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7881h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7879f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint userEndpoint = n.this.f7861a;
                    long D = this.f7881h.D();
                    this.f7879f = 1;
                    if (userEndpoint.unblockUser(D, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f7881h.K("No");
                n.this.f7869i.o(new g7.a(this.f7881h));
            } catch (Exception unused) {
                n.this.f7865e.o(new g7.a(""));
            }
            return vb.p.f15031a;
        }
    }

    public n(UserEndpoint userEndpoint, long j10) {
        jc.l.f(userEndpoint, "userService");
        this.f7861a = userEndpoint;
        this.f7862b = j10;
        y<g7.c<w4.e>> yVar = new y<>();
        this.f7863c = yVar;
        this.f7864d = yVar;
        y<g7.a<String>> yVar2 = new y<>();
        this.f7865e = yVar2;
        this.f7866f = yVar2;
        y<g7.a<vb.p>> yVar3 = new y<>();
        this.f7867g = yVar3;
        this.f7868h = yVar3;
        y<g7.a<w4.e>> yVar4 = new y<>();
        this.f7869i = yVar4;
        this.f7870j = yVar4;
        l();
    }

    public final void f() {
        w4.e m10 = m();
        if (m10 == null) {
            return;
        }
        rc.k.d(j0.a(this), null, null, new a(m10, null), 3, null);
    }

    public final LiveData<g7.a<w4.e>> g() {
        return this.f7870j;
    }

    public final LiveData<g7.a<String>> h() {
        return this.f7866f;
    }

    public final LiveData<g7.a<vb.p>> i() {
        return this.f7868h;
    }

    public final LiveData<g7.c<w4.e>> j() {
        return this.f7864d;
    }

    public final long k() {
        return this.f7862b;
    }

    public final void l() {
        rc.k.d(j0.a(this), null, null, new b(null), 3, null);
    }

    public final w4.e m() {
        g7.c<w4.e> f10 = this.f7863c.f();
        if (f10 == null) {
            return null;
        }
        return (w4.e) g7.d.a(f10);
    }

    public final void n() {
        w4.e m10 = m();
        if (m10 == null) {
            return;
        }
        rc.k.d(j0.a(this), null, null, new c(m10, null), 3, null);
    }

    public final void o() {
        w4.e m10 = m();
        if (m10 == null) {
            return;
        }
        rc.k.d(j0.a(this), null, null, new d(m10, null), 3, null);
    }
}
