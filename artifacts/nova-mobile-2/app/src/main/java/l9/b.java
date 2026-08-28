package l9;

import l9.g;

/* compiled from: AutoValue_BackendResponse.java */
/* loaded from: classes.dex */
public final class b extends g {

    /* renamed from: a, reason: collision with root package name */
    public final g.a f10539a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10540b;

    public b(g.a aVar, long j10) {
        if (aVar != null) {
            this.f10539a = aVar;
            this.f10540b = j10;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // l9.g
    public long b() {
        return this.f10540b;
    }

    @Override // l9.g
    public g.a c() {
        return this.f10539a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f10539a.equals(gVar.c()) && this.f10540b == gVar.b();
    }

    public int hashCode() {
        int hashCode = (this.f10539a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f10540b;
        return hashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f10539a + ", nextRequestWaitMillis=" + this.f10540b + "}";
    }
}
