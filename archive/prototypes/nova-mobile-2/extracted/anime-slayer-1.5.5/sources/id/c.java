package id;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import ld.f;
import ld.g;
import ld.h;
import ld.i;
import ld.j;
import ld.k;
import ld.l;
import ld.m;

/* compiled from: PrettyTime.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public volatile Date f7981a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Locale f7982b = Locale.getDefault();

    /* renamed from: c, reason: collision with root package name */
    public volatile Map<e, d> f7983c = new LinkedHashMap();

    /* renamed from: d, reason: collision with root package name */
    public volatile List<e> f7984d;

    /* renamed from: e, reason: collision with root package name */
    public String f7985e;

    public c() {
        i();
    }

    public final void a(kd.c cVar) {
        k(cVar, new kd.b(cVar, this.f7985e));
    }

    public a b(Date date) {
        if (date == null) {
            date = j();
        }
        Date date2 = this.f7981a;
        if (date2 == null) {
            date2 = j();
        }
        return c(date.getTime() - date2.getTime());
    }

    public final a c(long j10) {
        long abs = Math.abs(j10);
        List<e> h10 = h();
        kd.a aVar = new kd.a();
        int i10 = 0;
        while (i10 < h10.size()) {
            e eVar = h10.get(i10);
            long abs2 = Math.abs(eVar.b());
            long abs3 = Math.abs(eVar.a());
            boolean z10 = i10 == h10.size() - 1;
            if (0 == abs3 && !z10) {
                abs3 = h10.get(i10 + 1).b() / eVar.b();
            }
            if (abs3 * abs2 > abs || z10) {
                aVar.i(eVar);
                if (abs2 > abs) {
                    aVar.h(g(j10));
                    aVar.g(0L);
                } else {
                    aVar.h(j10 / abs2);
                    aVar.g(j10 - (aVar.a() * abs2));
                }
                return aVar;
            }
            i10++;
        }
        return aVar;
    }

    public String d(a aVar) {
        if (aVar == null) {
            return e(j());
        }
        d f10 = f(aVar.b());
        return f10.b(aVar, f10.a(aVar));
    }

    public String e(Date date) {
        if (date == null) {
            date = j();
        }
        return d(b(date));
    }

    public d f(e eVar) {
        if (eVar == null || this.f7983c.get(eVar) == null) {
            return null;
        }
        return this.f7983c.get(eVar);
    }

    public final long g(long j10) {
        return 0 > j10 ? -1L : 1L;
    }

    public List<e> h() {
        if (this.f7984d == null) {
            ArrayList arrayList = new ArrayList(this.f7983c.keySet());
            Collections.sort(arrayList, new k());
            this.f7984d = Collections.unmodifiableList(arrayList);
        }
        return this.f7984d;
    }

    public final void i() {
        a(new ld.e());
        a(new g());
        a(new j());
        a(new h());
        a(new ld.d());
        a(new ld.b());
        a(new l());
        a(new i());
        a(new m());
        a(new ld.c());
        a(new ld.a());
        a(new f());
    }

    public final Date j() {
        return new Date();
    }

    public c k(e eVar, d dVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("Unit to register must not be null.");
        }
        if (dVar != null) {
            this.f7984d = null;
            this.f7983c.put(eVar, dVar);
            if (eVar instanceof b) {
                ((b) eVar).setLocale(this.f7982b);
            }
            if (dVar instanceof b) {
                ((b) dVar).setLocale(this.f7982b);
            }
            return this;
        }
        throw new IllegalArgumentException("Format to register must not be null.");
    }

    public c l(Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        this.f7982b = locale;
        for (e eVar : this.f7983c.keySet()) {
            if (eVar instanceof b) {
                ((b) eVar).setLocale(locale);
            }
        }
        for (d dVar : this.f7983c.values()) {
            if (dVar instanceof b) {
                ((b) dVar).setLocale(locale);
            }
        }
        return this;
    }

    public String toString() {
        return "PrettyTime [reference=" + this.f7981a + ", locale=" + this.f7982b + "]";
    }

    public c(Locale locale) {
        l(locale);
        i();
    }
}
