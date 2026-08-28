package k9;

import java.util.Map;
import k9.h;

/* compiled from: AutoValue_EventInternal.java */
/* loaded from: classes.dex */
public final class a extends h {

    /* renamed from: a, reason: collision with root package name */
    public final String f10061a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f10062b;

    /* renamed from: c, reason: collision with root package name */
    public final g f10063c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10064d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10065e;

    /* renamed from: f, reason: collision with root package name */
    public final Map<String, String> f10066f;

    /* compiled from: AutoValue_EventInternal.java */
    /* loaded from: classes.dex */
    public static final class b extends h.a {

        /* renamed from: a, reason: collision with root package name */
        public String f10067a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f10068b;

        /* renamed from: c, reason: collision with root package name */
        public g f10069c;

        /* renamed from: d, reason: collision with root package name */
        public Long f10070d;

        /* renamed from: e, reason: collision with root package name */
        public Long f10071e;

        /* renamed from: f, reason: collision with root package name */
        public Map<String, String> f10072f;

        @Override // k9.h.a
        public h d() {
            String str = "";
            if (this.f10067a == null) {
                str = " transportName";
            }
            if (this.f10069c == null) {
                str = str + " encodedPayload";
            }
            if (this.f10070d == null) {
                str = str + " eventMillis";
            }
            if (this.f10071e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f10072f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new a(this.f10067a, this.f10068b, this.f10069c, this.f10070d.longValue(), this.f10071e.longValue(), this.f10072f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k9.h.a
        public Map<String, String> e() {
            Map<String, String> map = this.f10072f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // k9.h.a
        public h.a f(Map<String, String> map) {
            if (map != null) {
                this.f10072f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // k9.h.a
        public h.a g(Integer num) {
            this.f10068b = num;
            return this;
        }

        @Override // k9.h.a
        public h.a h(g gVar) {
            if (gVar != null) {
                this.f10069c = gVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // k9.h.a
        public h.a i(long j10) {
            this.f10070d = Long.valueOf(j10);
            return this;
        }

        @Override // k9.h.a
        public h.a j(String str) {
            if (str != null) {
                this.f10067a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // k9.h.a
        public h.a k(long j10) {
            this.f10071e = Long.valueOf(j10);
            return this;
        }
    }

    @Override // k9.h
    public Map<String, String> c() {
        return this.f10066f;
    }

    @Override // k9.h
    public Integer d() {
        return this.f10062b;
    }

    @Override // k9.h
    public g e() {
        return this.f10063c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f10061a.equals(hVar.j()) && ((num = this.f10062b) != null ? num.equals(hVar.d()) : hVar.d() == null) && this.f10063c.equals(hVar.e()) && this.f10064d == hVar.f() && this.f10065e == hVar.k() && this.f10066f.equals(hVar.c());
    }

    @Override // k9.h
    public long f() {
        return this.f10064d;
    }

    public int hashCode() {
        int hashCode = (this.f10061a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f10062b;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f10063c.hashCode()) * 1000003;
        long j10 = this.f10064d;
        int i10 = (hashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f10065e;
        return ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f10066f.hashCode();
    }

    @Override // k9.h
    public String j() {
        return this.f10061a;
    }

    @Override // k9.h
    public long k() {
        return this.f10065e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f10061a + ", code=" + this.f10062b + ", encodedPayload=" + this.f10063c + ", eventMillis=" + this.f10064d + ", uptimeMillis=" + this.f10065e + ", autoMetadata=" + this.f10066f + "}";
    }

    public a(String str, Integer num, g gVar, long j10, long j11, Map<String, String> map) {
        this.f10061a = str;
        this.f10062b = num;
        this.f10063c = gVar;
        this.f10064d = j10;
        this.f10065e = j11;
        this.f10066f = map;
    }
}
