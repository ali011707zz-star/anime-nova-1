package p6;

import android.app.Application;
import android.net.Uri;
import cc.k;
import com.anslayer.api.endpoint.UserEndpoint;
import ic.p;
import ja.n;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.l;
import jc.m;
import okhttp3.ResponseBody;
import rc.g1;
import rc.l0;
import rc.q0;
import rd.q;
import retrofit2.HttpException;

/* compiled from: EditProfileViewModel.kt */
/* loaded from: classes.dex */
public final class i extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final Application f12056b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f12057c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f12058d;

    /* renamed from: e, reason: collision with root package name */
    public Uri f12059e;

    /* renamed from: f, reason: collision with root package name */
    public Uri f12060f;

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class a extends oa.a<n> {
    }

    /* compiled from: EditProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileViewModel", f = "EditProfileViewModel.kt", l = {25, 28}, m = "checkUsername")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f12061f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f12062g;

        /* renamed from: i, reason: collision with root package name */
        public int f12064i;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f12062g = obj;
            this.f12064i |= Integer.MIN_VALUE;
            return i.this.b(null, this);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileViewModel$checkUsername$error$1", f = "EditProfileViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super String>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12065f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Exception f12066g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Exception exc, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f12066g = exc;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f12066g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            q<?> c10;
            ResponseBody d10;
            bc.c.d();
            if (this.f12065f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Exception exc = this.f12066g;
            if (!(exc instanceof HttpException) || (c10 = ((HttpException) exc).c()) == null || (d10 = c10.d()) == null) {
                return null;
            }
            return d10.string();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f12067f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<UserEndpoint> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            return (UserEndpoint) z3.b.f17284d.getInstance(i.this.c()).b(UserEndpoint.class);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Application application) {
        super(application);
        l.f(application, "app");
        this.f12056b = application;
        this.f12057c = vb.f.a(new e());
        this.f12058d = vb.f.a(d.f12067f);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0091 A[Catch: Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:13:0x0078, B:15:0x0091, B:17:0x009a, B:18:0x00aa, B:23:0x00a6), top: B:12:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(String str, ac.d<? super vb.i<Boolean, String>> dVar) {
        b bVar;
        int i10;
        i iVar;
        Type type;
        Type b10;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i11 = bVar.f12064i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f12064i = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f12062g;
                Object d10 = bc.c.d();
                i10 = bVar.f12064i;
                String str2 = null;
                if (i10 != 0) {
                    vb.k.b(obj);
                    try {
                        UserEndpoint g10 = g();
                        bVar.f12061f = this;
                        bVar.f12064i = 1;
                        if (g10.checkUsername(str, bVar) == d10) {
                            return d10;
                        }
                        iVar = this;
                    } catch (Exception e10) {
                        e = e10;
                        iVar = this;
                        l0 b11 = g1.b();
                        c cVar = new c(e, null);
                        bVar.f12061f = iVar;
                        bVar.f12064i = 2;
                        obj = rc.i.g(b11, cVar, bVar);
                        if (obj == d10) {
                            return d10;
                        }
                        String str3 = (String) obj;
                        ja.f f10 = iVar.f();
                        l.c(str3);
                        type = new a().getType();
                        l.b(type, "object : TypeToken<T>() {} .type");
                        if (!(type instanceof ParameterizedType)) {
                        }
                        b10 = com.github.salomonbrys.kotson.c.b(type);
                        Object l10 = f10.l(str3, b10);
                        l.b(l10, "fromJson(json, typeToken<T>())");
                        ja.l l11 = ((n) l10).l("detail");
                        l.e(l11, "message[\"detail\"]");
                        str2 = com.github.salomonbrys.kotson.b.f(l11);
                        return new vb.i(cc.b.a(false), str2);
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        iVar = (i) bVar.f12061f;
                        vb.k.b(obj);
                        String str32 = (String) obj;
                        try {
                            ja.f f102 = iVar.f();
                            l.c(str32);
                            type = new a().getType();
                            l.b(type, "object : TypeToken<T>() {} .type");
                            if (!(type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                                b10 = ((ParameterizedType) type).getRawType();
                                l.b(b10, "type.rawType");
                            } else {
                                b10 = com.github.salomonbrys.kotson.c.b(type);
                            }
                            Object l102 = f102.l(str32, b10);
                            l.b(l102, "fromJson(json, typeToken<T>())");
                            ja.l l112 = ((n) l102).l("detail");
                            l.e(l112, "message[\"detail\"]");
                            str2 = com.github.salomonbrys.kotson.b.f(l112);
                        } catch (Exception unused) {
                        }
                        return new vb.i(cc.b.a(false), str2);
                    }
                    iVar = (i) bVar.f12061f;
                    try {
                        vb.k.b(obj);
                    } catch (Exception e11) {
                        e = e11;
                        l0 b112 = g1.b();
                        c cVar2 = new c(e, null);
                        bVar.f12061f = iVar;
                        bVar.f12064i = 2;
                        obj = rc.i.g(b112, cVar2, bVar);
                        if (obj == d10) {
                        }
                        String str322 = (String) obj;
                        ja.f f1022 = iVar.f();
                        l.c(str322);
                        type = new a().getType();
                        l.b(type, "object : TypeToken<T>() {} .type");
                        if (!(type instanceof ParameterizedType)) {
                        }
                        b10 = com.github.salomonbrys.kotson.c.b(type);
                        Object l1022 = f1022.l(str322, b10);
                        l.b(l1022, "fromJson(json, typeToken<T>())");
                        ja.l l1122 = ((n) l1022).l("detail");
                        l.e(l1122, "message[\"detail\"]");
                        str2 = com.github.salomonbrys.kotson.b.f(l1122);
                        return new vb.i(cc.b.a(false), str2);
                    }
                }
                return new vb.i(cc.b.a(true), null);
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f12062g;
        Object d102 = bc.c.d();
        i10 = bVar.f12064i;
        String str22 = null;
        if (i10 != 0) {
        }
        return new vb.i(cc.b.a(true), null);
    }

    public final Application c() {
        return this.f12056b;
    }

    public final Uri d() {
        return this.f12060f;
    }

    public final Uri e() {
        return this.f12059e;
    }

    public final ja.f f() {
        return (ja.f) this.f12058d.getValue();
    }

    public final UserEndpoint g() {
        return (UserEndpoint) this.f12057c.getValue();
    }

    public final void h(Uri uri) {
        this.f12060f = uri;
    }

    public final void i(Uri uri) {
        this.f12059e = uri;
    }
}
