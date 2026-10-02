package wc;

/* compiled from: ArrayQueue.kt */
/* loaded from: classes2.dex */
public class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f15469a = new Object[16];

    /* renamed from: b, reason: collision with root package name */
    public int f15470b;

    /* renamed from: c, reason: collision with root package name */
    public int f15471c;

    public final void a(T t10) {
        Object[] objArr = this.f15469a;
        int i10 = this.f15471c;
        objArr[i10] = t10;
        int length = (objArr.length - 1) & (i10 + 1);
        this.f15471c = length;
        if (length == this.f15470b) {
            b();
        }
    }

    public final void b() {
        Object[] objArr = this.f15469a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        wb.h.f(objArr, objArr2, 0, this.f15470b, 0, 10, null);
        Object[] objArr3 = this.f15469a;
        int length2 = objArr3.length;
        int i10 = this.f15470b;
        wb.h.f(objArr3, objArr2, length2 - i10, 0, i10, 4, null);
        this.f15469a = objArr2;
        this.f15470b = 0;
        this.f15471c = length;
    }

    public final boolean c() {
        return this.f15470b == this.f15471c;
    }

    public final T d() {
        int i10 = this.f15470b;
        if (i10 == this.f15471c) {
            return null;
        }
        Object[] objArr = this.f15469a;
        T t10 = (T) objArr[i10];
        objArr[i10] = null;
        this.f15470b = (i10 + 1) & (objArr.length - 1);
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException("null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
    }
}
