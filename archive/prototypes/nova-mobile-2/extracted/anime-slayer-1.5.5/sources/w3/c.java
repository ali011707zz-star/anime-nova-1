package w3;

/* compiled from: ObjArray.java */
/* loaded from: classes.dex */
public class c<T> extends v3.c<T> {

    /* renamed from: f, reason: collision with root package name */
    public final T[] f15241f;

    /* renamed from: g, reason: collision with root package name */
    public int f15242g = 0;

    public c(T[] tArr) {
        this.f15241f = tArr;
    }

    @Override // v3.c
    public T a() {
        T[] tArr = this.f15241f;
        int i10 = this.f15242g;
        this.f15242g = i10 + 1;
        return tArr[i10];
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f15242g < this.f15241f.length;
    }
}
