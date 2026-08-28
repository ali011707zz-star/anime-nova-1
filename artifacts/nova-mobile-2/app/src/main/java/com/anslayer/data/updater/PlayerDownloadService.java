package com.anslayer.data.updater;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import cd.h;
import com.anslayer.R;
import com.anslayer.data.updater.PlayerDownloadService;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.File;
import jc.g;
import jc.l;
import jc.m;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.http.HttpStatus;
import vb.f;

/* compiled from: PlayerDownloadService.kt */
/* loaded from: classes.dex */
public final class PlayerDownloadService extends IntentService {

    /* renamed from: i, reason: collision with root package name */
    public static final a f4133i = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f4134f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f4135g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f4136h;

    /* compiled from: PlayerDownloadService.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final PendingIntent a(Context context, String str) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            Intent intent = new Intent(context, (Class<?>) PlayerDownloadService.class);
            intent.putExtra("com.anslayer.PlayerDownloadService.DOWNLOAD_URL", str);
            PendingIntent service = PendingIntent.getService(context, 0, intent, 134217728);
            l.e(service, "getService(context, 0, i…tent.FLAG_UPDATE_CURRENT)");
            return service;
        }
    }

    /* compiled from: PlayerDownloadService.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<OkHttpClient> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4137f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OkHttpClient invoke() {
            return new OkHttpClient.Builder().build();
        }
    }

    /* compiled from: PlayerDownloadService.kt */
    /* loaded from: classes.dex */
    public static final class c implements x4.c {

        /* renamed from: a, reason: collision with root package name */
        public int f4138a;

        /* renamed from: b, reason: collision with root package name */
        public long f4139b;

        public c() {
        }

        @Override // x4.c
        public void a(long j10, long j11, boolean z10) {
            int i10 = (int) ((100 * j10) / j11);
            long currentTimeMillis = System.currentTimeMillis();
            if (i10 <= this.f4138a || currentTimeMillis - HttpStatus.SC_OK <= this.f4139b) {
                return;
            }
            this.f4138a = i10;
            this.f4139b = currentTimeMillis;
            PlayerDownloadService.this.e().d(i10);
        }
    }

    /* compiled from: PlayerDownloadService.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<i4.e> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i4.e invoke() {
            return new i4.e(PlayerDownloadService.this);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f4142f = new e();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public PlayerDownloadService() {
        super(PlayerDownloadService.class.getName());
        this.f4134f = f.a(b.f4137f);
        this.f4135g = f.a(new d());
        this.f4136h = f.a(e.f4142f);
    }

    public static final Response h(x4.c cVar, Interceptor.Chain chain) {
        l.f(cVar, "$listener");
        Response proceed = chain.proceed(chain.request());
        Response.Builder newBuilder = proceed.newBuilder();
        ResponseBody body = proceed.body();
        l.c(body);
        l.e(body, "originalResponse.body()!!");
        return newBuilder.body(new x4.d(body, cVar)).build();
    }

    public final void c(String str, String str2) {
        f().m().set(f4.b.ONGOING);
        e().c(str);
        c cVar = new c();
        try {
            OkHttpClient d10 = d();
            l.e(d10, "client");
            Response execute = g(d10, x4.e.b(str2, null, 2, null), cVar).execute();
            File file = new File(getExternalCacheDir(), "player.apk");
            if (execute.isSuccessful()) {
                ResponseBody body = execute.body();
                l.c(body);
                h source = body.source();
                l.e(source, "response.body()!!.source()");
                j7.b.a(source, file);
                f().m().set(f4.b.COMPLETED);
                e().b(j7.a.a(file, this));
                return;
            }
            execute.close();
            throw new Exception("Unsuccessful response");
        } catch (Exception e10) {
            e10.toString();
            f().m().set(f4.b.FAILED);
            e().a(str2);
        }
    }

    public final OkHttpClient d() {
        return (OkHttpClient) this.f4134f.getValue();
    }

    public final i4.e e() {
        return (i4.e) this.f4135g.getValue();
    }

    public final f4.d f() {
        return (f4.d) this.f4136h.getValue();
    }

    public final Call g(OkHttpClient okHttpClient, Request request, final x4.c cVar) {
        l.f(okHttpClient, "<this>");
        l.f(request, "request");
        l.f(cVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        Call newCall = okHttpClient.newBuilder().cache(null).addNetworkInterceptor(new Interceptor() { // from class: i4.f
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                Response h10;
                h10 = PlayerDownloadService.h(x4.c.this, chain);
                return h10;
            }
        }).build().newCall(request);
        l.e(newCall, "progressClient.newCall(request)");
        return newCall;
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("com.anslayer.PlayerDownloadService.DOWNLOAD_TITLE");
        if (stringExtra == null) {
            stringExtra = getString(R.string.app_name);
        }
        l.e(stringExtra, "intent.getStringExtra(EX…String(R.string.app_name)");
        String stringExtra2 = intent.getStringExtra("com.anslayer.PlayerDownloadService.DOWNLOAD_URL");
        if (stringExtra2 == null) {
            return;
        }
        c(stringExtra, stringExtra2);
    }
}
