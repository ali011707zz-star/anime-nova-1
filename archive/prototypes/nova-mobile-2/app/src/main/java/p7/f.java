package p7;

import java.security.MessageDigest;

/* compiled from: Option.java */
/* loaded from: classes.dex */
public final class f<T> {

    /* renamed from: e, reason: collision with root package name */
    public static final b<Object> f12084e = new a();

    /* renamed from: a, reason: collision with root package name */
    public final T f12085a;

    /* renamed from: b, reason: collision with root package name */
    public final b<T> f12086b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12087c;

    /* renamed from: d, reason: collision with root package name */
    public volatile byte[] f12088d;

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    public class a implements b<Object> {
        @Override // p7.f.b
        public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        void a(byte[] bArr, T t10, MessageDigest messageDigest);
    }

    public f(String str, T t10, b<T> bVar) {
        this.f12087c = l8.j.b(str);
        this.f12085a = t10;
        this.f12086b = (b) l8.j.d(bVar);
    }

    public static <T> f<T> a(String str, T t10, b<T> bVar) {
        return new f<>(str, t10, bVar);
    }

    public static <T> b<T> b() {
        return (b<T>) f12084e;
    }

    public static <T> f<T> e(String str) {
        return new f<>(str, null, b());
    }

    public static <T> f<T> f(String str, T t10) {
        return new f<>(str, t10, b());
    }

    public T c() {
        return this.f12085a;
    }

    public final byte[] d() {
        if (this.f12088d == null) {
            this.f12088d = this.f12087c.getBytes(e.f12083a);
        }
        return this.f12088d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f12087c.equals(((f) obj).f12087c);
        }
        return false;
    }

    public void g(T t10, MessageDigest messageDigest) {
        this.f12086b.a(d(), t10, messageDigest);
    }

    public int hashCode() {
        return this.f12087c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f12087c + "'}";
    }
}
