package r9;

/* compiled from: AutoValue_PersistedEvent.java */
/* loaded from: classes.dex */
public final class b extends i {

    /* renamed from: a, reason: collision with root package name */
    public final long f13099a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.m f13100b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.h f13101c;

    public b(long j10, k9.m mVar, k9.h hVar) {
        this.f13099a = j10;
        if (mVar != null) {
            this.f13100b = mVar;
            if (hVar != null) {
                this.f13101c = hVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // r9.i
    public k9.h b() {
        return this.f13101c;
    }

    @Override // r9.i
    public long c() {
        return this.f13099a;
    }

    @Override // r9.i
    public k9.m d() {
        return this.f13100b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f13099a == iVar.c() && this.f13100b.equals(iVar.d()) && this.f13101c.equals(iVar.b());
    }

    public int hashCode() {
        long j10 = this.f13099a;
        return this.f13101c.hashCode() ^ ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f13100b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f13099a + ", transportContext=" + this.f13100b + ", event=" + this.f13101c + "}";
    }
}
