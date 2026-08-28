package j9;

import j9.l;
import java.util.Arrays;

/* compiled from: AutoValue_LogEvent.java */
/* loaded from: classes.dex */
public final class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final long f8999a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f9000b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9001c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f9002d;

    /* renamed from: e, reason: collision with root package name */
    public final String f9003e;

    /* renamed from: f, reason: collision with root package name */
    public final long f9004f;

    /* renamed from: g, reason: collision with root package name */
    public final o f9005g;

    /* compiled from: AutoValue_LogEvent.java */
    /* loaded from: classes.dex */
    public static final class b extends l.a {

        /* renamed from: a, reason: collision with root package name */
        public Long f9006a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f9007b;

        /* renamed from: c, reason: collision with root package name */
        public Long f9008c;

        /* renamed from: d, reason: collision with root package name */
        public byte[] f9009d;

        /* renamed from: e, reason: collision with root package name */
        public String f9010e;

        /* renamed from: f, reason: collision with root package name */
        public Long f9011f;

        /* renamed from: g, reason: collision with root package name */
        public o f9012g;

        @Override // j9.l.a
        public l a() {
            String str = "";
            if (this.f9006a == null) {
                str = " eventTimeMs";
            }
            if (this.f9008c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f9011f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f9006a.longValue(), this.f9007b, this.f9008c.longValue(), this.f9009d, this.f9010e, this.f9011f.longValue(), this.f9012g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // j9.l.a
        public l.a b(Integer num) {
            this.f9007b = num;
            return this;
        }

        @Override // j9.l.a
        public l.a c(long j10) {
            this.f9006a = Long.valueOf(j10);
            return this;
        }

        @Override // j9.l.a
        public l.a d(long j10) {
            this.f9008c = Long.valueOf(j10);
            return this;
        }

        @Override // j9.l.a
        public l.a e(o oVar) {
            this.f9012g = oVar;
            return this;
        }

        @Override // j9.l.a
        public l.a f(byte[] bArr) {
            this.f9009d = bArr;
            return this;
        }

        @Override // j9.l.a
        public l.a g(String str) {
            this.f9010e = str;
            return this;
        }

        @Override // j9.l.a
        public l.a h(long j10) {
            this.f9011f = Long.valueOf(j10);
            return this;
        }
    }

    @Override // j9.l
    public Integer b() {
        return this.f9000b;
    }

    @Override // j9.l
    public long c() {
        return this.f8999a;
    }

    @Override // j9.l
    public long d() {
        return this.f9001c;
    }

    @Override // j9.l
    public o e() {
        return this.f9005g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f8999a == lVar.c() && ((num = this.f9000b) != null ? num.equals(lVar.b()) : lVar.b() == null) && this.f9001c == lVar.d()) {
            if (Arrays.equals(this.f9002d, lVar instanceof f ? ((f) lVar).f9002d : lVar.f()) && ((str = this.f9003e) != null ? str.equals(lVar.g()) : lVar.g() == null) && this.f9004f == lVar.h()) {
                o oVar = this.f9005g;
                if (oVar == null) {
                    if (lVar.e() == null) {
                        return true;
                    }
                } else if (oVar.equals(lVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // j9.l
    public byte[] f() {
        return this.f9002d;
    }

    @Override // j9.l
    public String g() {
        return this.f9003e;
    }

    @Override // j9.l
    public long h() {
        return this.f9004f;
    }

    public int hashCode() {
        long j10 = this.f8999a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f9000b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j11 = this.f9001c;
        int hashCode2 = (((((i10 ^ hashCode) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f9002d)) * 1000003;
        String str = this.f9003e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j12 = this.f9004f;
        int i11 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        o oVar = this.f9005g;
        return i11 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f8999a + ", eventCode=" + this.f9000b + ", eventUptimeMs=" + this.f9001c + ", sourceExtension=" + Arrays.toString(this.f9002d) + ", sourceExtensionJsonProto3=" + this.f9003e + ", timezoneOffsetSeconds=" + this.f9004f + ", networkConnectionInfo=" + this.f9005g + "}";
    }

    public f(long j10, Integer num, long j11, byte[] bArr, String str, long j12, o oVar) {
        this.f8999a = j10;
        this.f9000b = num;
        this.f9001c = j11;
        this.f9002d = bArr;
        this.f9003e = str;
        this.f9004f = j12;
        this.f9005g = oVar;
    }
}
