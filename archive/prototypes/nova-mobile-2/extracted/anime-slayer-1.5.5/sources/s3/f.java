package s3;

import java.util.NoSuchElementException;

/* compiled from: Optional.java */
/* loaded from: classes.dex */
public class f<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final f<?> f13730b = new f<>();

    /* renamed from: a, reason: collision with root package name */
    public final T f13731a;

    public f() {
        this.f13731a = null;
    }

    public static <T> f<T> a() {
        return (f<T>) f13730b;
    }

    public static <T> f<T> d(T t10) {
        return new f<>(t10);
    }

    public T b() {
        return e();
    }

    public boolean c() {
        return this.f13731a != null;
    }

    public T e() {
        T t10 = this.f13731a;
        if (t10 != null) {
            return t10;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return e.a(this.f13731a, ((f) obj).f13731a);
        }
        return false;
    }

    public int hashCode() {
        return e.b(this.f13731a);
    }

    public String toString() {
        T t10 = this.f13731a;
        return t10 != null ? String.format("Optional[%s]", t10) : "Optional.empty";
    }

    public f(T t10) {
        this.f13731a = (T) e.c(t10);
    }
}
