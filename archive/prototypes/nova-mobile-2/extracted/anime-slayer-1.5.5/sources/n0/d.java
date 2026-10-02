package n0;

import android.util.Base64;
import java.util.List;
import p0.i;

/* compiled from: FontRequest.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f11125a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11126b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11127c;

    /* renamed from: d, reason: collision with root package name */
    public final List<List<byte[]>> f11128d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11129e = 0;

    /* renamed from: f, reason: collision with root package name */
    public final String f11130f;

    public d(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f11125a = (String) i.g(str);
        this.f11126b = (String) i.g(str2);
        this.f11127c = (String) i.g(str3);
        this.f11128d = (List) i.g(list);
        this.f11130f = a(str, str2, str3);
    }

    public final String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> b() {
        return this.f11128d;
    }

    public int c() {
        return this.f11129e;
    }

    public String d() {
        return this.f11130f;
    }

    public String e() {
        return this.f11125a;
    }

    public String f() {
        return this.f11126b;
    }

    public String g() {
        return this.f11127c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontRequest {mProviderAuthority: " + this.f11125a + ", mProviderPackage: " + this.f11126b + ", mQuery: " + this.f11127c + ", mCertificates:");
        for (int i10 = 0; i10 < this.f11128d.size(); i10++) {
            sb2.append(" [");
            List<byte[]> list = this.f11128d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString(list.get(i11), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        sb2.append("}");
        sb2.append("mCertificatesArray: " + this.f11129e);
        return sb2.toString();
    }
}
