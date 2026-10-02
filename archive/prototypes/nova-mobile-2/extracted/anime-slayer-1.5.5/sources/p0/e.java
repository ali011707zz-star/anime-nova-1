package p0;

/* compiled from: Pair.java */
/* loaded from: classes.dex */
public class e<F, S> {

    /* renamed from: a, reason: collision with root package name */
    public final F f11990a;

    /* renamed from: b, reason: collision with root package name */
    public final S f11991b;

    public e(F f10, S s10) {
        this.f11990a = f10;
        this.f11991b = s10;
    }

    public static <A, B> e<A, B> a(A a10, B b10) {
        return new e<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return d.a(eVar.f11990a, this.f11990a) && d.a(eVar.f11991b, this.f11991b);
    }

    public int hashCode() {
        F f10 = this.f11990a;
        int hashCode = f10 == null ? 0 : f10.hashCode();
        S s10 = this.f11991b;
        return hashCode ^ (s10 != null ? s10.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f11990a + " " + this.f11991b + "}";
    }
}
