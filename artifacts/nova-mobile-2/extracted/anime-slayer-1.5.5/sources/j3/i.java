package j3;

/* compiled from: MutablePair.java */
/* loaded from: classes.dex */
public class i<T> {

    /* renamed from: a, reason: collision with root package name */
    public T f8113a;

    /* renamed from: b, reason: collision with root package name */
    public T f8114b;

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(T t10, T t11) {
        this.f8113a = t10;
        this.f8114b = t11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p0.e)) {
            return false;
        }
        p0.e eVar = (p0.e) obj;
        return a(eVar.f11990a, this.f8113a) && a(eVar.f11991b, this.f8114b);
    }

    public int hashCode() {
        T t10 = this.f8113a;
        int hashCode = t10 == null ? 0 : t10.hashCode();
        T t11 = this.f8114b;
        return hashCode ^ (t11 != null ? t11.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f8113a) + " " + String.valueOf(this.f8114b) + "}";
    }
}
