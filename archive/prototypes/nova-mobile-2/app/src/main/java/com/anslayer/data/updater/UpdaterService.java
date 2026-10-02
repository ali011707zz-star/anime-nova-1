package com.anslayer.data.updater;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import cd.h;
import com.anslayer.R;
import com.anslayer.data.updater.UpdaterService;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import i4.i;
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
import vb.e;
import vb.f;

/* compiled from: UpdaterService.kt */
/* loaded from: classes.dex */
public final class UpdaterService extends IntentService {

    /* renamed from: h, reason: collision with root package name */
    public static final a f4143h = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final e f4144f;

    /* renamed from: g, reason: collision with root package name */
    public final e f4145g;

    /* compiled from: UpdaterService.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public static /* synthetic */ void c(a aVar, Context context, String str, String str2, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str2 = context.getString(R.string.app_name);
                l.e(str2, "fun downloadUpdate(\n    …Service(intent)\n        }");
            }
            aVar.b(context, str, str2);
        }

        public final PendingIntent a(Context context, String str) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            Intent intent = new Intent(context, (Class<?>) UpdaterService.class);
            intent.putExtra("com.anslayer.UpdaterService.DOWNLOAD_URL", str);
            PendingIntent service = PendingIntent.getService(context, 0, intent, 134217728);
            l.e(service, "getService(context, 0, i…tent.FLAG_UPDATE_CURRENT)");
            return service;
        }

        public final void b(Context context, String str, String str2) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            l.f(str2, "title");
            Intent intent = new Intent(context, (Class<?>) UpdaterService.class);
            intent.putExtra("com.anslayer.UpdaterService.DOWNLOAD_TITLE", str2);
            intent.putExtra("com.anslayer.UpdaterService.DOWNLOAD_URL", str);
            context.startService(intent);
        }
    }

    /* compiled from: UpdaterService.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<OkHttpClient> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4146f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OkHttpClient invoke() {
            return new OkHttpClient.Builder().build();
        }
    }

    /* compiled from: UpdaterService.kt */
    /* loaded from: classes.dex */
    public static final class c implements x4.c {

        /* renamed from: a, reason: collision with root package name */
        public int f4147a;

        /* renamed from: b, reason: collision with root package name */
        public long f4148b;

        public c() {
        }

        @Override // x4.c
        public void a(long j10, long j11, boolean z10) {
            int i10 = (int) ((100 * j10) / j11);
            long currentTimeMillis = System.currentTimeMillis();
            if (i10 <= this.f4147a || currentTimeMillis - HttpStatus.SC_OK <= this.f4148b) {
                return;
            }
            this.f4147a = i10;
            this.f4148b = currentTimeMillis;
            UpdaterService.this.e().d(i10);
        }
    }

    /* compiled from: UpdaterService.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<i> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i invoke() {
            return new i(UpdaterService.this);
        }
    }

    public UpdaterService() {
        super(UpdaterService.class.getName());
        this.f4144f = f.a(b.f4146f);
        this.f4145g = f.a(new d());
    }

    public static final Response g(x4.c cVar, Interceptor.Chain chain) {
        l.f(cVar, "$listener");
        Response proceed = chain.proceed(chain.request());
        Response.Builder newBuilder = proceed.newBuilder();
        ResponseBody body = proceed.body();
        l.c(body);
        l.e(body, "originalResponse.body()!!");
        return newBuilder.body(new x4.d(body, cVar)).build();
    }

    public final void c(String str, String str2) {
        e().c(str);
        c cVar = new c();
        try {
            OkHttpClient d10 = d();
            l.e(d10, "client");
            Response execute = f(d10, x4.e.b(str2, null, 2, null), cVar).execute();
            File file = new File(getExternalCacheDir(), "update.apk");
            if (execute.isSuccessful()) {
                ResponseBody body = execute.body();
                l.c(body);
                h source = body.source();
                l.e(source, "response.body()!!.source()");
                j7.b.a(source, file);
                e().b(j7.a.a(file, this));
                return;
            }
            execute.close();
            throw new Exception("Unsuccessful response");
        } catch (Exception e10) {
            e10.toString();
            e().a(str2);
        }
    }

    public final OkHttpClient d() {
        return (OkHttpClient) this.f4144f.getValue();
    }

    public final i e() {
        return (i) this.f4145g.getValue();
    }

    public final Call f(OkHttpClient okHttpClient, Request request, final x4.c cVar) {
        l.f(okHttpClient, "<this>");
        l.f(request, "request");
        l.f(cVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        Call newCall = okHttpClient.newBuilder().cache(null).addNetworkInterceptor(new Interceptor() { // from class: i4.j
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                Response g10;
                g10 = UpdaterService.g(x4.c.this, chain);
                return g10;
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
        String stringExtra = intent.getStringExtra("com.anslayer.UpdaterService.DOWNLOAD_TITLE");
        if (stringExtra == null) {
            stringExtra = getString(R.string.app_name);
        }
        l.e(stringExtra, "intent.getStringExtra(EX…String(R.string.app_name)");
        String stringExtra2 = intent.getStringExtra("com.anslayer.UpdaterService.DOWNLOAD_URL");
        if (stringExtra2 == null) {
            return;
        }
        c(stringExtra, stringExtra2);
    }
}
