package r7;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey.java */
/* loaded from: classes.dex */
public final class w implements p7.e {

    /* renamed from: j, reason: collision with root package name */
    public static final l8.g<Class<?>, byte[]> f13068j = new l8.g<>(50);

    /* renamed from: b, reason: collision with root package name */
    public final s7.b f13069b;

    /* renamed from: c, reason: collision with root package name */
    public final p7.e f13070c;

    /* renamed from: d, reason: collision with root package name */
    public final p7.e f13071d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13072e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13073f;

    /* renamed from: g, reason: collision with root package name */
    public final Class<?> f13074g;

    /* renamed from: h, reason: collision with root package name */
    public final p7.g f13075h;

    /* renamed from: i, reason: collision with root package name */
    public final p7.k<?> f13076i;

    public w(s7.b bVar, p7.e eVar, p7.e eVar2, int i10, int i11, p7.k<?> kVar, Class<?> cls, p7.g gVar) {
        this.f13069b = bVar;
        this.f13070c = eVar;
        this.f13071d = eVar2;
        this.f13072e = i10;
        this.f13073f = i11;
        this.f13076i = kVar;
        this.f13074g = cls;
        this.f13075h = gVar;
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f13069b.c(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f13072e).putInt(this.f13073f).array();
        this.f13071d.b(messageDigest);
        this.f13070c.b(messageDigest);
        messageDigest.update(bArr);
        p7.k<?> kVar = this.f13076i;
        if (kVar != null) {
            kVar.b(messageDigest);
        }
        this.f13075h.b(messageDigest);
        messageDigest.update(c());
        this.f13069b.d(bArr);
    }

    public final byte[] c() {
        l8.g<Class<?>, byte[]> gVar = f13068j;
        byte[] g10 = gVar.g(this.f13074g);
        if (g10 != null) {
            return g10;
        }
        byte[] bytes = this.f13074g.getName().getBytes(p7.e.f12083a);
        gVar.k(this.f13074g, bytes);
        return bytes;
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f13073f == wVar.f13073f && this.f13072e == wVar.f13072e && l8.k.d(this.f13076i, wVar.f13076i) && this.f13074g.equals(wVar.f13074g) && this.f13070c.equals(wVar.f13070c) && this.f13071d.equals(wVar.f13071d) && this.f13075h.equals(wVar.f13075h);
    }

    @Override // p7.e
    public int hashCode() {
        int hashCode = (((((this.f13070c.hashCode() * 31) + this.f13071d.hashCode()) * 31) + this.f13072e) * 31) + this.f13073f;
        p7.k<?> kVar = this.f13076i;
        if (kVar != null) {
            hashCode = (hashCode * 31) + kVar.hashCode();
        }
        return (((hashCode * 31) + this.f13074g.hashCode()) * 31) + this.f13075h.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f13070c + ", signature=" + this.f13071d + ", width=" + this.f13072e + ", height=" + this.f13073f + ", decodedResourceClass=" + this.f13074g + ", transformation='" + this.f13076i + "', options=" + this.f13075h + '}';
    }
}
