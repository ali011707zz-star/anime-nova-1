package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ExifOrientationStream.java */
/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f4613h;

    /* renamed from: i, reason: collision with root package name */
    public static final int f4614i;

    /* renamed from: j, reason: collision with root package name */
    public static final int f4615j;

    /* renamed from: f, reason: collision with root package name */
    public final byte f4616f;

    /* renamed from: g, reason: collision with root package name */
    public int f4617g;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f4613h = bArr;
        int length = bArr.length;
        f4614i = length;
        f4615j = length + 2;
    }

    public g(InputStream inputStream, int i10) {
        super(inputStream);
        if (i10 >= -1 && i10 <= 8) {
            this.f4616f = (byte) i10;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i10;
        int i11 = this.f4617g;
        if (i11 < 2 || i11 > (i10 = f4615j)) {
            read = super.read();
        } else if (i11 == i10) {
            read = this.f4616f;
        } else {
            read = f4613h[i11 - 2] & 255;
        }
        if (read != -1) {
            this.f4617g++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long skip = super.skip(j10);
        if (skip > 0) {
            this.f4617g = (int) (this.f4617g + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f4617g;
        int i14 = f4615j;
        if (i13 > i14) {
            i12 = super.read(bArr, i10, i11);
        } else if (i13 == i14) {
            bArr[i10] = this.f4616f;
            i12 = 1;
        } else if (i13 < 2) {
            i12 = super.read(bArr, i10, 2 - i13);
        } else {
            int min = Math.min(i14 - i13, i11);
            System.arraycopy(f4613h, this.f4617g - 2, bArr, i10, min);
            i12 = min;
        }
        if (i12 > 0) {
            this.f4617g += i12;
        }
        return i12;
    }
}
