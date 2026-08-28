package x4;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cc.h;
import cc.k;
import com.google.android.gms.common.internal.ImagesContract;
import ic.l;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import jc.m;
import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import rc.b1;
import rc.g1;
import rc.i;
import rc.o;
import rc.q0;
import rc.r0;
import vb.j;
import vb.p;

/* compiled from: Requests.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Headers f15968a = new Headers.Builder().add("User-Agent", "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36").build();

    /* renamed from: b, reason: collision with root package name */
    public static final RequestBody f15969b;

    /* compiled from: Requests.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements l<String, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ o<String> f15970f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(o<? super String> oVar) {
            super(1);
            this.f15970f = oVar;
        }

        public final void a(String str) {
            jc.l.f(str, "htmlContent");
            if (this.f15970f.b()) {
                o<String> oVar = this.f15970f;
                j.a aVar = j.f15020f;
                oVar.resumeWith(j.a(str));
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(String str) {
            a(str);
            return p.f15031a;
        }
    }

    /* compiled from: Requests.kt */
    /* loaded from: classes.dex */
    public static final class b extends WebViewClient {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f15971a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ WebView f15972b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ q0 f15973c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ o<String> f15974d;

        /* compiled from: Requests.kt */
        @cc.f(c = "com.anslayer.network.RequestsKt$getHTML$2$2$onPageFinished$1", f = "Requests.kt", l = {107}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<q0, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f15975f;

            /* renamed from: g, reason: collision with root package name */
            public /* synthetic */ Object f15976g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ int f15977h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ WebView f15978i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(int i10, WebView webView, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f15977h = i10;
                this.f15978i = webView;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                a aVar = new a(this.f15977h, this.f15978i, dVar);
                aVar.f15976g = obj;
                return aVar;
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                q0 q0Var;
                Object d10 = bc.c.d();
                int i10 = this.f15975f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    q0 q0Var2 = (q0) this.f15976g;
                    long millis = TimeUnit.SECONDS.toMillis(this.f15977h);
                    this.f15976g = q0Var2;
                    this.f15975f = 1;
                    if (b1.a(millis, this) == d10) {
                        return d10;
                    }
                    q0Var = q0Var2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    q0Var = (q0) this.f15976g;
                    vb.k.b(obj);
                }
                if (r0.g(q0Var)) {
                    this.f15978i.loadUrl("javascript:window.HTMLOUT.showHTML('<html>'+document.getElementsByTagName('html')[0].innerHTML+'</html>');");
                }
                return p.f15031a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i10, WebView webView, q0 q0Var, o<? super String> oVar) {
            this.f15971a = i10;
            this.f15972b = webView;
            this.f15973c = q0Var;
            this.f15974d = oVar;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            int i10 = this.f15971a;
            if (i10 != 0) {
                rc.k.d(this.f15973c, null, null, new a(i10, this.f15972b, null), 3, null);
            } else {
                this.f15972b.loadUrl("javascript:window.HTMLOUT.showHTML('<html>'+document.getElementsByTagName('html')[0].innerHTML+'</html>');");
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (this.f15974d.isCancelled()) {
                return;
            }
            o<String> oVar = this.f15974d;
            j.a aVar = j.f15020f;
            oVar.resumeWith(j.a(vb.k.a(new Exception())));
        }
    }

    /* compiled from: Requests.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<Throwable, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ q0 f15979f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ WebView f15980g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(q0 q0Var, WebView webView) {
            super(1);
            this.f15979f = q0Var;
            this.f15980g = webView;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            invoke2(th);
            return p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            try {
                r0.d(this.f15979f, null, 1, null);
            } catch (Exception unused) {
            }
            this.f15980g.removeJavascriptInterface("HTMLOUT");
            try {
                this.f15980g.stopLoading();
                this.f15980g.destroy();
            } catch (Exception unused2) {
            }
        }
    }

    /* compiled from: Requests.kt */
    @cc.f(c = "com.anslayer.network.RequestsKt$rawGetResponse$2", f = "Requests.kt", l = {56}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends k implements ic.p<q0, ac.d<? super String>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15981f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Request f15982g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Request request, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f15982g = request;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f15982g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15981f;
            if (i10 == 0) {
                vb.k.b(obj);
                Call newCall = z3.b.f17284d.a().newCall(this.f15982g);
                jc.l.e(newCall, "RetroFactory.client.newCall(request)");
                this.f15981f = 1;
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
                return str;
            }
            throw new Exception("Failed to get servers");
        }
    }

    /* compiled from: Requests.kt */
    @cc.f(c = "com.anslayer.network.RequestsKt$rawPostResponse$2", f = "Requests.kt", l = {71}, m = "invokeSuspend")
    /* renamed from: x4.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0412e extends k implements ic.p<q0, ac.d<? super String>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15983f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Request f15984g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0412e(Request request, ac.d<? super C0412e> dVar) {
            super(2, dVar);
            this.f15984g = request;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new C0412e(this.f15984g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
            return ((C0412e) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15983f;
            if (i10 == 0) {
                vb.k.b(obj);
                Call newCall = z3.b.f17284d.a().newCall(this.f15984g);
                jc.l.e(newCall, "RetroFactory.client.newCall(request)");
                this.f15983f = 1;
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
                return str;
            }
            throw new Exception("Failed to get servers");
        }
    }

    static {
        FormBody build = new FormBody.Builder().build();
        jc.l.e(build, "Builder().build()");
        f15969b = build;
    }

    public static final Request a(String str, Headers headers) {
        jc.l.f(str, ImagesContract.URL);
        jc.l.f(headers, "headers");
        Request build = new Request.Builder().url(str).headers(headers).build();
        jc.l.e(build, "Builder()\n        .url(u…headers)\n        .build()");
        return build;
    }

    public static /* synthetic */ Request b(String str, Headers headers, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            headers = f15968a;
            jc.l.e(headers, "DEFAULT_HEADERS");
        }
        return a(str, headers);
    }

    public static final Request c(String str, Headers headers, RequestBody requestBody) {
        jc.l.f(str, ImagesContract.URL);
        jc.l.f(headers, "headers");
        jc.l.f(requestBody, "body");
        Request build = new Request.Builder().url(str).post(requestBody).headers(headers).build();
        jc.l.e(build, "Builder()\n        .url(u…headers)\n        .build()");
        return build;
    }

    public static /* synthetic */ Request d(String str, Headers headers, RequestBody requestBody, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            headers = f15968a;
            jc.l.e(headers, "DEFAULT_HEADERS");
        }
        if ((i10 & 4) != 0) {
            requestBody = f15969b;
        }
        return c(str, headers, requestBody);
    }

    public static final FormBody.Builder e(Context context) {
        jc.l.f(context, "context");
        FormBody.Builder builder = new FormBody.Builder();
        builder.add("device_type", Build.BRAND);
        builder.add("app_package_name", "com.anslayer");
        builder.add("device_name", Build.DEVICE);
        builder.add("app_version", "1.5.5 (41)");
        builder.add("device_software_version", ((Object) Build.VERSION.RELEASE) + " (SDK " + Build.VERSION.SDK_INT + ')');
        builder.add("platform", "Android");
        h4.a aVar = h4.a.f7265a;
        String b10 = aVar.b();
        if (b10 == null) {
            b10 = "";
        }
        builder.add("user_ip", b10);
        String a10 = aVar.a();
        if (a10 == null) {
            a10 = "";
        }
        builder.add("user_country", a10);
        String e10 = k7.b.e(context);
        builder.add("device_id", e10 != null ? e10 : "");
        return builder;
    }

    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface", "JavascriptInterface"})
    public static final Object f(WebView webView, String str, int i10, ac.d<? super String> dVar) {
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.z();
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36");
        webView.addJavascriptInterface(new x4.a(new a(pVar)), "HTMLOUT");
        q0 b10 = r0.b();
        webView.setWebViewClient(new b(i10, webView, b10, pVar));
        webView.loadUrl(str);
        pVar.n(new c(b10, webView));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            h.c(dVar);
        }
        return v10;
    }

    public static final Object g(String str, Map<String, String> map, ac.d<? super String> dVar) {
        Request a10;
        if (map == null || map.isEmpty()) {
            a10 = b(str, null, 2, null);
        } else {
            Headers of = Headers.of(map);
            jc.l.e(of, "of(headersMap)");
            a10 = a(str, of);
        }
        return i.g(g1.b(), new d(a10, null), dVar);
    }

    public static /* synthetic */ Object h(String str, Map map, ac.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        return g(str, map, dVar);
    }

    public static final Object i(String str, Map<String, String> map, RequestBody requestBody, ac.d<? super String> dVar) {
        Request c10;
        if (map == null || map.isEmpty()) {
            c10 = d(str, null, requestBody, 2, null);
        } else {
            Headers of = Headers.of(map);
            jc.l.e(of, "of(headersMap)");
            c10 = c(str, of, requestBody);
        }
        return i.g(g1.b(), new C0412e(c10, null), dVar);
    }

    public static /* synthetic */ Object j(String str, Map map, RequestBody requestBody, ac.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        if ((i10 & 4) != 0) {
            requestBody = f15969b;
        }
        return i(str, map, requestBody, dVar);
    }
}
