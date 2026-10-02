package jd;

import id.d;

/* compiled from: SimpleTimeFormat.java */
/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public String f9197a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f9198b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f9199c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f9200d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f9201e = "";

    /* renamed from: f, reason: collision with root package name */
    public String f9202f = "";

    /* renamed from: g, reason: collision with root package name */
    public String f9203g = "";

    /* renamed from: h, reason: collision with root package name */
    public String f9204h = "";

    /* renamed from: i, reason: collision with root package name */
    public String f9205i = "";

    /* renamed from: j, reason: collision with root package name */
    public String f9206j = "";

    /* renamed from: k, reason: collision with root package name */
    public String f9207k = "";

    /* renamed from: l, reason: collision with root package name */
    public int f9208l = 50;

    @Override // id.d
    public String a(id.a aVar) {
        return d(aVar, true);
    }

    @Override // id.d
    public String b(id.a aVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        if (aVar.d()) {
            sb2.append(this.f9206j);
            sb2.append(" ");
            sb2.append(str);
            sb2.append(" ");
            sb2.append(this.f9207k);
        } else {
            sb2.append(this.f9204h);
            sb2.append(" ");
            sb2.append(str);
            sb2.append(" ");
            sb2.append(this.f9205i);
        }
        return sb2.toString().replaceAll("\\s+", " ").trim();
    }

    public final String c(String str, String str2, long j10) {
        return g(j10).replaceAll("%s", str).replaceAll("%n", String.valueOf(j10)).replaceAll("%u", str2);
    }

    public final String d(id.a aVar, boolean z10) {
        return c(j(aVar), e(aVar, z10), i(aVar, z10));
    }

    public String e(id.a aVar, boolean z10) {
        return (Math.abs(i(aVar, z10)) == 0 || Math.abs(i(aVar, z10)) > 1) ? h(aVar) : k(aVar);
    }

    public String f() {
        return this.f9203g;
    }

    public String g(long j10) {
        return this.f9203g;
    }

    public final String h(id.a aVar) {
        if (aVar.e() && this.f9200d != null && this.f9199c.length() > 0) {
            return this.f9200d;
        }
        if (aVar.d() && this.f9202f != null && this.f9201e.length() > 0) {
            return this.f9202f;
        }
        return this.f9198b;
    }

    public long i(id.a aVar, boolean z10) {
        return Math.abs(z10 ? aVar.c(this.f9208l) : aVar.a());
    }

    public final String j(id.a aVar) {
        return aVar.a() < 0 ? "-" : "";
    }

    public final String k(id.a aVar) {
        String str;
        String str2;
        if (aVar.e() && (str2 = this.f9199c) != null && str2.length() > 0) {
            return this.f9199c;
        }
        if (aVar.d() && (str = this.f9201e) != null && str.length() > 0) {
            return this.f9201e;
        }
        return this.f9197a;
    }

    public a l(String str) {
        this.f9200d = str;
        return this;
    }

    public a m(String str) {
        this.f9204h = str.trim();
        return this;
    }

    public a n(String str) {
        this.f9199c = str;
        return this;
    }

    public a o(String str) {
        this.f9205i = str.trim();
        return this;
    }

    public a p(String str) {
        this.f9202f = str;
        return this;
    }

    public a q(String str) {
        this.f9206j = str.trim();
        return this;
    }

    public a r(String str) {
        this.f9201e = str;
        return this;
    }

    public a s(String str) {
        this.f9207k = str.trim();
        return this;
    }

    public a t(String str) {
        this.f9203g = str;
        return this;
    }

    public String toString() {
        return "SimpleTimeFormat [pattern=" + this.f9203g + ", futurePrefix=" + this.f9204h + ", futureSuffix=" + this.f9205i + ", pastPrefix=" + this.f9206j + ", pastSuffix=" + this.f9207k + ", roundingTolerance=" + this.f9208l + "]";
    }

    public a u(String str) {
        this.f9198b = str;
        return this;
    }

    public a v(String str) {
        this.f9197a = str;
        return this;
    }
}
