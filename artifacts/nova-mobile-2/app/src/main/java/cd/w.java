package cd;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: RealBufferedSource.kt */
/* loaded from: classes2.dex */
public final class w implements h {

    /* renamed from: f, reason: collision with root package name */
    public final f f3949f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3950g;

    /* renamed from: h, reason: collision with root package name */
    public final c0 f3951h;

    public w(c0 c0Var) {
        jc.l.f(c0Var, "source");
        this.f3951h = c0Var;
        this.f3949f = new f();
    }

    @Override // cd.h
    public long C0() {
        byte G;
        r0(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!y(i11)) {
                break;
            }
            G = this.f3949f.G(i10);
            if ((G < ((byte) 48) || G > ((byte) 57)) && ((G < ((byte) 97) || G > ((byte) 102)) && (G < ((byte) 65) || G > ((byte) 70)))) {
                break;
            }
            i10 = i11;
        }
        if (i10 == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expected leading [0-9a-fA-F] character but was 0x");
            String num = Integer.toString(G, qc.a.a(qc.a.a(16)));
            jc.l.e(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb2.append(num);
            throw new NumberFormatException(sb2.toString());
        }
        return this.f3949f.C0();
    }

    @Override // cd.h
    public String D0(Charset charset) {
        jc.l.f(charset, "charset");
        this.f3949f.Z(this.f3951h);
        return this.f3949f.D0(charset);
    }

    @Override // cd.h
    public long E(i iVar) {
        jc.l.f(iVar, "bytes");
        return h(iVar, 0L);
    }

    public short F() {
        r0(2L);
        return this.f3949f.H0();
    }

    @Override // cd.h
    public InputStream F0() {
        return new a();
    }

    public String G(long j10) {
        r0(j10);
        return this.f3949f.K0(j10);
    }

    @Override // cd.h
    public void G0(f fVar, long j10) {
        jc.l.f(fVar, "sink");
        try {
            r0(j10);
            this.f3949f.G0(fVar, j10);
        } catch (EOFException e10) {
            fVar.Z(this.f3949f);
            throw e10;
        }
    }

    @Override // cd.h
    public String I() {
        return d0(RecyclerView.FOREVER_NS);
    }

    @Override // cd.h
    public byte[] K() {
        this.f3949f.Z(this.f3951h);
        return this.f3949f.K();
    }

