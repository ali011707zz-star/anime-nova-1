package wb;

/* compiled from: IndexedValue.kt */
/* loaded from: classes2.dex */
public final class y<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f15467a;

    /* renamed from: b, reason: collision with root package name */
    public final T f15468b;

    public y(int i10, T t10) {
        this.f15467a = i10;
        this.f15468b = t10;
    }

    public final int a() {
        return this.f15467a;
    }

    public final T b() {
        return this.f15468b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f15467a == yVar.f15467a && jc.l.a(this.f15468b, yVar.f15468b);
    }

    public int hashCode() {
        int i10 = this.f15467a * 31;
        T t10 = this.f15468b;
        return i10 + (t10 == null ? 0 : t10.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.f15467a + ", value=" + this.f15468b + ')';
    }
}
