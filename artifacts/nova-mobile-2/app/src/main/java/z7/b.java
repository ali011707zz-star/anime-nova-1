package z7;

import l8.j;
import r7.u;

/* compiled from: BytesResource.java */
/* loaded from: classes.dex */
public class b implements u<byte[]> {

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f17432f;

    public b(byte[] bArr) {
        this.f17432f = (byte[]) j.d(bArr);
    }

    @Override // r7.u
    public int a() {
        return this.f17432f.length;
    }

    @Override // r7.u
    public void b() {
    }

    @Override // r7.u
    public Class<byte[]> c() {
        return byte[].class;
    }

    @Override // r7.u
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public byte[] get() {
        return this.f17432f;
    }
}
