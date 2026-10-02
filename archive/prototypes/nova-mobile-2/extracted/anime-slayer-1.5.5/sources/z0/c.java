package z0;

import java.nio.ByteBuffer;

/* compiled from: Table.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public int f17247a;

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f17248b;

    /* renamed from: c, reason: collision with root package name */
    public int f17249c;

    /* renamed from: d, reason: collision with root package name */
    public int f17250d;

    /* renamed from: e, reason: collision with root package name */
    public d f17251e = d.a();

    public int a(int i10) {
        return i10 + this.f17248b.getInt(i10);
    }

    public int b(int i10) {
        if (i10 < this.f17250d) {
            return this.f17248b.getShort(this.f17249c + i10);
        }
        return 0;
    }

    public void c(int i10, ByteBuffer byteBuffer) {
        this.f17248b = byteBuffer;
        if (byteBuffer != null) {
            this.f17247a = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.f17249c = i11;
            this.f17250d = this.f17248b.getShort(i11);
            return;
        }
        this.f17247a = 0;
        this.f17249c = 0;
        this.f17250d = 0;
    }

    public int d(int i10) {
        int i11 = i10 + this.f17247a;
        return i11 + this.f17248b.getInt(i11) + 4;
    }

    public int e(int i10) {
        int i11 = i10 + this.f17247a;
        return this.f17248b.getInt(i11 + this.f17248b.getInt(i11));
    }
}
