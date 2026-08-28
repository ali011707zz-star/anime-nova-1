package n3;

import android.util.Pair;
import e3.l;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* compiled from: NetworkFetcher.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final g f11244a;

    /* renamed from: b, reason: collision with root package name */
    public final f f11245b;

    public h(g gVar, f fVar) {
        this.f11244a = gVar;
        this.f11245b = fVar;
    }

    public final e3.d a(String str, String str2) {
        Pair<c, InputStream> a10;
        l<e3.d> i10;
        if (str2 == null || (a10 = this.f11244a.a(str)) == null) {
            return null;
        }
        c cVar = (c) a10.first;
        InputStream inputStream = (InputStream) a10.second;
        if (cVar == c.ZIP) {
            i10 = e3.e.s(new ZipInputStream(inputStream), str);
        } else {
            i10 = e3.e.i(inputStream, str);
        }
        if (i10.b() != null) {
            return i10.b();
        }
        return null;
    }

    public final l<e3.d> b(String str, String str2) {
        q3.d.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                d a10 = this.f11245b.a(str);
                if (a10.isSuccessful()) {
                    l<e3.d> d10 = d(str, a10.j(), a10.s0(), str2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Completed fetch from network. Success: ");
                    sb2.append(d10.b() != null);
                    q3.d.a(sb2.toString());
                    try {
                        a10.close();
                    } catch (IOException e10) {
                        q3.d.d("LottieFetchResult close failed ", e10);
                    }
                    return d10;
                }
                l<e3.d> lVar = new l<>(new IllegalArgumentException(a10.y0()));
                try {
                    a10.close();
                } catch (IOException e11) {
                    q3.d.d("LottieFetchResult close failed ", e11);
                }
                return lVar;
            } catch (Exception e12) {
                l<e3.d> lVar2 = new l<>(e12);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e13) {
                        q3.d.d("LottieFetchResult close failed ", e13);
                    }
                }
                return lVar2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    q3.d.d("LottieFetchResult close failed ", e14);
                }
            }
            throw th;
        }
    }

    public l<e3.d> c(String str, String str2) {
        e3.d a10 = a(str, str2);
        if (a10 != null) {
            return new l<>(a10);
        }
        q3.d.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(str, str2);
    }

    public final l<e3.d> d(String str, InputStream inputStream, String str2, String str3) throws IOException {
        c cVar;
        l<e3.d> f10;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (!str2.contains("application/zip") && !str.split("\\?")[0].endsWith(".lottie")) {
            q3.d.a("Received json response.");
            cVar = c.JSON;
            f10 = e(str, inputStream, str3);
        } else {
            q3.d.a("Handling zip response.");
            cVar = c.ZIP;
            f10 = f(str, inputStream, str3);
        }
        if (str3 != null && f10.b() != null) {
            this.f11244a.e(str, cVar);
        }
        return f10;
    }

    public final l<e3.d> e(String str, InputStream inputStream, String str2) throws IOException {
        if (str2 == null) {
            return e3.e.i(inputStream, null);
        }
        return e3.e.i(new FileInputStream(new File(this.f11244a.f(str, inputStream, c.JSON).getAbsolutePath())), str);
    }

    public final l<e3.d> f(String str, InputStream inputStream, String str2) throws IOException {
        if (str2 == null) {
            return e3.e.s(new ZipInputStream(inputStream), null);
        }
        return e3.e.s(new ZipInputStream(new FileInputStream(this.f11244a.f(str, inputStream, c.ZIP))), str);
    }
}
