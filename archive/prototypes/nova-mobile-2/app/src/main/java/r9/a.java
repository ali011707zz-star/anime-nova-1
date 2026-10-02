package r9;

import r9.d;

/* compiled from: AutoValue_EventStoreConfig.java */
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: b, reason: collision with root package name */
    public final long f13088b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13089c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13090d;

    /* renamed from: e, reason: collision with root package name */
    public final long f13091e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13092f;

    /* compiled from: AutoValue_EventStoreConfig.java */
    /* loaded from: classes.dex */
    public static final class b extends d.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f13093a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f13094b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f13095c;

        /* renamed from: d, reason: collision with root package name */
        public Long f13096d;

        /* renamed from: e, reason: collision with root package name */
        public Integer f13097e;

        @Override // r9.d.a
        public d a() {
            String str = "";
            if (this.f13093a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f13094b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f13095c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f13096d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f13097e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f13093a.longValue(), this.f13094b.intValue(), this.f13095c.intValue(), this.f13096d.longValue(), this.f13097e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // r9.d.a
        public d.a b(int i10) {
            this.f13095c = Integer.valueOf(i10);
            return this;
        }

        @Override // r9.d.a
        public d.a c(long j10) {
            this.f13096d = Long.valueOf(j10);
            return this;
        }

        @Override // r9.d.a
        public d.a d(int i10) {
            this.f13094b = Integer.valueOf(i10);
            return this;
        }

        @Override // r9.d.a
        public d.a e(int i10) {
            this.f13097e = Integer.valueOf(i10);
            return this;
        }

        @Override // r9.d.a
        public d.a f(long j10) {
            this.f13093a = Long.valueOf(j10);
            return this;
        }
    }

    @Override // r9.d
    public int b() {
        return this.f13090d;
    }

    @Override // r9.d
    public long c() {
        return this.f13091e;
    }

    @Override // r9.d
    public int d() {
        return this.f13089c;
    }

    @Override // r9.d
    public int e() {
        return this.f13092f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f13088b == dVar.f() && this.f13089c == dVar.d() && this.f13090d == dVar.b() && this.f13091e == dVar.c() && this.f13092f == dVar.e();
    }

    @Override // r9.d
    public long f() {
        return this.f13088b;
    }

    public int hashCode() {
        long j10 = this.f13088b;
        int i10 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f13089c) * 1000003) ^ this.f13090d) * 1000003;
        long j11 = this.f13091e;
        return this.f13092f ^ ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f13088b + ", loadBatchSize=" + this.f13089c + ", criticalSectionEnterTimeoutMs=" + this.f13090d + ", eventCleanUpAge=" + this.f13091e + ", maxBlobByteSizePerRow=" + this.f13092f + "}";
    }

    public a(long j10, int i10, int i11, long j11, int i12) {
        this.f13088b = j10;
        this.f13089c = i10;
        this.f13090d = i11;
        this.f13091e = j11;
        this.f13092f = i12;
    }
}
