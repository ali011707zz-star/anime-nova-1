package n7;

import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader.java */
/* loaded from: classes.dex */
public class b implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public final InputStream f11357f;

    /* renamed from: g, reason: collision with root package name */
    public final Charset f11358g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f11359h;

    /* renamed from: i, reason: collision with root package name */
    public int f11360i;

    /* renamed from: j, reason: collision with root package name */
    public int f11361j;

    /* compiled from: StrictLineReader.java */
    /* loaded from: classes.dex */
    public class a extends ByteArrayOutputStream {
        public a(int i10) {
            super(i10);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i10 = ((ByteArrayOutputStream) this).count;
            if (i10 > 0 && ((ByteArrayOutputStream) this).buf[i10 - 1] == 13) {
                i10--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i10, b.this.f11358g.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f11357f) {
            if (this.f11359h != null) {
                this.f11359h = null;
                this.f11357f.close();
            }
        }
    }

    public final void d() throws IOException {
        InputStream inputStream = this.f11357f;
        byte[] bArr = this.f11359h;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f11360i = 0;
            this.f11361j = read;
            return;
        }
        throw new EOFException();
    }

    public boolean h() {
        return this.f11361j == -1;
    }

    public String k() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f11357f) {
            if (this.f11359h != null) {
                if (this.f11360i >= this.f11361j) {
                    d();
                }
                for (int i12 = this.f11360i; i12 != this.f11361j; i12++) {
                    byte[] bArr2 = this.f11359h;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f11360i;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] == 13) {
                                String str = new String(bArr2, i13, i11 - i13, this.f11358g.name());
                                this.f11360i = i12 + 1;
                                return str;
                            }
                        }
                        i11 = i12;
                        String str2 = new String(bArr2, i13, i11 - i13, this.f11358g.name());
                        this.f11360i = i12 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f11361j - this.f11360i) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f11359h;
                    int i14 = this.f11360i;
                    aVar.write(bArr3, i14, this.f11361j - i14);
                    this.f11361j = -1;
                    d();
                    i10 = this.f11360i;
                    while (i10 != this.f11361j) {
                        bArr = this.f11359h;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.f11360i;
                if (i10 != i15) {
                    aVar.write(bArr, i15, i10 - i15);
                }
                this.f11360i = i10 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }

    public b(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 >= 0) {
            if (charset.equals(c.f11363a)) {
                this.f11357f = inputStream;
                this.f11358g = charset;
                this.f11359h = new byte[i10];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
