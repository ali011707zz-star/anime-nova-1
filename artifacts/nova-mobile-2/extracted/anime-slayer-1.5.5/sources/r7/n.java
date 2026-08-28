package r7;

import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey.java */
/* loaded from: classes.dex */
public class n implements p7.e {

    /* renamed from: b, reason: collision with root package name */
    public final Object f13031b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13032c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13033d;

    /* renamed from: e, reason: collision with root package name */
    public final Class<?> f13034e;

    /* renamed from: f, reason: collision with root package name */
    public final Class<?> f13035f;

    /* renamed from: g, reason: collision with root package name */
    public final p7.e f13036g;

    /* renamed from: h, reason: collision with root package name */
    public final Map<Class<?>, p7.k<?>> f13037h;

    /* renamed from: i, reason: collision with root package name */
    public final p7.g f13038i;

    /* renamed from: j, reason: collision with root package name */
    public int f13039j;

    public n(Object obj, p7.e eVar, int i10, int i11, Map<Class<?>, p7.k<?>> map, Class<?> cls, Class<?> cls2, p7.g gVar) {
        this.f13031b = l8.j.d(obj);
        this.f13036g = (p7.e) l8.j.e(eVar, "Signature must not be null");
        this.f13032c = i10;
        this.f13033d = i11;
        this.f13037h = (Map) l8.j.d(map);
        this.f13034e = (Class) l8.j.e(cls, "Resource class must not be null");
        this.f13035f = (Class) l8.j.e(cls2, "Transcode class must not be null");
        this.f13038i = (p7.g) l8.j.d(gVar);
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f13031b.equals(nVar.f13031b) && this.f13036g.equals(nVar.f13036g) && this.f13033d == nVar.f13033d && this.f13032c == nVar.f13032c && this.f13037h.equals(nVar.f13037h) && this.f13034e.equals(nVar.f13034e) && this.f13035f.equals(nVar.f13035f) && this.f13038i.equals(nVar.f13038i);
    }

    @Override // p7.e
    public int hashCode() {
        if (this.f13039j == 0) {
            int hashCode = this.f13031b.hashCode();
            this.f13039j = hashCode;
            int hashCode2 = (hashCode * 31) + this.f13036g.hashCode();
            this.f13039j = hashCode2;
            int i10 = (hashCode2 * 31) + this.f13032c;
            this.f13039j = i10;
            int i11 = (i10 * 31) + this.f13033d;
            this.f13039j = i11;
            int hashCode3 = (i11 * 31) + this.f13037h.hashCode();
            this.f13039j = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f13034e.hashCode();
            this.f13039j = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f13035f.hashCode();
            this.f13039j = hashCode5;
            this.f13039j = (hashCode5 * 31) + this.f13038i.hashCode();
        }
        return this.f13039j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f13031b + ", width=" + this.f13032c + ", height=" + this.f13033d + ", resourceClass=" + this.f13034e + ", transcodeClass=" + this.f13035f + ", signature=" + this.f13036g + ", hashCode=" + this.f13039j + ", transformations=" + this.f13037h + ", options=" + this.f13038i + '}';
    }
}
