package n6;

import android.app.Application;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import com.anslayer.api.endpoint.AuthEndpoint;
import com.anslayer.api.endpoint.UserEndpoint;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.m;
import n6.k;
import rc.q0;
import retrofit2.HttpException;
import vb.p;

/* compiled from: ProfileViewModel.kt */
/* loaded from: classes.dex */
public final class l extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final vb.e f11307b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f11308c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f11309d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f11310e;

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f11311f;

    /* renamed from: g, reason: collision with root package name */
    public y<g7.a<p>> f11312g;

    /* renamed from: h, reason: collision with root package name */
    public final LiveData<g7.a<p>> f11313h;

    /* renamed from: i, reason: collision with root package name */
    public y<k> f11314i;

    /* renamed from: j, reason: collision with root package name */
    public w4.e f11315j;

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<AuthEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Application f11316f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            super(0);
            this.f11316f = application;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthEndpoint invoke() {
            return (AuthEndpoint) z3.b.f17284d.getInstance(this.f11316f).b(AuthEndpoint.class);
        }
    }

    /* compiled from: ProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.ProfileViewModel$getUser$1", f = "ProfileViewModel.kt", l = {60}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11317f;

        public b(ac.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11317f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint p10 = l.this.p();
                    this.f11317f = 1;
                    obj = p10.getUserV2(this);
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
                w4.e eVar = (w4.e) a10;
                l.this.s(eVar);
                l.this.f11314i.o(new k.c(eVar));
            } catch (HttpException e10) {
                l.this.f11314i.o(new k.a(e10));
            } catch (Exception e11) {
                l.this.f11314i.o(new k.b(e11));
            }
            return p.f15031a;
        }
    }

    /* compiled from: ProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.ProfileViewModel$logout$1", f = "ProfileViewModel.kt", l = {74}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11319f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            y yVar;
            g7.a aVar;
            Object d10 = bc.c.d();
            int i10 = this.f11319f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    AuthEndpoint i11 = l.this.i();
                    t4.b q10 = l.this.q();
                    jc.l.c(q10);
                    String d11 = q10.d();
                    t4.b q11 = l.this.q();
                    jc.l.c(q11);
                    String e10 = q11.e();
                    this.f11319f = 1;
                    if (i11.logout(d11, e10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                yVar = l.this.f11312g;
                aVar = new g7.a(p.f15031a);
            } catch (Exception unused) {
                yVar = l.this.f11312g;
                aVar = new g7.a(p.f15031a);
            } catch (Throwable th) {
                l.this.f11312g.o(new g7.a(p.f15031a));
                throw th;
            }
            yVar.o(aVar);
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f11321f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public d() {
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
    public static final class e extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f11322f = new e();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<UserEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Application f11323f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Application application) {
            super(0);
            this.f11323f = application;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            return (UserEndpoint) z3.b.f17284d.getInstance(this.f11323f).b(UserEndpoint.class);
        }
    }

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<t4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<t4.b> {
        }

        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t4.b invoke() {
            Type b10;
            try {
                ja.f j10 = l.this.j();
                String q10 = l.this.l().q();
                jc.l.c(q10);
                Type type = new a().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = j10.l(q10, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                return (t4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Application application) {
        super(application);
        jc.l.f(application, "app");
        this.f11307b = vb.f.a(new f(application));
        this.f11308c = vb.f.a(new a(application));
        this.f11309d = vb.f.a(d.f11321f);
        this.f11310e = vb.f.a(e.f11322f);
        this.f11311f = vb.f.a(new g());
        y<g7.a<p>> yVar = new y<>();
        this.f11312g = yVar;
        this.f11313h = yVar;
        this.f11314i = new y<>();
        n();
    }

    public final AuthEndpoint i() {
        return (AuthEndpoint) this.f11308c.getValue();
    }

    public final ja.f j() {
        return (ja.f) this.f11310e.getValue();
    }

    public final LiveData<g7.a<p>> k() {
        return this.f11313h;
    }

    public final f4.d l() {
        return (f4.d) this.f11309d.getValue();
    }

    public final y<k> m() {
        return this.f11314i;
    }

    public final void n() {
        rc.k.d(j0.a(this), null, null, new b(null), 3, null);
    }

    public final w4.e o() {
        return this.f11315j;
    }

    public final UserEndpoint p() {
        return (UserEndpoint) this.f11307b.getValue();
    }

    public final t4.b q() {
        return (t4.b) this.f11311f.getValue();
    }

    public final void r() {
        rc.k.d(j0.a(this), null, null, new c(null), 3, null);
    }

    public final void s(w4.e eVar) {
        this.f11315j = eVar;
    }
}
