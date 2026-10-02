package w3;

/* compiled from: IntRangeClosed.java */
/* loaded from: classes.dex */
public class b extends v3.d {

    /* renamed from: f, reason: collision with root package name */
    public final int f15238f;

    /* renamed from: g, reason: collision with root package name */
    public int f15239g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f15240h;

    public b(int i10, int i11) {
        this.f15238f = i11;
        this.f15239g = i10;
        this.f15240h = i10 <= i11;
    }

    @Override // v3.d
    public int b() {
        int i10 = this.f15239g;
        int i11 = this.f15238f;
        if (i10 >= i11) {
            this.f15240h = false;
            return i11;
        }
        this.f15239g = i10 + 1;
        return i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f15240h;
    }
}
