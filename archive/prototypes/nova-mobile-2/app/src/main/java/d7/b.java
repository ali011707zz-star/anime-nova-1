package d7;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import cc.k;
import com.anslayer.R;
import ic.p;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import jc.l;
import jc.m;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.http.protocol.HTTP;
import rc.g1;
import rc.i;
import rc.q0;
import rc.r0;
import tc.r;
import tc.x;

/* compiled from: AdBlockerUtil.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final C0105b f5686d = new C0105b(null);

    /* renamed from: e, reason: collision with root package name */
    public static final vb.e<b> f5687e = vb.f.a(a.f5691f);

    /* renamed from: a, reason: collision with root package name */
    public boolean f5688a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5689b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap<String, Boolean> f5690c;

    /* compiled from: AdBlockerUtil.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<b> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f5691f = new a();

        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b invoke() {
            return new b(null);
        }
    }

    /* compiled from: AdBlockerUtil.kt */
    /* renamed from: d7.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0105b {
        public C0105b() {
        }

        public /* synthetic */ C0105b(jc.g gVar) {
            this();
        }

        public final b a() {
            return b();
        }

        public final b b() {
            return (b) b.f5687e.getValue();
        }
    }

    /* compiled from: AdBlockerUtil.kt */
    @cc.f(c = "com.anslayer.util.AdBlockerUtil$initialize$1", f = "AdBlockerUtil.kt", l = {107}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f5692f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f5694h;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<InputStream> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Context f5695f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ b f5696g;

            public a(Context context, b bVar) {
                this.f5695f = context;
                this.f5696g = bVar;
            }

            @Override // uc.g
            public Object a(InputStream inputStream, ac.d<? super vb.p> dVar) {
                InputStream inputStream2 = inputStream;
                if (inputStream2 == null) {
                    try {
                        inputStream2 = this.f5695f.getResources().openRawResource(R.raw.adblocker_webview_hosts);
                        l.e(inputStream2, "context.resources.openRa….adblocker_webview_hosts)");
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                this.f5696g.i(inputStream2);
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f5694h = context;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f5694h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f5692f;
            if (i10 == 0) {
                vb.k.b(obj);
                uc.f h10 = b.this.h();
                a aVar = new a(this.f5694h, b.this);
                this.f5692f = 1;
                if (h10.b(aVar, this) == d10) {
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

    /* compiled from: AdBlockerUtil.kt */
    @cc.f(c = "com.anslayer.util.AdBlockerUtil$loadHostFromServer$1", f = "AdBlockerUtil.kt", l = {104}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends k implements p<r<? super InputStream>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f5697f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f5698g;

        /* compiled from: AdBlockerUtil.kt */
        /* loaded from: classes.dex */
        public static final class a implements Callback {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ r<InputStream> f5699a;

            /* JADX WARN: Multi-variable type inference failed */
            public a(r<? super InputStream> rVar) {
                this.f5699a = rVar;
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                l.f(call, "call");
                l.f(iOException, o7.e.f11821u);
                iOException.printStackTrace();
                this.f5699a.m(null);
                x.a.a(this.f5699a, null, 1, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                l.f(call, "call");
                l.f(response, "response");
                r<InputStream> rVar = this.f5699a;
                ResponseBody body = response.body();
                rVar.m(body == null ? null : body.byteStream());
                x.a.a(this.f5699a, null, 1, null);
            }
        }

        public d(ac.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            d dVar2 = new d(dVar);
            dVar2.f5698g = obj;
            return dVar2;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super InputStream> rVar, ac.d<? super vb.p> dVar) {
            return ((d) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f5697f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f5698g;
                try {
                    new OkHttpClient.Builder().build().newCall(new Request.Builder().url("https://pgl.yoyo.org/as/serverlist.php?hostformat=nohtml&showintro=0").build()).enqueue(new a(rVar));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    rVar.m(null);
                    x.a.a(rVar, null, 1, null);
                }
                this.f5697f = 1;
                if (tc.p.b(rVar, null, this, 1, null) == d10) {
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

    /* compiled from: AdBlockerUtil.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<String> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ cd.h f5700f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(cd.h hVar) {
            super(0);
            this.f5700f = hVar;
        }

        @Override // ic.a
        public final String invoke() {
            return this.f5700f.W();
        }
    }

    public b() {
        this.f5689b = "AdBlockerUtil";
        this.f5690c = new HashMap<>();
    }

    public /* synthetic */ b(jc.g gVar) {
        this();
    }

    public static /* synthetic */ void f(b bVar, Context context, q0 q0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            q0Var = r0.a(g1.a());
        }
        bVar.e(context, q0Var);
    }

    public final WebResourceResponse d() {
        byte[] bytes = "".getBytes(qc.c.f12678b);
        l.e(bytes, "this as java.lang.String).getBytes(charset)");
        return new WebResourceResponse(HTTP.PLAIN_TEXT_TYPE, "utf-8", new ByteArrayInputStream(bytes));
    }

    public final void e(Context context, q0 q0Var) {
        l.f(context, "context");
        l.f(q0Var, "scope");
        i.d(q0Var, null, null, new c(context, null), 3, null);
    }

    public final boolean g(String str) {
        String host;
        if (this.f5688a || str == null || (host = Uri.parse(str).getHost()) == null) {
            return false;
        }
        return this.f5690c.containsKey(host);
    }

    public final uc.f<InputStream> h() {
        return uc.h.c(new d(null));
    }

    public final void i(InputStream inputStream) {
        this.f5688a = true;
        this.f5690c.clear();
        cd.h d10 = cd.p.d(cd.p.l(inputStream));
        try {
            Iterator it2 = pc.f.c(new e(d10)).iterator();
            while (it2.hasNext()) {
                this.f5690c.put((String) it2.next(), Boolean.TRUE);
            }
            vb.p pVar = vb.p.f15031a;
            gc.b.a(d10, null);
            this.f5688a = false;
        } finally {
        }
    }
}
