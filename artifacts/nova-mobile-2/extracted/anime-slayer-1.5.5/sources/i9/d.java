package i9;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.twitter.sdk.android.core.BuildConfig;
import i9.d;
import j9.j;
import j9.k;
import j9.l;
import j9.m;
import j9.n;
import j9.o;
import j9.p;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import k9.h;
import l9.f;
import l9.g;
import l9.m;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.protocol.HTTP;

/* compiled from: CctTransportBackend.java */
/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: a, reason: collision with root package name */
    public final DataEncoder f7938a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f7939b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7940c;

    /* renamed from: d, reason: collision with root package name */
    public final URL f7941d;

    /* renamed from: e, reason: collision with root package name */
    public final t9.a f7942e;

    /* renamed from: f, reason: collision with root package name */
    public final t9.a f7943f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7944g;

    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final URL f7945a;

        /* renamed from: b, reason: collision with root package name */
        public final j f7946b;

        /* renamed from: c, reason: collision with root package name */
        public final String f7947c;

        public a(URL url, j jVar, String str) {
            this.f7945a = url;
            this.f7946b = jVar;
            this.f7947c = str;
        }

        public a a(URL url) {
            return new a(url, this.f7946b, this.f7947c);
        }
    }

    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f7948a;

        /* renamed from: b, reason: collision with root package name */
        public final URL f7949b;

        /* renamed from: c, reason: collision with root package name */
        public final long f7950c;

        public b(int i10, URL url, long j10) {
            this.f7948a = i10;
            this.f7949b = url;
            this.f7950c = j10;
        }
    }

    public d(Context context, t9.a aVar, t9.a aVar2, int i10) {
        this.f7938a = j.b();
        this.f7940c = context;
        this.f7939b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f7941d = n(i9.a.f7928c);
        this.f7942e = aVar2;
        this.f7943f = aVar;
        this.f7944g = i10;
    }

    public static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.b.UNKNOWN_MOBILE_SUBTYPE.b();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return o.b.COMBINED.b();
        }
        if (o.b.a(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    public static int g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.c.NONE.b();
        }
        return networkInfo.getType();
    }

    public static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            n9.a.c("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    public static TelephonyManager j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static long k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    public static /* synthetic */ a l(a aVar, b bVar) {
        URL url = bVar.f7949b;
        if (url == null) {
            return null;
        }
        n9.a.a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.f7949b);
    }

    public static InputStream m(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    public static URL n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // l9.m
    public h a(h hVar) {
        NetworkInfo activeNetworkInfo = this.f7939b.getActiveNetworkInfo();
        return hVar.l().a("sdk-version", Build.VERSION.SDK_INT).c("model", Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", k()).a("net-type", g(activeNetworkInfo)).a("mobile-subtype", f(activeNetworkInfo)).c("country", Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", j(this.f7940c).getSimOperator()).c("application_build", Integer.toString(h(this.f7940c))).d();
    }

    @Override // l9.m
    public g b(f fVar) {
        j i10 = i(fVar);
        URL url = this.f7941d;
        if (fVar.c() != null) {
            try {
                i9.a c10 = i9.a.c(fVar.c());
                r3 = c10.d() != null ? c10.d() : null;
                if (c10.e() != null) {
                    url = n(c10.e());
                }
            } catch (IllegalArgumentException unused) {
                return g.a();
            }
        }
        try {
            b bVar = (b) o9.b.a(5, new a(url, i10, r3), new o9.a() { // from class: i9.b
                @Override // o9.a
                public final Object apply(Object obj) {
                    d.b e10;
                    e10 = d.this.e((d.a) obj);
                    return e10;
                }
            }, new o9.c() { // from class: i9.c
                @Override // o9.c
                public final Object a(Object obj, Object obj2) {
                    d.a l10;
                    l10 = d.l((d.a) obj, (d.b) obj2);
                    return l10;
                }
            });
            int i11 = bVar.f7948a;
            if (i11 == 200) {
                return g.d(bVar.f7950c);
            }
            if (i11 < 500 && i11 != 404) {
                return g.a();
            }
            return g.e();
        } catch (IOException e10) {
            n9.a.c("CctTransportBackend", "Could not make request to the backend", e10);
            return g.e();
        }
    }

    public final b e(a aVar) throws IOException {
        n9.a.a("CctTransportBackend", "Making request to: %s", aVar.f7945a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f7945a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f7944g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", BuildConfig.VERSION_NAME));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
        String str = aVar.f7947c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f7938a.encode(aVar.f7946b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    n9.a.e("CctTransportBackend", "Status Code: " + responseCode);
                    n9.a.e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                    n9.a.e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField(HttpHeaders.LOCATION)), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream m10 = m(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, n.b(new BufferedReader(new InputStreamReader(m10))).c());
                            if (m10 != null) {
                                m10.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (m10 != null) {
                                try {
                                    m10.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable unused3) {
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th4;
            }
        } catch (EncodingException e10) {
            e = e10;
            n9.a.c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(HttpStatus.SC_BAD_REQUEST, null, 0L);
        } catch (ConnectException e11) {
            e = e11;
            n9.a.c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e12) {
            e = e12;
            n9.a.c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e13) {
            e = e13;
            n9.a.c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(HttpStatus.SC_BAD_REQUEST, null, 0L);
        }
    }

    public final j i(f fVar) {
        l.a j10;
        HashMap hashMap = new HashMap();
        for (h hVar : fVar.b()) {
            String j11 = hVar.j();
            if (!hashMap.containsKey(j11)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                hashMap.put(j11, arrayList);
            } else {
                ((List) hashMap.get(j11)).add(hVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            h hVar2 = (h) ((List) entry.getValue()).get(0);
            m.a b10 = j9.m.a().f(p.DEFAULT).g(this.f7943f.a()).h(this.f7942e.a()).b(k.a().c(k.b.ANDROID_FIREBASE).b(j9.a.a().m(Integer.valueOf(hVar2.g("sdk-version"))).j(hVar2.b("model")).f(hVar2.b("hardware")).d(hVar2.b("device")).l(hVar2.b("product")).k(hVar2.b("os-uild")).h(hVar2.b("manufacturer")).e(hVar2.b("fingerprint")).c(hVar2.b("country")).g(hVar2.b("locale")).i(hVar2.b("mcc_mnc")).b(hVar2.b("application_build")).a()).a());
            try {
                b10.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                b10.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (h hVar3 : (List) entry.getValue()) {
                k9.g e10 = hVar3.e();
                h9.b b11 = e10.b();
                if (b11.equals(h9.b.b("proto"))) {
                    j10 = l.j(e10.a());
                } else if (b11.equals(h9.b.b("json"))) {
                    j10 = l.i(new String(e10.a(), Charset.forName(HTTP.UTF_8)));
                } else {
                    n9.a.f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b11);
                }
                j10.c(hVar3.f()).d(hVar3.k()).h(hVar3.h("tz-offset")).e(o.a().c(o.c.a(hVar3.g("net-type"))).b(o.b.a(hVar3.g("mobile-subtype"))).a());
                if (hVar3.d() != null) {
                    j10.b(hVar3.d());
                }
                arrayList3.add(j10.a());
            }
            b10.c(arrayList3);
            arrayList2.add(b10.a());
        }
        return j.a(arrayList2);
    }

    public d(Context context, t9.a aVar, t9.a aVar2) {
        this(context, aVar, aVar2, 40000);
    }
}
