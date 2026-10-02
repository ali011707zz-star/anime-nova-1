package d2;

import android.os.Build;

/* compiled from: Constraints.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: i, reason: collision with root package name */
    public static final c f5544i = new a().a();

    /* renamed from: a, reason: collision with root package name */
    public m f5545a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5546b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5547c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5548d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5549e;

    /* renamed from: f, reason: collision with root package name */
    public long f5550f;

    /* renamed from: g, reason: collision with root package name */
    public long f5551g;

    /* renamed from: h, reason: collision with root package name */
    public d f5552h;

    /* compiled from: Constraints.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f5553a = false;

        /* renamed from: b, reason: collision with root package name */
        public boolean f5554b = false;

        /* renamed from: c, reason: collision with root package name */
        public m f5555c = m.NOT_REQUIRED;

        /* renamed from: d, reason: collision with root package name */
        public boolean f5556d = false;

        /* renamed from: e, reason: collision with root package name */
        public boolean f5557e = false;

        /* renamed from: f, reason: collision with root package name */
        public long f5558f = -1;

        /* renamed from: g, reason: collision with root package name */
        public long f5559g = -1;

        /* renamed from: h, reason: collision with root package name */
        public d f5560h = new d();

        public c a() {
            return new c(this);
        }

        public a b(m mVar) {
            this.f5555c = mVar;
            return this;
        }
    }

    public c() {
        this.f5545a = m.NOT_REQUIRED;
        this.f5550f = -1L;
        this.f5551g = -1L;
        this.f5552h = new d();
    }

    public d a() {
        return this.f5552h;
    }

    public m b() {
        return this.f5545a;
    }

    public long c() {
        return this.f5550f;
    }

    public long d() {
        return this.f5551g;
    }

    public boolean e() {
        return this.f5552h.c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f5546b == cVar.f5546b && this.f5547c == cVar.f5547c && this.f5548d == cVar.f5548d && this.f5549e == cVar.f5549e && this.f5550f == cVar.f5550f && this.f5551g == cVar.f5551g && this.f5545a == cVar.f5545a) {
            return this.f5552h.equals(cVar.f5552h);
        }
        return false;
    }

    public boolean f() {
        return this.f5548d;
    }

    public boolean g() {
        return this.f5546b;
    }

    public boolean h() {
        return this.f5547c;
    }

    public int hashCode() {
        int hashCode = ((((((((this.f5545a.hashCode() * 31) + (this.f5546b ? 1 : 0)) * 31) + (this.f5547c ? 1 : 0)) * 31) + (this.f5548d ? 1 : 0)) * 31) + (this.f5549e ? 1 : 0)) * 31;
        long j10 = this.f5550f;
        int i10 = (hashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f5551g;
        return ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f5552h.hashCode();
    }

    public boolean i() {
        return this.f5549e;
    }

    public void j(d dVar) {
        this.f5552h = dVar;
    }

    public void k(m mVar) {
        this.f5545a = mVar;
    }

    public void l(boolean z10) {
        this.f5548d = z10;
    }

    public void m(boolean z10) {
        this.f5546b = z10;
    }

    public void n(boolean z10) {
        this.f5547c = z10;
    }

    public void o(boolean z10) {
        this.f5549e = z10;
    }

    public void p(long j10) {
        this.f5550f = j10;
    }

    public void q(long j10) {
        this.f5551g = j10;
    }

    public c(a aVar) {
        this.f5545a = m.NOT_REQUIRED;
        this.f5550f = -1L;
        this.f5551g = -1L;
        this.f5552h = new d();
        this.f5546b = aVar.f5553a;
        int i10 = Build.VERSION.SDK_INT;
        this.f5547c = i10 >= 23 && aVar.f5554b;
        this.f5545a = aVar.f5555c;
        this.f5548d = aVar.f5556d;
        this.f5549e = aVar.f5557e;
        if (i10 >= 24) {
            this.f5552h = aVar.f5560h;
            this.f5550f = aVar.f5558f;
            this.f5551g = aVar.f5559g;
        }
    }

    public c(c cVar) {
        this.f5545a = m.NOT_REQUIRED;
        this.f5550f = -1L;
        this.f5551g = -1L;
        this.f5552h = new d();
        this.f5546b = cVar.f5546b;
        this.f5547c = cVar.f5547c;
        this.f5545a = cVar.f5545a;
        this.f5548d = cVar.f5548d;
        this.f5549e = cVar.f5549e;
        this.f5552h = cVar.f5552h;
    }
}
