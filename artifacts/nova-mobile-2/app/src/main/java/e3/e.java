package e3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import o3.w;

/* compiled from: LottieCompositionFactory.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<String, m<e3.d>> f6033a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6034b = {80, 75, 3, 4};

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class a implements h<e3.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f6035a;

        public a(String str) {
            this.f6035a = str;
        }

        @Override // e3.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(e3.d dVar) {
            e.f6033a.remove(this.f6035a);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class b implements h<Throwable> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f6036a;

        public b(String str) {
            this.f6036a = str;
        }

        @Override // e3.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Throwable th) {
            e.f6033a.remove(this.f6036a);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class c implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f6037a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f6038b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f6039c;

        public c(Context context, String str, String str2) {
            this.f6037a = context;
            this.f6038b = str;
            this.f6039c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            l<e3.d> c10 = e3.c.d(this.f6037a).c(this.f6038b, this.f6039c);
            if (this.f6039c != null && c10.b() != null) {
                j3.g.b().c(this.f6039c, c10.b());
            }
            return c10;
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class d implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f6040a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f6041b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f6042c;

        public d(Context context, String str, String str2) {
            this.f6040a = context;
            this.f6041b = str;
            this.f6042c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            return e.g(this.f6040a, this.f6041b, this.f6042c);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* renamed from: e3.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0113e implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ WeakReference f6043a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f6044b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f6045c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f6046d;

        public CallableC0113e(WeakReference weakReference, Context context, int i10, String str) {
            this.f6043a = weakReference;
            this.f6044b = context;
            this.f6045c = i10;
            this.f6046d = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            Context context = (Context) this.f6043a.get();
            if (context == null) {
                context = this.f6044b;
            }
            return e.p(context, this.f6045c, this.f6046d);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class f implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ InputStream f6047a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f6048b;

        public f(InputStream inputStream, String str) {
            this.f6047a = inputStream;
            this.f6048b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            return e.i(this.f6047a, this.f6048b);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class g implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ e3.d f6049a;

        public g(e3.d dVar) {
            this.f6049a = dVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            return new l<>(this.f6049a);
        }
    }

    public static m<e3.d> b(String str, Callable<l<e3.d>> callable) {
        e3.d a10 = str == null ? null : j3.g.b().a(str);
        if (a10 != null) {
            return new m<>(new g(a10));
        }
        if (str != null) {
            Map<String, m<e3.d>> map = f6033a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        m<e3.d> mVar = new m<>(callable);
        if (str != null) {
            mVar.f(new a(str));
            mVar.e(new b(str));
            f6033a.put(str, mVar);
        }
        return mVar;
    }

    public static e3.g c(e3.d dVar, String str) {
        for (e3.g gVar : dVar.j().values()) {
            if (gVar.b().equals(str)) {
                return gVar;
            }
        }
        return null;
    }

    public static m<e3.d> d(Context context, String str) {
        return e(context, str, "asset_" + str);
    }

    public static m<e3.d> e(Context context, String str, String str2) {
        return b(str2, new d(context.getApplicationContext(), str, str2));
    }

    public static l<e3.d> f(Context context, String str) {
        return g(context, str, "asset_" + str);
    }

    public static l<e3.d> g(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return i(context.getAssets().open(str), str2);
            }
            return s(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new l<>((Throwable) e10);
        }
    }

    public static m<e3.d> h(InputStream inputStream, String str) {
        return b(str, new f(inputStream, str));
    }

    public static l<e3.d> i(InputStream inputStream, String str) {
        return j(inputStream, str, true);
    }

    public static l<e3.d> j(InputStream inputStream, String str, boolean z10) {
        try {
            return k(p3.c.U(cd.p.d(cd.p.l(inputStream))), str);
        } finally {
            if (z10) {
                q3.h.c(inputStream);
            }
        }
    }

    public static l<e3.d> k(p3.c cVar, String str) {
        return l(cVar, str, true);
    }

    public static l<e3.d> l(p3.c cVar, String str, boolean z10) {
        try {
            try {
                e3.d a10 = w.a(cVar);
                if (str != null) {
                    j3.g.b().c(str, a10);
                }
                l<e3.d> lVar = new l<>(a10);
                if (z10) {
                    q3.h.c(cVar);
                }
                return lVar;
            } catch (Exception e10) {
                l<e3.d> lVar2 = new l<>(e10);
                if (z10) {
                    q3.h.c(cVar);
                }
                return lVar2;
            }
        } catch (Throwable th) {
            if (z10) {
                q3.h.c(cVar);
            }
            throw th;
        }
    }

    public static m<e3.d> m(Context context, int i10) {
        return n(context, i10, w(context, i10));
    }

    public static m<e3.d> n(Context context, int i10, String str) {
        return b(str, new CallableC0113e(new WeakReference(context), context.getApplicationContext(), i10, str));
    }

    public static l<e3.d> o(Context context, int i10) {
        return p(context, i10, w(context, i10));
    }

    public static l<e3.d> p(Context context, int i10, String str) {
        try {
            cd.h d10 = cd.p.d(cd.p.l(context.getResources().openRawResource(i10)));
            if (v(d10).booleanValue()) {
                return s(new ZipInputStream(d10.F0()), str);
            }
            return i(d10.F0(), str);
        } catch (Resources.NotFoundException e10) {
            return new l<>((Throwable) e10);
        }
    }

    public static m<e3.d> q(Context context, String str) {
        return r(context, str, "url_" + str);
    }

    public static m<e3.d> r(Context context, String str, String str2) {
        return b(str2, new c(context, str, str2));
    }

    public static l<e3.d> s(ZipInputStream zipInputStream, String str) {
        try {
            return t(zipInputStream, str);
        } finally {
            q3.h.c(zipInputStream);
        }
    }

    public static l<e3.d> t(ZipInputStream zipInputStream, String str) {
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            e3.d dVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    dVar = l(p3.c.U(cd.p.d(cd.p.l(zipInputStream))), null, false).b();
                } else {
                    if (!name.contains(".png") && !name.contains(".webp") && !name.contains(".jpg") && !name.contains(".jpeg")) {
                        zipInputStream.closeEntry();
                    }
                    hashMap.put(name.split("/")[r1.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (dVar == null) {
                return new l<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                e3.g c10 = c(dVar, (String) entry.getKey());
                if (c10 != null) {
                    c10.f(q3.h.l((Bitmap) entry.getValue(), c10.e(), c10.c()));
                }
            }
            for (Map.Entry<String, e3.g> entry2 : dVar.j().entrySet()) {
                if (entry2.getValue().a() == null) {
                    return new l<>((Throwable) new IllegalStateException("There is no image for " + entry2.getValue().b()));
                }
            }
            if (str != null) {
                j3.g.b().c(str, dVar);
            }
            return new l<>(dVar);
        } catch (IOException e10) {
            return new l<>((Throwable) e10);
        }
    }

    public static boolean u(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static Boolean v(cd.h hVar) {
        try {
            cd.h m02 = hVar.m0();
            for (byte b10 : f6034b) {
                if (m02.readByte() != b10) {
                    return Boolean.FALSE;
                }
            }
            m02.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            q3.d.b("Failed to check zip file header", e10);
            return Boolean.FALSE;
        }
    }

    public static String w(Context context, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rawRes");
        sb2.append(u(context) ? "_night_" : "_day_");
        sb2.append(i10);
        return sb2.toString();
    }
}
