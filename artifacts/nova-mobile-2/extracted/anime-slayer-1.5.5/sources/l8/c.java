package l8;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ContentLengthInputStream.java */
/* loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* renamed from: f, reason: collision with root package name */
    public final long f10515f;

    /* renamed from: g, reason: collision with root package name */
    public int f10516g;

    public c(InputStream inputStream, long j10) {
        super(inputStream);
        this.f10515f = j10;
    }

    public static InputStream d(InputStream inputStream, long j10) {
        return new c(inputStream, j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f10515f - this.f10516g, ((FilterInputStream) this).in.available());
    }

    public final int b(int i10) throws IOException {
        if (i10 >= 0) {
            this.f10516g += i10;
        } else if (this.f10515f - this.f10516g > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f10515f + ", but read: " + this.f10516g);
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        b(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        return b(super.read(bArr, i10, i11));
    }
}
