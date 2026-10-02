package p7;

import java.security.MessageDigest;

/* compiled from: Options.java */
/* loaded from: classes.dex */
public final class g implements e {

    /* renamed from: b, reason: collision with root package name */
    public final s.a<f<?>, Object> f12089b = new l8.b();

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void f(f<T> fVar, Object obj, MessageDigest messageDigest) {
        fVar.g(obj, messageDigest);
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        for (int i10 = 0; i10 < this.f12089b.size(); i10++) {
            f(this.f12089b.i(i10), this.f12089b.m(i10), messageDigest);
        }
    }

    public <T> T c(f<T> fVar) {
        return this.f12089b.containsKey(fVar) ? (T) this.f12089b.get(fVar) : fVar.c();
    }

    public void d(g gVar) {
        this.f12089b.j(gVar.f12089b);
    }

    public <T> g e(f<T> fVar, T t10) {
        this.f12089b.put(fVar, t10);
        return this;
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f12089b.equals(((g) obj).f12089b);
        }
        return false;
    }

    @Override // p7.e
    public int hashCode() {
        return this.f12089b.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f12089b + '}';
    }
}
