package j9;

import j9.m;
import java.util.List;

/* compiled from: AutoValue_LogRequest.java */
/* loaded from: classes.dex */
public final class g extends m {

    /* renamed from: a, reason: collision with root package name */
    public final long f9013a;

    /* renamed from: b, reason: collision with root package name */
    public final long f9014b;

    /* renamed from: c, reason: collision with root package name */
    public final k f9015c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f9016d;

    /* renamed from: e, reason: collision with root package name */
    public final String f9017e;

    /* renamed from: f, reason: collision with root package name */
    public final List<l> f9018f;

    /* renamed from: g, reason: collision with root package name */
    public final p f9019g;

    /* compiled from: AutoValue_LogRequest.java */
    /* loaded from: classes.dex */
    public static final class b extends m.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f9020a;

        /* renamed from: b, reason: collision with root package name */
        public Long f9021b;

        /* renamed from: c, reason: collision with root package name */
        public k f9022c;

        /* renamed from: d, reason: collision with root package name */
        public Integer f9023d;

        /* renamed from: e, reason: collision with root package name */
        public String f9024e;

        /* renamed from: f, reason: collision with root package name */
        public List<l> f9025f;

        /* renamed from: g, reason: collision with root package name */
        public p f9026g;

        @Override // j9.m.a
        public m a() {
            String str = "";
            if (this.f9020a == null) {
                str = " requestTimeMs";
            }
            if (this.f9021b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f9020a.longValue(), this.f9021b.longValue(), this.f9022c, this.f9023d, this.f9024e, this.f9025f, this.f9026g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // j9.m.a
        public m.a b(k kVar) {
            this.f9022c = kVar;
            return this;
        }

        @Override // j9.m.a
        public m.a c(List<l> list) {
            this.f9025f = list;
            return this;
        }

        @Override // j9.m.a
        public m.a d(Integer num) {
            this.f9023d = num;
            return this;
        }

        @Override // j9.m.a
        public m.a e(String str) {
            this.f9024e = str;
            return this;
        }

        @Override // j9.m.a
        public m.a f(p pVar) {
            this.f9026g = pVar;
            return this;
        }

        @Override // j9.m.a
        public m.a g(long j10) {
            this.f9020a = Long.valueOf(j10);
            return this;
        }

        @Override // j9.m.a
        public m.a h(long j10) {
            this.f9021b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // j9.m
    public k b() {
        return this.f9015c;
    }

    @Override // j9.m
    public List<l> c() {
        return this.f9018f;
    }

    @Override // j9.m
    public Integer d() {
        return this.f9016d;
    }

    @Override // j9.m
    public String e() {
        return this.f9017e;
    }

    public boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List<l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f9013a == mVar.g() && this.f9014b == mVar.h() && ((kVar = this.f9015c) != null ? kVar.equals(mVar.b()) : mVar.b() == null) && ((num = this.f9016d) != null ? num.equals(mVar.d()) : mVar.d() == null) && ((str = this.f9017e) != null ? str.equals(mVar.e()) : mVar.e() == null) && ((list = this.f9018f) != null ? list.equals(mVar.c()) : mVar.c() == null)) {
            p pVar = this.f9019g;
            if (pVar == null) {
                if (mVar.f() == null) {
                    return true;
                }
            } else if (pVar.equals(mVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // j9.m
    public p f() {
        return this.f9019g;
    }

    @Override // j9.m
    public long g() {
        return this.f9013a;
    }

    @Override // j9.m
    public long h() {
        return this.f9014b;
    }

    public int hashCode() {
        long j10 = this.f9013a;
        long j11 = this.f9014b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        k kVar = this.f9015c;
        int hashCode = (i10 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.f9016d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f9017e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<l> list = this.f9018f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.f9019g;
        return hashCode4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f9013a + ", requestUptimeMs=" + this.f9014b + ", clientInfo=" + this.f9015c + ", logSource=" + this.f9016d + ", logSourceName=" + this.f9017e + ", logEvents=" + this.f9018f + ", qosTier=" + this.f9019g + "}";
    }

    public g(long j10, long j11, k kVar, Integer num, String str, List<l> list, p pVar) {
        this.f9013a = j10;
        this.f9014b = j11;
        this.f9015c = kVar;
        this.f9016d = num;
        this.f9017e = str;
        this.f9018f = list;
        this.f9019g = pVar;
    }
}
