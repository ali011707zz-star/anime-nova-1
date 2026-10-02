package l8;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkEnforcingInputStream.java */
/* loaded from: classes.dex */
public class h extends FilterInputStream {

    /* renamed from: f, reason: collision with root package name */
    public int f10528f;

    public h(InputStream inputStream) {
        super(inputStream);
        this.f10528f = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i10 = this.f10528f;
        if (i10 == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i10, super.available());
    }

    public final long b(long j10) {
        int i10 = this.f10528f;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    public final void d(long j10) {
        int i10 = this.f10528f;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f10528f = (int) (i10 - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        super.mark(i10);
        this.f10528f = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (b(1L) == -1) {
            return -1;
        }
        int read = super.read();
        d(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f10528f = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long b10 = b(j10);
        if (b10 == -1) {
            return 0L;
        }
        long skip = super.skip(b10);
        d(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int b10 = (int) b(i11);
        if (b10 == -1) {
            return -1;
        }
        int read = super.read(bArr, i10, b10);
        d(read);
        return read;
    }
}
