package j9;

import j9.o;

/* compiled from: AutoValue_NetworkConnectionInfo.java */
/* loaded from: classes.dex */
public final class i extends o {

    /* renamed from: a, reason: collision with root package name */
    public final o.c f9028a;

    /* renamed from: b, reason: collision with root package name */
    public final o.b f9029b;

    /* compiled from: AutoValue_NetworkConnectionInfo.java */
    /* loaded from: classes.dex */
    public static final class b extends o.a {

        /* renamed from: a, reason: collision with root package name */
        public o.c f9030a;

        /* renamed from: b, reason: collision with root package name */
        public o.b f9031b;

        @Override // j9.o.a
        public o a() {
            return new i(this.f9030a, this.f9031b);
        }

        @Override // j9.o.a
        public o.a b(o.b bVar) {
            this.f9031b = bVar;
            return this;
        }

        @Override // j9.o.a
        public o.a c(o.c cVar) {
            this.f9030a = cVar;
            return this;
        }
    }

    @Override // j9.o
    public o.b b() {
        return this.f9029b;
    }

    @Override // j9.o
    public o.c c() {
        return this.f9028a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.f9028a;
        if (cVar != null ? cVar.equals(oVar.c()) : oVar.c() == null) {
            o.b bVar = this.f9029b;
            if (bVar == null) {
                if (oVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(oVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        o.c cVar = this.f9028a;
        int hashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        o.b bVar = this.f9029b;
        return hashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f9028a + ", mobileSubtype=" + this.f9029b + "}";
    }

    public i(o.c cVar, o.b bVar) {
        this.f9028a = cVar;
        this.f9029b = bVar;
    }
}
