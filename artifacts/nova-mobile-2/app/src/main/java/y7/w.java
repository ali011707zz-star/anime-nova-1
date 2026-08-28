package y7;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: RecyclableBufferedInputStream.java */
/* loaded from: classes.dex */
public class w extends FilterInputStream {

    /* renamed from: f, reason: collision with root package name */
    public volatile byte[] f16711f;

    /* renamed from: g, reason: collision with root package name */
    public int f16712g;

    /* renamed from: h, reason: collision with root package name */
    public int f16713h;

    /* renamed from: i, reason: collision with root package name */
    public int f16714i;

    /* renamed from: j, reason: collision with root package name */
    public int f16715j;

    /* renamed from: k, reason: collision with root package name */
    public final s7.b f16716k;

    /* compiled from: RecyclableBufferedInputStream.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public w(InputStream inputStream, s7.b bVar) {
        this(inputStream, bVar, 65536);
    }

    public static IOException h() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f16711f != null && inputStream != null) {
        } else {
            throw h();
        }
        return (this.f16712g - this.f16715j) + inputStream.available();
    }

    public final int b(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f16714i;
        if (i10 != -1) {
            int i11 = this.f16715j - i10;
            int i12 = this.f16713h;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f16712g == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f16716k.e(i12, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f16711f = bArr2;
                    this.f16716k.d(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f16715j - this.f16714i;
                this.f16715j = i13;
                this.f16714i = 0;
                this.f16712g = 0;
                int read = inputStream.read(bArr, i13, bArr.length - i13);
                int i14 = this.f16715j;
                if (read > 0) {
                    i14 += read;
                }
                this.f16712g = i14;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f16714i = -1;
            this.f16715j = 0;
            this.f16712g = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f16711f != null) {
            this.f16716k.d(this.f16711f);
            this.f16711f = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void d() {
        this.f16713h = this.f16711f.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        this.f16713h = Math.max(this.f16713h, i10);
        this.f16714i = this.f16715j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f16711f;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f16715j >= this.f16712g && b(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f16711f && (bArr = this.f16711f) == null) {
                throw h();
            }
            int i10 = this.f16712g;
            int i11 = this.f16715j;
            if (i10 - i11 <= 0) {
                return -1;
            }
            this.f16715j = i11 + 1;
            return bArr[i11] & 255;
        }
        throw h();
    }

    public synchronized void release() {
        if (this.f16711f != null) {
            this.f16716k.d(this.f16711f);
            this.f16711f = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f16711f != null) {
            int i10 = this.f16714i;
            if (-1 != i10) {
                this.f16715j = i10;
            } else {
                throw new a("Mark has been invalidated, pos: " + this.f16715j + " markLimit: " + this.f16713h);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) throws IOException {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f16711f;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i10 = this.f16712g;
                int i11 = this.f16715j;
                if (i10 - i11 >= j10) {
                    this.f16715j = (int) (i11 + j10);
                    return j10;
                }
                long j11 = i10 - i11;
                this.f16715j = i10;
                if (this.f16714i != -1 && j10 <= this.f16713h) {
                    if (b(inputStream, bArr) == -1) {
                        return j11;
                    }
                    int i12 = this.f16712g;
                    int i13 = this.f16715j;
                    if (i12 - i13 >= j10 - j11) {
                        this.f16715j = (int) ((i13 + j10) - j11);
                        return j10;
                    }
                    long j12 = (j11 + i12) - i13;
                    this.f16715j = i12;
                    return j12;
                }
                return j11 + inputStream.skip(j10 - j11);
            }
            throw h();
        }
        throw h();
    }

    public w(InputStream inputStream, s7.b bVar, int i10) {
        super(inputStream);
        this.f16714i = -1;
        this.f16716k = bVar;
        this.f16711f = (byte[]) bVar.e(i10, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        byte[] bArr2 = this.f16711f;
        if (bArr2 == null) {
            throw h();
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i14 = this.f16715j;
            int i15 = this.f16712g;
            if (i14 < i15) {
                int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
                System.arraycopy(bArr2, i14, bArr, i10, i16);
                this.f16715j += i16;
                if (i16 == i11 || inputStream.available() == 0) {
                    return i16;
                }
                i10 += i16;
                i12 = i11 - i16;
            } else {
                i12 = i11;
            }
            while (true) {
                if (this.f16714i == -1 && i12 >= bArr2.length) {
                    i13 = inputStream.read(bArr, i10, i12);
                    if (i13 == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                } else {
                    if (b(inputStream, bArr2) == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                    if (bArr2 != this.f16711f && (bArr2 = this.f16711f) == null) {
                        throw h();
                    }
                    int i17 = this.f16712g;
                    int i18 = this.f16715j;
                    i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                    System.arraycopy(bArr2, i18, bArr, i10, i13);
                    this.f16715j += i13;
                }
                i12 -= i13;
                if (i12 == 0) {
                    return i11;
                }
                if (inputStream.available() == 0) {
                    return i11 - i12;
                }
                i10 += i13;
            }
        } else {
            throw h();
        }
    }
}
