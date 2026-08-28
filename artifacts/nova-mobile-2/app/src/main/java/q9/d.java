package q9;

import java.util.Set;
import q9.g;

/* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
/* loaded from: classes.dex */
public final class d extends g.b {

    /* renamed from: a, reason: collision with root package name */
    public final long f12556a;

    /* renamed from: b, reason: collision with root package name */
    public final long f12557b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<g.c> f12558c;

    /* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
    /* loaded from: classes.dex */
    public static final class b extends g.b.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f12559a;

        /* renamed from: b, reason: collision with root package name */
        public Long f12560b;

        /* renamed from: c, reason: collision with root package name */
        public Set<g.c> f12561c;

        @Override // q9.g.b.a
        public g.b a() {
            String str = "";
            if (this.f12559a == null) {
                str = " delta";
            }
            if (this.f12560b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f12561c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new d(this.f12559a.longValue(), this.f12560b.longValue(), this.f12561c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // q9.g.b.a
        public g.b.a b(long j10) {
            this.f12559a = Long.valueOf(j10);
            return this;
        }

        @Override // q9.g.b.a
        public g.b.a c(Set<g.c> set) {
            if (set != null) {
                this.f12561c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // q9.g.b.a
        public g.b.a d(long j10) {
            this.f12560b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // q9.g.b
    public long b() {
        return this.f12556a;
    }

    @Override // q9.g.b
    public Set<g.c> c() {
        return this.f12558c;
    }

    @Override // q9.g.b
    public long d() {
        return this.f12557b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        return this.f12556a == bVar.b() && this.f12557b == bVar.d() && this.f12558c.equals(bVar.c());
    }

    public int hashCode() {
        long j10 = this.f12556a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f12557b;
        return this.f12558c.hashCode() ^ ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f12556a + ", maxAllowedDelay=" + this.f12557b + ", flags=" + this.f12558c + "}";
    }

    public d(long j10, long j11, Set<g.c> set) {
        this.f12556a = j10;
        this.f12557b = j11;
        this.f12558c = set;
    }
}
