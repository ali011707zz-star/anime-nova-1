package z6;

import android.content.Context;
import bc.c;
import cc.d;
import cc.f;
import cc.k;
import com.anslayer.network.OkHttpException;
import i7.b;
import ic.p;
import ja.i;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import jc.l;
import o7.e;
import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import qc.u;
import rc.g1;
import rc.l0;
import rc.q0;
import tgio.rncryptor.RNCryptorNative;
import wb.m;

/* compiled from: Cdn.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f17420a = new a();

    /* compiled from: Cdn.kt */
    @f(c = "com.anslayer.ui.servers.resolver.Cdn", f = "Cdn.kt", l = {24, 42}, m = "getQualityLinks")
    /* renamed from: z6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0443a extends d {

        /* renamed from: f, reason: collision with root package name */
        public Object f17421f;

        /* renamed from: g, reason: collision with root package name */
        public Object f17422g;

        /* renamed from: h, reason: collision with root package name */
        public Object f17423h;

        /* renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f17424i;

        /* renamed from: k, reason: collision with root package name */
        public int f17426k;

        public C0443a(ac.d<? super C0443a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f17424i = obj;
            this.f17426k |= Integer.MIN_VALUE;
            return a.this.a(null, null, null, null, this);
        }
    }

    /* compiled from: Cdn.kt */
    @f(c = "com.anslayer.ui.servers.resolver.Cdn$getQualityLinks$2", f = "Cdn.kt", l = {44}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super List<? extends String>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17427f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Request f17428g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ RNCryptorNative f17429h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ja.f f17430i;

        /* compiled from: GsonBuilder.kt */
        /* renamed from: z6.a$b$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0444a extends oa.a<i> {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Request request, RNCryptorNative rNCryptorNative, ja.f fVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f17428g = request;
            this.f17429h = rNCryptorNative;
            this.f17430i = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f17428g, this.f17429h, this.f17430i, dVar);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ Object invoke(q0 q0Var, ac.d<? super List<? extends String>> dVar) {
            return invoke2(q0Var, (ac.d<? super List<String>>) dVar);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(q0 q0Var, ac.d<? super List<String>> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Type b10;
            Object d10 = c.d();
            int i10 = this.f17427f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    Call newCall = z3.b.f17284d.a().newCall(this.f17428g);
                    l.e(newCall, "RetroFactory.client.newCall(request)");
                    this.f17427f = 1;
                    obj = x4.b.a(newCall, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                ResponseBody body = ((Response) obj).body();
                String str = null;
                if (body != null) {
                    try {
                        String string = body.string();
                        gc.b.a(body, null);
                        str = string;
                    } finally {
                    }
                }
                if (str != null) {
                    String decrypt = this.f17429h.decrypt(str, y4.a.f16430a.b());
                    ja.f fVar = this.f17430i;
                    l.e(decrypt, "decrypted");
                    Type type = new C0444a().getType();
                    l.b(type, "object : TypeToken<T>() {} .type");
                    if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                        b10 = ((ParameterizedType) type).getRawType();
                        l.b(b10, "type.rawType");
                    } else {
                        b10 = com.github.salomonbrys.kotson.c.b(type);
                    }
                    Object l10 = fVar.l(decrypt, b10);
                    l.b(l10, "fromJson(json, typeToken<T>())");
                    i iVar = (i) l10;
                    ArrayList arrayList = new ArrayList(m.q(iVar, 10));
                    for (ja.l lVar : iVar) {
                        l.e(lVar, "it");
                        arrayList.add(com.github.salomonbrys.kotson.b.f(com.github.salomonbrys.kotson.b.b(lVar, "file")));
                    }
                    return arrayList;
                }
                throw new Exception("Failed to get servers");
            } catch (Exception e10) {
                if ((e10 instanceof OkHttpException) && ((OkHttpException) e10).a() == 404) {
                    b.a aVar = i7.b.f7890a;
                    aVar.j(aVar.h() + 1);
                }
                throw e10;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0107 A[PHI: r0
      0x0107: PHI (r0v17 java.lang.Object) = (r0v14 java.lang.Object), (r0v1 java.lang.Object) binds: [B:23:0x0104, B:10:0x002f] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0106 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(String str, Context context, RNCryptorNative rNCryptorNative, ja.f fVar, ac.d<? super List<String>> dVar) {
        C0443a c0443a;
        Object obj;
        Object d10;
        int i10;
        String str2;
        RNCryptorNative rNCryptorNative2;
        ja.f fVar2;
        String g10;
        String str3;
        if (dVar instanceof C0443a) {
            c0443a = (C0443a) dVar;
            int i11 = c0443a.f17426k;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c0443a.f17426k = i11 - Integer.MIN_VALUE;
                obj = c0443a.f17424i;
                d10 = c.d();
                i10 = c0443a.f17426k;
                if (i10 != 0) {
                    vb.k.b(obj);
                    b.a aVar = i7.b.f7890a;
                    if (aVar.g() == null || aVar.h() > 0) {
                        str2 = str;
                        c0443a.f17421f = str2;
                        rNCryptorNative2 = rNCryptorNative;
                        c0443a.f17422g = rNCryptorNative2;
                        fVar2 = fVar;
                        c0443a.f17423h = fVar2;
                        c0443a.f17426k = 1;
                        obj = aVar.f(context, c0443a);
                        if (obj == d10) {
                            return d10;
                        }
                    } else {
                        str2 = str;
                        rNCryptorNative2 = rNCryptorNative;
                        fVar2 = fVar;
                        List d02 = u.d0(u.i0(str2, "php?", null, 2, null), new String[]{"&"}, false, 0, 6, null);
                        String i02 = u.i0((String) d02.get(0), "f=", null, 2, null);
                        String i03 = u.i0((String) d02.get(1), "e=", null, 2, null);
                        String q02 = u.q0(str2, "?f=", null, 2, null);
                        FormBody.Builder add = new FormBody.Builder().add("f", i02).add(e.f11821u, i03);
                        g10 = i7.b.f7890a.g();
                        if (g10 == null) {
                            g10 = "";
                        }
                        FormBody build = add.add("inf", g10).build();
                        l.e(build, "body");
                        Request d11 = x4.e.d(q02, null, build, 2, null);
                        l0 b10 = g1.b();
                        b bVar = new b(d11, rNCryptorNative2, fVar2, null);
                        c0443a.f17421f = null;
                        c0443a.f17422g = null;
                        c0443a.f17423h = null;
                        c0443a.f17426k = 2;
                        obj = rc.i.g(b10, bVar, c0443a);
                        return obj == d10 ? d10 : obj;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            vb.k.b(obj);
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ja.f fVar3 = (ja.f) c0443a.f17423h;
                    rNCryptorNative2 = (RNCryptorNative) c0443a.f17422g;
                    String str4 = (String) c0443a.f17421f;
                    vb.k.b(obj);
                    fVar2 = fVar3;
                    str2 = str4;
                }
                str3 = (String) obj;
                if (str3 != null) {
                    b.a aVar2 = i7.b.f7890a;
                    aVar2.j(0);
                    aVar2.i(str3);
                }
                List d022 = u.d0(u.i0(str2, "php?", null, 2, null), new String[]{"&"}, false, 0, 6, null);
                String i022 = u.i0((String) d022.get(0), "f=", null, 2, null);
                String i032 = u.i0((String) d022.get(1), "e=", null, 2, null);
                String q022 = u.q0(str2, "?f=", null, 2, null);
                FormBody.Builder add2 = new FormBody.Builder().add("f", i022).add(e.f11821u, i032);
                g10 = i7.b.f7890a.g();
                if (g10 == null) {
                }
                FormBody build2 = add2.add("inf", g10).build();
                l.e(build2, "body");
                Request d112 = x4.e.d(q022, null, build2, 2, null);
                l0 b102 = g1.b();
                b bVar2 = new b(d112, rNCryptorNative2, fVar2, null);
                c0443a.f17421f = null;
                c0443a.f17422g = null;
                c0443a.f17423h = null;
                c0443a.f17426k = 2;
                obj = rc.i.g(b102, bVar2, c0443a);
                if (obj == d10) {
                }
            }
        }
        c0443a = new C0443a(dVar);
        obj = c0443a.f17424i;
        d10 = c.d();
        i10 = c0443a.f17426k;
        if (i10 != 0) {
        }
        str3 = (String) obj;
        if (str3 != null) {
        }
        List d0222 = u.d0(u.i0(str2, "php?", null, 2, null), new String[]{"&"}, false, 0, 6, null);
        String i0222 = u.i0((String) d0222.get(0), "f=", null, 2, null);
        String i0322 = u.i0((String) d0222.get(1), "e=", null, 2, null);
        String q0222 = u.q0(str2, "?f=", null, 2, null);
        FormBody.Builder add22 = new FormBody.Builder().add("f", i0222).add(e.f11821u, i0322);
        g10 = i7.b.f7890a.g();
        if (g10 == null) {
        }
        FormBody build22 = add22.add("inf", g10).build();
        l.e(build22, "body");
        Request d1122 = x4.e.d(q0222, null, build22, 2, null);
        l0 b1022 = g1.b();
        b bVar22 = new b(d1122, rNCryptorNative2, fVar2, null);
        c0443a.f17421f = null;
        c0443a.f17422g = null;
        c0443a.f17423h = null;
        c0443a.f17426k = 2;
        obj = rc.i.g(b1022, bVar22, c0443a);
        if (obj == d10) {
        }
    }
}
