package m2;

import d2.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* compiled from: WorkSpec.java */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: r, reason: collision with root package name */
    public static final String f10825r = d2.l.f("WorkSpec");

    /* renamed from: s, reason: collision with root package name */
    public static final n.a<List<c>, List<d2.u>> f10826s = new a();

    /* renamed from: a, reason: collision with root package name */
    public String f10827a;

    /* renamed from: b, reason: collision with root package name */
    public u.a f10828b;

    /* renamed from: c, reason: collision with root package name */
    public String f10829c;

    /* renamed from: d, reason: collision with root package name */
    public String f10830d;

    /* renamed from: e, reason: collision with root package name */
    public androidx.work.a f10831e;

    /* renamed from: f, reason: collision with root package name */
    public androidx.work.a f10832f;

    /* renamed from: g, reason: collision with root package name */
    public long f10833g;

    /* renamed from: h, reason: collision with root package name */
    public long f10834h;

    /* renamed from: i, reason: collision with root package name */
    public long f10835i;

    /* renamed from: j, reason: collision with root package name */
    public d2.c f10836j;

    /* renamed from: k, reason: collision with root package name */
    public int f10837k;

    /* renamed from: l, reason: collision with root package name */
    public d2.a f10838l;

    /* renamed from: m, reason: collision with root package name */
    public long f10839m;

    /* renamed from: n, reason: collision with root package name */
    public long f10840n;

    /* renamed from: o, reason: collision with root package name */
    public long f10841o;

    /* renamed from: p, reason: collision with root package name */
    public long f10842p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f10843q;

    /* compiled from: WorkSpec.java */
    /* loaded from: classes.dex */
    public class a implements n.a<List<c>, List<d2.u>> {
        @Override // n.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<d2.u> apply(List<c> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<c> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().a());
            }
            return arrayList;
        }
    }

    /* compiled from: WorkSpec.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public String f10844a;

        /* renamed from: b, reason: collision with root package name */
        public u.a f10845b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f10845b != bVar.f10845b) {
                return false;
            }
            return this.f10844a.equals(bVar.f10844a);
        }

        public int hashCode() {
            return (this.f10844a.hashCode() * 31) + this.f10845b.hashCode();
        }
    }

    /* compiled from: WorkSpec.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public String f10846a;

        /* renamed from: b, reason: collision with root package name */
        public u.a f10847b;

        /* renamed from: c, reason: collision with root package name */
        public androidx.work.a f10848c;

        /* renamed from: d, reason: collision with root package name */
        public int f10849d;

        /* renamed from: e, reason: collision with root package name */
        public List<String> f10850e;

        /* renamed from: f, reason: collision with root package name */
        public List<androidx.work.a> f10851f;

        public d2.u a() {
            androidx.work.a aVar;
            List<androidx.work.a> list = this.f10851f;
            if (list != null && !list.isEmpty()) {
                aVar = this.f10851f.get(0);
            } else {
                aVar = androidx.work.a.f3306c;
            }
            return new d2.u(UUID.fromString(this.f10846a), this.f10847b, this.f10848c, this.f10850e, aVar, this.f10849d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f10849d != cVar.f10849d) {
                return false;
            }
            String str = this.f10846a;
            if (str == null ? cVar.f10846a != null : !str.equals(cVar.f10846a)) {
                return false;
            }
            if (this.f10847b != cVar.f10847b) {
                return false;
            }
            androidx.work.a aVar = this.f10848c;
            if (aVar == null ? cVar.f10848c != null : !aVar.equals(cVar.f10848c)) {
                return false;
            }
            List<String> list = this.f10850e;
            if (list == null ? cVar.f10850e != null : !list.equals(cVar.f10850e)) {
                return false;
            }
            List<androidx.work.a> list2 = this.f10851f;
            List<androidx.work.a> list3 = cVar.f10851f;
            return list2 != null ? list2.equals(list3) : list3 == null;
        }

        public int hashCode() {
            String str = this.f10846a;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            u.a aVar = this.f10847b;
            int hashCode2 = (hashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
            androidx.work.a aVar2 = this.f10848c;
            int hashCode3 = (((hashCode2 + (aVar2 != null ? aVar2.hashCode() : 0)) * 31) + this.f10849d) * 31;
            List<String> list = this.f10850e;
            int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
            List<androidx.work.a> list2 = this.f10851f;
            return hashCode4 + (list2 != null ? list2.hashCode() : 0);
        }
    }

    public p(String str, String str2) {
        this.f10828b = u.a.ENQUEUED;
        androidx.work.a aVar = androidx.work.a.f3306c;
        this.f10831e = aVar;
        this.f10832f = aVar;
        this.f10836j = d2.c.f5544i;
        this.f10838l = d2.a.EXPONENTIAL;
        this.f10839m = 30000L;
        this.f10842p = -1L;
        this.f10827a = str;
        this.f10829c = str2;
    }

    public long a() {
        long scalb;
        if (c()) {
            if (this.f10838l == d2.a.LINEAR) {
                scalb = this.f10839m * this.f10837k;
            } else {
                scalb = Math.scalb((float) this.f10839m, this.f10837k - 1);
            }
            return this.f10840n + Math.min(18000000L, scalb);
        }
        if (d()) {
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = this.f10840n;
            long j11 = j10 == 0 ? currentTimeMillis + this.f10833g : j10;
            long j12 = this.f10835i;
            long j13 = this.f10834h;
            if (j12 != j13) {
                return j11 + j13 + (j10 == 0 ? j12 * (-1) : 0L);
            }
            return j11 + (j10 != 0 ? j13 : 0L);
        }
        long j14 = this.f10840n;
        if (j14 == 0) {
            j14 = System.currentTimeMillis();
        }
        return j14 + this.f10833g;
    }

    public boolean b() {
        return !d2.c.f5544i.equals(this.f10836j);
    }

    public boolean c() {
        return this.f10828b == u.a.ENQUEUED && this.f10837k > 0;
    }

    public boolean d() {
        return this.f10834h != 0;
    }

    public void e(long j10) {
        if (j10 > 18000000) {
            d2.l.c().h(f10825r, "Backoff delay duration exceeds maximum value", new Throwable[0]);
            j10 = 18000000;
        }
        if (j10 < 10000) {
            d2.l.c().h(f10825r, "Backoff delay duration less than minimum value", new Throwable[0]);
            j10 = 10000;
        }
        this.f10839m = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f10833g != pVar.f10833g || this.f10834h != pVar.f10834h || this.f10835i != pVar.f10835i || this.f10837k != pVar.f10837k || this.f10839m != pVar.f10839m || this.f10840n != pVar.f10840n || this.f10841o != pVar.f10841o || this.f10842p != pVar.f10842p || this.f10843q != pVar.f10843q || !this.f10827a.equals(pVar.f10827a) || this.f10828b != pVar.f10828b || !this.f10829c.equals(pVar.f10829c)) {
            return false;
        }
        String str = this.f10830d;
        if (str == null ? pVar.f10830d == null : str.equals(pVar.f10830d)) {
            return this.f10831e.equals(pVar.f10831e) && this.f10832f.equals(pVar.f10832f) && this.f10836j.equals(pVar.f10836j) && this.f10838l == pVar.f10838l;
        }
        return false;
    }

    public void f(long j10, long j11) {
        if (j10 < 900000) {
            d2.l.c().h(f10825r, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            j10 = 900000;
        }
        if (j11 < 300000) {
            d2.l.c().h(f10825r, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L), new Throwable[0]);
            j11 = 300000;
        }
        if (j11 > j10) {
            d2.l.c().h(f10825r, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(j10)), new Throwable[0]);
            j11 = j10;
        }
        this.f10834h = j10;
        this.f10835i = j11;
    }

    public int hashCode() {
        int hashCode = ((((this.f10827a.hashCode() * 31) + this.f10828b.hashCode()) * 31) + this.f10829c.hashCode()) * 31;
        String str = this.f10830d;
        int hashCode2 = (((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.f10831e.hashCode()) * 31) + this.f10832f.hashCode()) * 31;
        long j10 = this.f10833g;
        int i10 = (hashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f10834h;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f10835i;
        int hashCode3 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + this.f10836j.hashCode()) * 31) + this.f10837k) * 31) + this.f10838l.hashCode()) * 31;
        long j13 = this.f10839m;
        int i12 = (hashCode3 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.f10840n;
        int i13 = (i12 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        long j15 = this.f10841o;
        int i14 = (i13 + ((int) (j15 ^ (j15 >>> 32)))) * 31;
        long j16 = this.f10842p;
        return ((i14 + ((int) (j16 ^ (j16 >>> 32)))) * 31) + (this.f10843q ? 1 : 0);
    }

    public String toString() {
        return "{WorkSpec: " + this.f10827a + "}";
    }

    public p(p pVar) {
        this.f10828b = u.a.ENQUEUED;
        androidx.work.a aVar = androidx.work.a.f3306c;
        this.f10831e = aVar;
        this.f10832f = aVar;
        this.f10836j = d2.c.f5544i;
        this.f10838l = d2.a.EXPONENTIAL;
        this.f10839m = 30000L;
        this.f10842p = -1L;
        this.f10827a = pVar.f10827a;
        this.f10829c = pVar.f10829c;
        this.f10828b = pVar.f10828b;
        this.f10830d = pVar.f10830d;
        this.f10831e = new androidx.work.a(pVar.f10831e);
        this.f10832f = new androidx.work.a(pVar.f10832f);
        this.f10833g = pVar.f10833g;
        this.f10834h = pVar.f10834h;
        this.f10835i = pVar.f10835i;
        this.f10836j = new d2.c(pVar.f10836j);
        this.f10837k = pVar.f10837k;
        this.f10838l = pVar.f10838l;
        this.f10839m = pVar.f10839m;
        this.f10840n = pVar.f10840n;
        this.f10841o = pVar.f10841o;
        this.f10842p = pVar.f10842p;
        this.f10843q = pVar.f10843q;
    }
}
