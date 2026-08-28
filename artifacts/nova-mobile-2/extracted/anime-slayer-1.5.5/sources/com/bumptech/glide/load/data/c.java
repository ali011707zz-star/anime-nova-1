package com.bumptech.glide.load.data;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream.java */
/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: f, reason: collision with root package name */
    public final OutputStream f4606f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f4607g;

    /* renamed from: h, reason: collision with root package name */
    public s7.b f4608h;

    /* renamed from: i, reason: collision with root package name */
    public int f4609i;

    public c(OutputStream outputStream, s7.b bVar) {
        this(outputStream, bVar, 65536);
    }

    public final void b() throws IOException {
        int i10 = this.f4609i;
        if (i10 > 0) {
            this.f4606f.write(this.f4607g, 0, i10);
            this.f4609i = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f4606f.close();
            release();
        } catch (Throwable th) {
            this.f4606f.close();
            throw th;
        }
    }

    public final void d() throws IOException {
        if (this.f4609i == this.f4607g.length) {
            b();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        b();
        this.f4606f.flush();
    }

    public final void release() {
        byte[] bArr = this.f4607g;
        if (bArr != null) {
            this.f4608h.d(bArr);
            this.f4607g = null;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        byte[] bArr = this.f4607g;
        int i11 = this.f4609i;
        this.f4609i = i11 + 1;
        bArr[i11] = (byte) i10;
        d();
    }

    public c(OutputStream outputStream, s7.b bVar, int i10) {
        this.f4606f = outputStream;
        this.f4608h = bVar;
        this.f4607g = (byte[]) bVar.e(i10, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = i11 - i12;
            int i14 = i10 + i12;
            int i15 = this.f4609i;
            if (i15 == 0 && i13 >= this.f4607g.length) {
                this.f4606f.write(bArr, i14, i13);
                return;
            }
            int min = Math.min(i13, this.f4607g.length - i15);
            System.arraycopy(bArr, i14, this.f4607g, this.f4609i, min);
            this.f4609i += min;
            i12 += min;
            d();
        } while (i12 < i11);
    }
}
