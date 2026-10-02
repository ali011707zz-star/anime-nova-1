package s7;

/* compiled from: ByteArrayAdapter.java */
/* loaded from: classes.dex */
public final class g implements a<byte[]> {
    @Override // s7.a
    public String a() {
        return "ByteArrayPool";
    }

    @Override // s7.a
    public int c() {
        return 1;
    }

    @Override // s7.a
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // s7.a
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public byte[] newArray(int i10) {
        return new byte[i10];
    }
}
