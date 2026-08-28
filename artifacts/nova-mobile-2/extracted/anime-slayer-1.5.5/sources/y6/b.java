package y6;

import java.util.List;

/* compiled from: ServerViewModel.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final List<w> f16448a;

    /* renamed from: b, reason: collision with root package name */
    public final List<v4.b> f16449b;

    /* renamed from: c, reason: collision with root package name */
    public final p4.k f16450c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16451d;

    public b(List<w> list, List<v4.b> list2, p4.k kVar, String str) {
        jc.l.f(list, "servers");
        jc.l.f(list2, "serversModel");
        jc.l.f(kVar, "model");
        jc.l.f(str, "ol6");
        this.f16448a = list;
        this.f16449b = list2;
        this.f16450c = kVar;
        this.f16451d = str;
    }

    public final p4.k a() {
        return this.f16450c;
    }

    public final String b() {
        return this.f16451d;
    }

    public final List<w> c() {
        return this.f16448a;
    }

    public final List<v4.b> d() {
        return this.f16449b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return jc.l.a(this.f16448a, bVar.f16448a) && jc.l.a(this.f16449b, bVar.f16449b) && jc.l.a(this.f16450c, bVar.f16450c) && jc.l.a(this.f16451d, bVar.f16451d);
    }

    public int hashCode() {
        return (((((this.f16448a.hashCode() * 31) + this.f16449b.hashCode()) * 31) + this.f16450c.hashCode()) * 31) + this.f16451d.hashCode();
    }

    public String toString() {
        return "EpisodeServer(servers=" + this.f16448a + ", serversModel=" + this.f16449b + ", model=" + this.f16450c + ", ol6=" + this.f16451d + ')';
    }
}