    @Override // cd.h
    public boolean M() {
        if (!this.f3950g) {
            return this.f3949f.M() && this.f3951h.read(this.f3949f, (long) RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.h
    public byte[] P(long j10) {
        r0(j10);
        return this.f3949f.P(j10);
    }

    @Override // cd.h
    public long T(a0 a0Var) {
        jc.l.f(a0Var, "sink");
        long j10 = 0;
        while (this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != -1) {
            long h10 = this.f3949f.h();
            if (h10 > 0) {
                j10 += h10;
                a0Var.write(this.f3949f, h10);
            }
        }
        if (this.f3949f.N0() <= 0) {
            return j10;
        }
        long N0 = j10 + this.f3949f.N0();
        f fVar = this.f3949f;
        a0Var.write(fVar, fVar.N0());
        return N0;
    }

    @Override // cd.h
    public String W() {
        long b10 = b((byte) 10);
        if (b10 != -1) {
            return dd.a.d(this.f3949f, b10);
        }
        if (this.f3949f.N0() != 0) {
            return G(this.f3949f.N0());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        if (r4 == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9] or '-' character but was 0x");
        r2 = java.lang.Integer.toString(r8, qc.a.a(qc.a.a(16)));
        jc.l.e(r2, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // cd.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long Y() {
        r0(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            if (!y(j11)) {
                break;
            }
            byte G = this.f3949f.G(j10);
            if ((G < ((byte) 48) || G > ((byte) 57)) && !(j10 == 0 && G == ((byte) 45))) {
                break;
            }
            j10 = j11;
        }
        return this.f3949f.Y();
    }

    @Override // cd.h
    public void a(long j10) {
        if (!(!this.f3950g)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j10 > 0) {
            if (this.f3949f.N0() == 0 && this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j10, this.f3949f.N0());
            this.f3949f.a(min);
            j10 -= min;
        }
    }

    public long b(byte b10) {
        return d(b10, 0L, RecyclerView.FOREVER_NS);
    }

    @Override // cd.h, cd.g
    public f c() {
        return this.f3949f;
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3950g) {
            return;
        }
        this.f3950g = true;
        this.f3951h.close();
        this.f3949f.b();
    }

    public long d(byte b10, long j10, long j11) {
        if (!(!this.f3950g)) {
            throw new IllegalStateException("closed".toString());
        }
        if (!(0 <= j10 && j11 >= j10)) {
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        while (j10 < j11) {
            long N = this.f3949f.N(b10, j10, j11);
            if (N != -1) {
                return N;
            }
            long N0 = this.f3949f.N0();
            if (N0 >= j11 || this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, N0);
        }
        return -1L;
    }

    @Override // cd.h
    public String d0(long j10) {
        if (j10 >= 0) {
            long j11 = j10 == RecyclerView.FOREVER_NS ? Long.MAX_VALUE : j10 + 1;
            byte b10 = (byte) 10;
            long d10 = d(b10, 0L, j11);
            if (d10 != -1) {
                return dd.a.d(this.f3949f, d10);
            }
            if (j11 < RecyclerView.FOREVER_NS && y(j11) && this.f3949f.G(j11 - 1) == ((byte) 13) && y(1 + j11) && this.f3949f.G(j11) == b10) {
                return dd.a.d(this.f3949f, j11);
            }
            f fVar = new f();
            f fVar2 = this.f3949f;
            fVar2.x(fVar, 0L, Math.min(32, fVar2.N0()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f3949f.N0(), j10) + " content=" + fVar.w0().m() + "…");
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    @Override // cd.h
    public f getBuffer() {
        return this.f3949f;
    }

    public long h(i iVar, long j10) {
        jc.l.f(iVar, "bytes");
        if (!(!this.f3950g)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long R = this.f3949f.R(iVar, j10);
            if (R != -1) {
                return R;
            }
            long N0 = this.f3949f.N0();
            if (this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (N0 - iVar.y()) + 1);
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3950g;
    }

    public long k(i iVar, long j10) {
        jc.l.f(iVar, "targetBytes");
        if (!(!this.f3950g)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long U = this.f3949f.U(iVar, j10);
            if (U != -1) {
                return U;
            }
            long N0 = this.f3949f.N0();
            if (this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, N0);
        }
    }

    @Override // cd.h
    public h m0() {
        return p.d(new u(this));
    }

    @Override // cd.h
    public long q0(i iVar) {
        jc.l.f(iVar, "targetBytes");
        return k(iVar, 0L);
    }

    @Override // cd.h
    public i r(long j10) {
        r0(j10);
        return this.f3949f.r(j10);
    }

    @Override // cd.h
    public void r0(long j10) {
        if (!y(j10)) {
            throw new EOFException();
        }
    }

    @Override // cd.c0
    public long read(f fVar, long j10) {
        jc.l.f(fVar, "sink");
        if (j10 >= 0) {
            if (!(true ^ this.f3950g)) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.f3949f.N0() == 0 && this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1L;
            }
            return this.f3949f.read(fVar, Math.min(j10, this.f3949f.N0()));
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // cd.h
    public byte readByte() {
        r0(1L);
        return this.f3949f.readByte();
    }

    @Override // cd.h
    public void readFully(byte[] bArr) {
        jc.l.f(bArr, "sink");
        try {
            r0(bArr.length);
            this.f3949f.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (this.f3949f.N0() > 0) {
                f fVar = this.f3949f;
                int h02 = fVar.h0(bArr, i10, (int) fVar.N0());
                if (h02 == -1) {
                    throw new AssertionError();
                }
                i10 += h02;
            }
            throw e10;
        }
    }

    @Override // cd.h
    public int readInt() {
        r0(4L);
        return this.f3949f.readInt();
    }

    @Override // cd.h
    public long readLong() {
        r0(8L);
        return this.f3949f.readLong();
    }

    @Override // cd.h
    public short readShort() {
        r0(2L);
        return this.f3949f.readShort();
    }

    @Override // cd.h
    public int t(s sVar) {
        jc.l.f(sVar, "options");
        if (!(!this.f3950g)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            int e10 = dd.a.e(this.f3949f, sVar, true);
            if (e10 != -2) {
                if (e10 != -1) {
                    this.f3949f.a(sVar.d()[e10].y());
                    return e10;
                }
            } else if (this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                break;
            }
        }
        return -1;
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.f3951h.timeout();
    }

    public String toString() {
        return "buffer(" + this.f3951h + ')';
    }

    public boolean x(long j10, i iVar, int i10, int i11) {
        int i12;
        jc.l.f(iVar, "bytes");
        if (!this.f3950g) {
            if (j10 >= 0 && i10 >= 0 && i11 >= 0 && iVar.y() - i10 >= i11) {
                while (i12 < i11) {
                    long j11 = i12 + j10;
                    i12 = (y(1 + j11) && this.f3949f.G(j11) == iVar.h(i10 + i12)) ? i12 + 1 : 0;
                }
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.h
    public boolean y(long j10) {
        if (j10 >= 0) {
            if (!(!this.f3950g)) {
                throw new IllegalStateException("closed".toString());
            }
            while (this.f3949f.N0() < j10) {
                if (this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    public int z() {
        r0(4L);
        return this.f3949f.B0();
    }

    @Override // cd.h
    public boolean z0(long j10, i iVar) {
        jc.l.f(iVar, "bytes");
        return x(j10, iVar, 0, iVar.y());
    }

    /* compiled from: RealBufferedSource.kt */
    /* loaded from: classes2.dex */
    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() {
            w wVar = w.this;
            if (!wVar.f3950g) {
                return (int) Math.min(wVar.f3949f.N0(), Api.BaseClientBuilder.API_PRIORITY_OTHER);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            w.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            w wVar = w.this;
            if (!wVar.f3950g) {
                if (wVar.f3949f.N0() == 0) {
                    w wVar2 = w.this;
                    if (wVar2.f3951h.read(wVar2.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                        return -1;
                    }
                }
                return w.this.f3949f.readByte() & 255;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return w.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            jc.l.f(bArr, "data");
            if (!w.this.f3950g) {
                c.b(bArr.length, i10, i11);
                if (w.this.f3949f.N0() == 0) {
                    w wVar = w.this;
                    if (wVar.f3951h.read(wVar.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                        return -1;
                    }
                }
                return w.this.f3949f.h0(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        jc.l.f(byteBuffer, "sink");
        if (this.f3949f.N0() == 0 && this.f3951h.read(this.f3949f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
            return -1;
        }
        return this.f3949f.read(byteBuffer);
    }
}
