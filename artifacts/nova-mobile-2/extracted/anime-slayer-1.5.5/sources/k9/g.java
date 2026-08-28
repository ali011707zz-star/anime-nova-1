package k9;

import java.util.Arrays;

/* compiled from: EncodedPayload.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final h9.b f10102a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f10103b;

    public g(h9.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr != null) {
            this.f10102a = bVar;
            this.f10103b = bArr;
            return;
        }
        throw new NullPointerException("bytes is null");
    }

    public byte[] a() {
        return this.f10103b;
    }

    public h9.b b() {
        return this.f10102a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f10102a.equals(gVar.f10102a)) {
            return Arrays.equals(this.f10103b, gVar.f10103b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f10102a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f10103b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f10102a + ", bytes=[...]}";
    }
}
