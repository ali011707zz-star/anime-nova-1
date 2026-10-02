package p0;

/* compiled from: Pools.java */
/* loaded from: classes.dex */
public class g<T> implements f<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f11992a;

    /* renamed from: b, reason: collision with root package name */
    public int f11993b;

    public g(int i10) {
        if (i10 > 0) {
            this.f11992a = new Object[i10];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // p0.f
    public boolean a(T t10) {
        if (!c(t10)) {
            int i10 = this.f11993b;
            Object[] objArr = this.f11992a;
            if (i10 >= objArr.length) {
                return false;
            }
            objArr[i10] = t10;
            this.f11993b = i10 + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }

    @Override // p0.f
    public T b() {
        int i10 = this.f11993b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f11992a;
        T t10 = (T) objArr[i11];
        objArr[i11] = null;
        this.f11993b = i10 - 1;
        return t10;
    }

    public final boolean c(T t10) {
        for (int i10 = 0; i10 < this.f11993b; i10++) {
            if (this.f11992a[i10] == t10) {
                return true;
            }
        }
        return false;
    }
}
