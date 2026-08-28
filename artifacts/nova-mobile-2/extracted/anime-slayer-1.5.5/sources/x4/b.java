package x4;

import cc.h;
import com.anslayer.network.OkHttpException;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import jc.l;
import jc.m;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import rc.o;
import vb.j;
import vb.k;
import vb.p;

/* compiled from: OkHttpExtensions.kt */
/* loaded from: classes.dex */
public final class b {

    /* compiled from: OkHttpExtensions.kt */
    /* loaded from: classes.dex */
    public static final class a implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ o<Response> f15959a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(o<? super Response> oVar) {
            this.f15959a = oVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            l.f(call, "call");
            l.f(iOException, o7.e.f11821u);
            if (this.f15959a.isCancelled()) {
                return;
            }
            o<Response> oVar = this.f15959a;
            j.a aVar = j.f15020f;
            oVar.resumeWith(j.a(k.a(iOException)));
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            l.f(call, "call");
            l.f(response, "response");
            if (!response.isSuccessful()) {
                o<Response> oVar = this.f15959a;
                OkHttpException okHttpException = new OkHttpException(response);
                j.a aVar = j.f15020f;
                oVar.resumeWith(j.a(k.a(okHttpException)));
                return;
            }
            o<Response> oVar2 = this.f15959a;
            j.a aVar2 = j.f15020f;
            oVar2.resumeWith(j.a(response));
        }
    }

    /* compiled from: OkHttpExtensions.kt */
    /* renamed from: x4.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0411b extends m implements ic.l<Throwable, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Call f15960f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0411b(Call call) {
            super(1);
            this.f15960f = call;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            invoke2(th);
            return p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            try {
                this.f15960f.cancel();
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class c extends oa.a<Map<String, ? extends String>> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class d extends zd.a<ja.f> {
    }

    public static final Object a(Call call, ac.d<? super Response> dVar) {
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.z();
        call.enqueue(new a(pVar));
        pVar.n(new C0411b(call));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            h.c(dVar);
        }
        return v10;
    }

    public static final Map<String, String> b(ResponseBody responseBody) {
        Type b10;
        Map<String, String> map;
        if (responseBody == null) {
            return null;
        }
        try {
            String string = responseBody.string();
            l.e(string, "json");
            if (string.length() > 0) {
                try {
                    ja.f fVar = (ja.f) yd.a.a().a(new d().getType());
                    Type type = new c().getType();
                    l.b(type, "object : TypeToken<T>() {} .type");
                    if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                        b10 = ((ParameterizedType) type).getRawType();
                        l.b(b10, "type.rawType");
                    } else {
                        b10 = com.github.salomonbrys.kotson.c.b(type);
                    }
                    Object l10 = fVar.l(string, b10);
                    l.b(l10, "fromJson(json, typeToken<T>())");
                    map = (Map) l10;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                gc.b.a(responseBody, null);
                return map;
            }
            map = null;
            gc.b.a(responseBody, null);
            return map;
        } finally {
        }
    }
}
