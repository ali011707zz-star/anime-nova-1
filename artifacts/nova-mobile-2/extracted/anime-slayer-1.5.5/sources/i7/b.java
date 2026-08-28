package i7;

import ac.d;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import bc.c;
import cc.f;
import cc.k;
import com.anslayer.R;
import com.anslayer.util.DriveUtil;
import com.google.android.gms.common.internal.ImagesContract;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import ic.p;
import jc.g;
import jc.l;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import qc.i;
import qc.t;
import qc.u;
import rc.g1;
import rc.j;
import rc.q0;
import x4.e;

/* compiled from: ServerUtil.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f7890a = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public static String f7891b;

    /* renamed from: c, reason: collision with root package name */
    public static int f7892c;

    /* compiled from: ServerUtil.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* compiled from: ServerUtil.kt */
        @f(c = "com.anslayer.util.servers.ServerUtil$Companion$getAwsToken$2", f = "ServerUtil.kt", l = {193}, m = "invokeSuspend")
        /* renamed from: i7.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0155a extends k implements p<q0, d<? super String>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f7893f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Request f7894g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ Context f7895h;

            /* compiled from: ServerUtil.kt */
            @f(c = "com.anslayer.util.servers.ServerUtil$Companion$getAwsToken$2$1", f = "ServerUtil.kt", l = {}, m = "invokeSuspend")
            /* renamed from: i7.b$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0156a extends k implements p<q0, d<? super String>, Object> {

                /* renamed from: f, reason: collision with root package name */
                public int f7896f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ Context f7897g;

                /* renamed from: h, reason: collision with root package name */
                public final /* synthetic */ String f7898h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0156a(Context context, String str, d<? super C0156a> dVar) {
                    super(2, dVar);
                    this.f7897g = context;
                    this.f7898h = str;
                }

                @Override // cc.a
                public final d<vb.p> create(Object obj, d<?> dVar) {
                    return new C0156a(this.f7897g, this.f7898h, dVar);
                }

                @Override // ic.p
                public final Object invoke(q0 q0Var, d<? super String> dVar) {
                    return ((C0156a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    c.d();
                    if (this.f7896f != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return DriveUtil.a(this.f7897g, this.f7898h);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0155a(Request request, Context context, d<? super C0155a> dVar) {
                super(2, dVar);
                this.f7894g = request;
                this.f7895h = context;
            }

            @Override // cc.a
            public final d<vb.p> create(Object obj, d<?> dVar) {
                return new C0155a(this.f7894g, this.f7895h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, d<? super String> dVar) {
                return ((C0155a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object b10;
                Object d10 = c.d();
                int i10 = this.f7893f;
                try {
                    if (i10 == 0) {
                        vb.k.b(obj);
                        Call newCall = z3.b.f17284d.a().newCall(this.f7894g);
                        l.e(newCall, "RetroFactory.client.newCall(request)");
                        this.f7893f = 1;
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
                    String string = body == null ? null : body.string();
                    if (string == null) {
                        return null;
                    }
                    b10 = j.b(null, new C0156a(this.f7895h, string, null), 1, null);
                    return (String) b10;
                } catch (Exception unused) {
                    return null;
                }
            }
        }

        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final boolean a(Context context, String str) {
            l.f(context, "context");
            l.f(str, "uri");
            try {
                context.getPackageManager().getPackageInfo(str, 1);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                return false;
            }
        }

        public final void b(Context context) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String packageName = context.getPackageName();
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    l.c(powerManager);
                    if (powerManager.isIgnoringBatteryOptimizations(packageName)) {
                        return;
                    }
                    k7.b.o(context, R.string.battery_optimization_note, 1);
                    Intent intent = new Intent();
                    intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                    intent.setData(Uri.parse(l.m("package:", packageName)));
                    context.startActivity(intent);
                }
            } catch (Exception unused) {
            }
        }

        public final void c(Context context, String str, String str2, v4.a aVar) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            l.f(str2, "title");
            l.f(aVar, "serverModel");
            if (e() < 300) {
                k7.b.o(context, R.string.low_storage_size, 1);
                return;
            }
            b(context);
            try {
                String v10 = t.v(t.v(t.v(new i("[^a-zA-Z0-9_]+").c(str2, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR), "____", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, false, 4, null), "___", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, false, 4, null), "__", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, false, 4, null);
                Object systemService = context.getSystemService("download");
                if (systemService != null) {
                    DownloadManager downloadManager = (DownloadManager) systemService;
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                    request.setTitle(v10);
                    request.setMimeType("video/*");
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, l.m(v10, ".mp4"));
                    if (u.C(str, "mycdn.me", false, 2, null) || u.C(str, "tunefiles", false, 2, null) || u.C(str, "mxdcontent", false, 2, null)) {
                        request.addRequestHeader("User-Agent", "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36");
                    }
                    request.allowScanningByMediaScanner();
                    request.setNotificationVisibility(1);
                    k7.b.q(context, R.string.downloading, 0, 2, null);
                    downloadManager.enqueue(request);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.app.DownloadManager");
            } catch (Exception e10) {
                e10.printStackTrace();
                k7.b.q(context, R.string.download_error, 0, 2, null);
            }
        }

        public final void d(Context context, String str, String str2, v4.a aVar) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            l.f(str2, "title");
            l.f(aVar, "serverModel");
            String str3 = "com.dv.adm";
            boolean a10 = a(context, "com.dv.adm");
            boolean a11 = a(context, "com.dv.adm.pay");
            boolean a12 = a(context, "com.dv.adm.old");
            if (!a10 && !a11 && !a12) {
                try {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(l.m("market://details?id=", "com.dv.adm"))));
                    return;
                } catch (ActivityNotFoundException unused) {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(l.m("https://play.google.com/store/apps/details?id=", "com.dv.adm"))));
                    return;
                }
            }
            if (a11) {
                str3 = "com.dv.adm.pay";
            } else if (!a10) {
                str3 = "com.dv.adm.old";
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(str), "application/x-mpegURL");
                intent.setPackage(str3);
                intent.putExtra("title", l.m(str2, ".mp4"));
                intent.putExtra("User-Agent", "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36");
                intent.putExtra("secure_uri", true);
                intent.putExtra("secure_threads", 1);
                context.startActivity(intent);
            } catch (Exception unused2) {
                k7.b.p(context, "error", 1);
            }
        }

        public final long e() {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return (statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1048576;
        }

        public final Object f(Context context, d<? super String> dVar) {
            return rc.i.g(g1.b(), new C0155a(e.b("https://anslayer.com/anime/public/google.php", null, 2, null), context, null), dVar);
        }

        public final String g() {
            return b.f7891b;
        }

        public final int h() {
            return b.f7892c;
        }

        public final void i(String str) {
            b.f7891b = str;
        }

        public final void j(int i10) {
            b.f7892c = i10;
        }

        public final void k(Context context, String str, String str2) {
            String str3;
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            l.f(str2, "title");
            String v10 = t.v(str, '/' + new i("[^a-zA-Z0-9]+").c(str2, "") + ".mp4", "", false, 4, null);
            String str4 = "com.mxtech.videoplayer.ad";
            boolean a10 = a(context, "com.mxtech.videoplayer.ad");
            boolean a11 = a(context, "com.mxtech.videoplayer.pro");
            if (!a10 && !a11) {
                try {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(l.m("market://details?id=", "com.mxtech.videoplayer.ad"))));
                    return;
                } catch (ActivityNotFoundException unused) {
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(l.m("https://play.google.com/store/apps/details?id=", "com.mxtech.videoplayer.ad"))));
                    return;
                }
            }
            if (a11) {
                str3 = "com.mxtech.videoplayer.ActivityScreen";
                str4 = "com.mxtech.videoplayer.pro";
            } else {
                str3 = "com.mxtech.videoplayer.ad.ActivityScreen";
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(v10), "application/x-mpegURL");
                intent.setPackage(str4);
                intent.setClassName(str4, str3);
                intent.putExtra("title", str2);
                intent.putExtra("secure_uri", true);
                context.startActivity(intent);
            } catch (Exception e10) {
                e10.fillInStackTrace();
            }
        }
    }
}
