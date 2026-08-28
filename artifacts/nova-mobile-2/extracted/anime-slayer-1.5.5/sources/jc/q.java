package jc;

/* compiled from: PackageReference.kt */
/* loaded from: classes2.dex */
public final class q implements d {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f9189a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9190b;

    public q(Class<?> cls, String str) {
        l.f(cls, "jClass");
        l.f(str, "moduleName");
        this.f9189a = cls;
        this.f9190b = str;
    }

    @Override // jc.d
    public Class<?> a() {
        return this.f9189a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof q) && l.a(a(), ((q) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }
}
