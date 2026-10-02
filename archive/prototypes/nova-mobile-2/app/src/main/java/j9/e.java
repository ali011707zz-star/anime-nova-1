package j9;

import j9.k;

/* compiled from: AutoValue_ClientInfo.java */
/* loaded from: classes.dex */
public final class e extends k {

    /* renamed from: a, reason: collision with root package name */
    public final k.b f8995a;

    /* renamed from: b, reason: collision with root package name */
    public final j9.a f8996b;

    /* compiled from: AutoValue_ClientInfo.java */
    /* loaded from: classes.dex */
    public static final class b extends k.a {

        /* renamed from: a, reason: collision with root package name */
        public k.b f8997a;

        /* renamed from: b, reason: collision with root package name */
        public j9.a f8998b;

        @Override // j9.k.a
        public k a() {
            return new e(this.f8997a, this.f8998b);
        }

        @Override // j9.k.a
        public k.a b(j9.a aVar) {
            this.f8998b = aVar;
            return this;
        }

        @Override // j9.k.a
        public k.a c(k.b bVar) {
            this.f8997a = bVar;
            return this;
        }
    }

    @Override // j9.k
    public j9.a b() {
        return this.f8996b;
    }

    @Override // j9.k
    public k.b c() {
        return this.f8995a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.f8995a;
        if (bVar != null ? bVar.equals(kVar.c()) : kVar.c() == null) {
            j9.a aVar = this.f8996b;
            if (aVar == null) {
                if (kVar.b() == null) {
                    return true;
                }
            } else if (aVar.equals(kVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        k.b bVar = this.f8995a;
        int hashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        j9.a aVar = this.f8996b;
        return hashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f8995a + ", androidClientInfo=" + this.f8996b + "}";
    }

    public e(k.b bVar, j9.a aVar) {
        this.f8995a = bVar;
        this.f8996b = aVar;
    }
}
