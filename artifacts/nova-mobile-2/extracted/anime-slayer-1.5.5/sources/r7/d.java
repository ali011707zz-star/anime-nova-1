package r7;

import java.security.MessageDigest;

/* compiled from: DataCacheKey.java */
/* loaded from: classes.dex */
public final class d implements p7.e {

    /* renamed from: b, reason: collision with root package name */
    public final p7.e f12901b;

    /* renamed from: c, reason: collision with root package name */
    public final p7.e f12902c;

    public d(p7.e eVar, p7.e eVar2) {
        this.f12901b = eVar;
        this.f12902c = eVar2;
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        this.f12901b.b(messageDigest);
        this.f12902c.b(messageDigest);
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f12901b.equals(dVar.f12901b) && this.f12902c.equals(dVar.f12902c);
    }

    @Override // p7.e
    public int hashCode() {
        return (this.f12901b.hashCode() * 31) + this.f12902c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f12901b + ", signature=" + this.f12902c + '}';
    }
}
