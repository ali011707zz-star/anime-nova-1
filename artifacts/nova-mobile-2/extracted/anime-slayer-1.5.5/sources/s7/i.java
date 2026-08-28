package s7;

/* compiled from: IntegerArrayAdapter.java */
/* loaded from: classes.dex */
public final class i implements a<int[]> {
    @Override // s7.a
    public String a() {
        return "IntegerArrayPool";
    }

    @Override // s7.a
    public int c() {
        return 4;
    }

    @Override // s7.a
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public int b(int[] iArr) {
        return iArr.length;
    }

    @Override // s7.a
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public int[] newArray(int i10) {
        return new int[i10];
    }
}
