package v7;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl.java */
/* loaded from: classes.dex */
public class g implements p7.e {

    /* renamed from: b, reason: collision with root package name */
    public final h f14888b;

    /* renamed from: c, reason: collision with root package name */
    public final URL f14889c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14890d;

    /* renamed from: e, reason: collision with root package name */
    public String f14891e;

    /* renamed from: f, reason: collision with root package name */
    public URL f14892f;

    /* renamed from: g, reason: collision with root package name */
    public volatile byte[] f14893g;

    /* renamed from: h, reason: collision with root package name */
    public int f14894h;

    public g(URL url) {
        this(url, h.f14896b);
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        messageDigest.update(d());
    }

    public String c() {
        String str = this.f14890d;
        return str != null ? str : ((URL) l8.j.d(this.f14889c)).toString();
    }

    public final byte[] d() {
        if (this.f14893g == null) {
            this.f14893g = c().getBytes(p7.e.f12083a);
        }
        return this.f14893g;
    }

    public Map<String, String> e() {
        return this.f14888b.a();
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return c().equals(gVar.c()) && this.f14888b.equals(gVar.f14888b);
    }

    public final String f() {
        if (TextUtils.isEmpty(this.f14891e)) {
            String str = this.f14890d;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) l8.j.d(this.f14889c)).toString();
            }
            this.f14891e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f14891e;
    }

    public final URL g() throws MalformedURLException {
        if (this.f14892f == null) {
            this.f14892f = new URL(f());
        }
        return this.f14892f;
    }

    public URL h() throws MalformedURLException {
        return g();
    }

    @Override // p7.e
    public int hashCode() {
        if (this.f14894h == 0) {
            int hashCode = c().hashCode();
            this.f14894h = hashCode;
            this.f14894h = (hashCode * 31) + this.f14888b.hashCode();
        }
        return this.f14894h;
    }

    public String toString() {
        return c();
    }

    public g(String str) {
        this(str, h.f14896b);
    }

    public g(URL url, h hVar) {
        this.f14889c = (URL) l8.j.d(url);
        this.f14890d = null;
        this.f14888b = (h) l8.j.d(hVar);
    }

    public g(String str, h hVar) {
        this.f14889c = null;
        this.f14890d = l8.j.b(str);
        this.f14888b = (h) l8.j.d(hVar);
    }
}
