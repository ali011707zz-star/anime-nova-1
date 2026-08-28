package s3;

/* compiled from: IntPair.java */
/* loaded from: classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f13724a;

    /* renamed from: b, reason: collision with root package name */
    public final T f13725b;

    public c(int i10, T t10) {
        this.f13724a = i10;
        this.f13725b = t10;
    }

    public int a() {
        return this.f13724a;
    }

    public T b() {
        return this.f13725b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f13724a != cVar.f13724a) {
            return false;
        }
        T t10 = this.f13725b;
        T t11 = cVar.f13725b;
        if (t10 != t11) {
            return t10 != null && t10.equals(t11);
        }
        return true;
    }

    public int hashCode() {
        int i10 = (679 + this.f13724a) * 97;
        T t10 = this.f13725b;
        return i10 + (t10 != null ? t10.hashCode() : 0);
    }

    public String toString() {
        return "IntPair[" + this.f13724a + ", " + this.f13725b + ']';
    }
}
