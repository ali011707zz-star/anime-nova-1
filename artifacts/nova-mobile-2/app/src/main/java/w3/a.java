package w3;

/* compiled from: IntArray.java */
/* loaded from: classes.dex */
public class a extends v3.d {

    /* renamed from: f, reason: collision with root package name */
    public final int[] f15236f;

    /* renamed from: g, reason: collision with root package name */
    public int f15237g = 0;

    public a(int[] iArr) {
        this.f15236f = iArr;
    }

    @Override // v3.d
    public int b() {
        int[] iArr = this.f15236f;
        int i10 = this.f15237g;
        this.f15237g = i10 + 1;
        return iArr[i10];
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f15237g < this.f15236f.length;
    }
}
