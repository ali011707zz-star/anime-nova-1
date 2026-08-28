package cd;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: Buffer.kt */
/* loaded from: classes2.dex */
public final class f implements h, g, Cloneable, ByteChannel {

    /* renamed from: f, reason: collision with root package name */
    public x f3906f;

    /* renamed from: g, reason: collision with root package name */
    public long f3907g;

    /* compiled from: Buffer.kt */
    /* loaded from: classes2.dex */
    public static final class a implements Closeable {

        /* renamed from: f, reason: collision with root package name */
        public f f3908f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f3909g;

        /* renamed from: h, reason: collision with root package name */
        public x f3910h;

        /* renamed from: j, reason: collision with root package name */
        public byte[] f3912j;

        /* renamed from: i, reason: collision with root package name */
        public long f3911i = -1;

        /* renamed from: k, reason: collision with root package name */
        public int f3913k = -1;

        /* renamed from: l, reason: collision with root package name */
        public int f3914l = -1;

        public final x b() {
            return this.f3910h;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3908f != null) {
                this.f3908f = null;
                k(null);
                this.f3911i = -1L;
                this.f3912j = null;
                this.f3913k = -1;
                this.f3914l = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        public final int d() {
            long j10 = this.f3911i;
            f fVar = this.f3908f;
            jc.l.c(fVar);
            if (j10 != fVar.N0()) {
                long j11 = this.f3911i;
                return h(j11 == -1 ? 0L : j11 + (this.f3914l - this.f3913k));
            }
            throw new IllegalStateException("no more bytes".toString());
        }

        public final int h(long j10) {
            x xVar;
            f fVar = this.f3908f;
            if (fVar == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j10 < -1 || j10 > fVar.N0()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + fVar.N0());
            }
            if (j10 != -1 && j10 != fVar.N0()) {
                long j11 = 0;
                long N0 = fVar.N0();
                x xVar2 = fVar.f3906f;
                if (b() != null) {
                    long j12 = this.f3911i;
                    int i10 = this.f3913k;
                    jc.l.c(b());
                    long j13 = j12 - (i10 - r12.f3955b);
                    if (j13 > j10) {
                        xVar2 = b();
                        N0 = j13;
                        xVar = xVar2;
                    } else {
                        xVar = b();
                        j11 = j13;
                    }
                } else {
                    xVar = xVar2;
                }
                if (N0 - j10 > j10 - j11) {
                    while (true) {
                        jc.l.c(xVar);
                        int i11 = xVar.f3956c;
                        int i12 = xVar.f3955b;
                        if (j10 < (i11 - i12) + j11) {
                            break;
                        }
                        j11 += i11 - i12;
                        xVar = xVar.f3959f;
                    }
                } else {
                    while (N0 > j10) {
                        jc.l.c(xVar2);
                        xVar2 = xVar2.f3960g;
                        jc.l.c(xVar2);
                        N0 -= xVar2.f3956c - xVar2.f3955b;
                    }
                    j11 = N0;
                    xVar = xVar2;
                }
                if (this.f3909g) {
                    jc.l.c(xVar);
                    if (xVar.f3957d) {
                        x f10 = xVar.f();
                        if (fVar.f3906f == xVar) {
                            fVar.f3906f = f10;
                        }
                        xVar = xVar.c(f10);
                        x xVar3 = xVar.f3960g;
                        jc.l.c(xVar3);
                        xVar3.b();
                    }
                }
                k(xVar);
                this.f3911i = j10;
                jc.l.c(xVar);
                this.f3912j = xVar.f3954a;
                int i13 = xVar.f3955b + ((int) (j10 - j11));
                this.f3913k = i13;
                int i14 = xVar.f3956c;
                this.f3914l = i14;
                return i14 - i13;
            }
            k(null);
            this.f3911i = j10;
            this.f3912j = null;
            this.f3913k = -1;
            this.f3914l = -1;
            return -1;
        }

        public final void k(x xVar) {
            this.f3910h = xVar;
        }
    }

    /* compiled from: Buffer.kt */
    /* loaded from: classes2.dex */
    public static final class c extends OutputStream {
        public c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return f.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i10) {
            f.this.O(i10);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) {
            jc.l.f(bArr, "data");
            f.this.write(bArr, i10, i11);
        }
    }

    public int B0() throws EOFException {
        return cd.c.c(readInt());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae A[EDGE_INSN: B:39:0x00ae->B:36:0x00ae BREAK  A[LOOP:0: B:4:0x000d->B:38:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a6  */
    @Override // cd.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long C0() throws EOFException {
        int i10;
        if (N0() != 0) {
            int i11 = 0;
            long j10 = 0;
            boolean z10 = false;
            do {
                x xVar = this.f3906f;
                jc.l.c(xVar);
                byte[] bArr = xVar.f3954a;
                int i12 = xVar.f3955b;
                int i13 = xVar.f3956c;
                while (i12 < i13) {
                    byte b10 = bArr[i12];
                    byte b11 = (byte) 48;
                    if (b10 < b11 || b10 > ((byte) 57)) {
                        byte b12 = (byte) 97;
                        if ((b10 >= b12 && b10 <= ((byte) 102)) || (b10 >= (b12 = (byte) 65) && b10 <= ((byte) 70))) {
                            i10 = (b10 - b12) + 10;
                        } else {
                            if (i11 == 0) {
                                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + cd.c.e(b10));
                            }
                            z10 = true;
                            if (i12 != i13) {
                                this.f3906f = xVar.b();
                                y.b(xVar);
                            } else {
                                xVar.f3955b = i12;
                            }
                            if (!z10) {
                                break;
                            }
                        }
                    } else {
                        i10 = b10 - b11;
                    }
                    if (((-1152921504606846976L) & j10) != 0) {
                        throw new NumberFormatException("Number too large: " + new f().p(j10).O(b10).J0());
                    }
                    j10 = (j10 << 4) | i10;
                    i12++;
                    i11++;
                }
                if (i12 != i13) {
                }
                if (!z10) {
                }
            } while (this.f3906f != null);
            M0(N0() - i11);
            return j10;
        }
        throw new EOFException();
    }

    @Override // cd.h
    public String D0(Charset charset) {
        jc.l.f(charset, "charset");
        return I0(this.f3907g, charset);
    }

    @Override // cd.h
    public long E(i iVar) throws IOException {
        jc.l.f(iVar, "bytes");
        return R(iVar, 0L);
    }

    @Override // cd.g
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public f X() {
        return this;
    }

    @Override // cd.h
    public InputStream F0() {
        return new b();
    }

    public final byte G(long j10) {
        cd.c.b(N0(), j10, 1L);
        x xVar = this.f3906f;
        if (xVar == null) {
            jc.l.c(null);
            throw null;
        }
        if (N0() - j10 < j10) {
            long N0 = N0();
            while (N0 > j10) {
                xVar = xVar.f3960g;
                jc.l.c(xVar);
                N0 -= xVar.f3956c - xVar.f3955b;
            }
            jc.l.c(xVar);
            return xVar.f3954a[(int) ((xVar.f3955b + j10) - N0)];
        }
        long j11 = 0;
        while (true) {
            long j12 = (xVar.f3956c - xVar.f3955b) + j11;
            if (j12 > j10) {
                jc.l.c(xVar);
                return xVar.f3954a[(int) ((xVar.f3955b + j10) - j11)];
            }
            xVar = xVar.f3959f;
            jc.l.c(xVar);
            j11 = j12;
        }
    }

    @Override // cd.h
    public void G0(f fVar, long j10) throws EOFException {
        jc.l.f(fVar, "sink");
        if (N0() >= j10) {
            fVar.write(this, j10);
        } else {
            fVar.write(this, N0());
            throw new EOFException();
        }
    }

    public short H0() throws EOFException {
        return cd.c.d(readShort());
    }

    @Override // cd.h
    public String I() throws EOFException {
        return d0(RecyclerView.FOREVER_NS);
    }

    public String I0(long j10, Charset charset) throws EOFException {
        jc.l.f(charset, "charset");
        if (!(j10 >= 0 && j10 <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (this.f3907g < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        x xVar = this.f3906f;
        jc.l.c(xVar);
        int i10 = xVar.f3955b;
        if (i10 + j10 > xVar.f3956c) {
            return new String(P(j10), charset);
        }
        int i11 = (int) j10;
        String str = new String(xVar.f3954a, i10, i11, charset);
        int i12 = xVar.f3955b + i11;
        xVar.f3955b = i12;
        this.f3907g -= j10;
        if (i12 == xVar.f3956c) {
            this.f3906f = xVar.b();
            y.b(xVar);
        }
        return str;
    }

    public String J0() {
        return I0(this.f3907g, qc.c.f12678b);
    }

    @Override // cd.h
    public byte[] K() {
        return P(N0());
    }

    public String K0(long j10) throws EOFException {
        return I0(j10, qc.c.f12678b);
    }

    public long L(byte b10) {
        return N(b10, 0L, RecyclerView.FOREVER_NS);
    }

    public int L0() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (N0() != 0) {
            byte G = G(0L);
            if ((G & 128) == 0) {
                i10 = G & Byte.MAX_VALUE;
                i11 = 1;
                i12 = 0;
            } else if ((G & 224) == 192) {
                i10 = G & 31;
                i11 = 2;
                i12 = 128;
            } else if ((G & 240) == 224) {
                i10 = G & 15;
                i11 = 3;
                i12 = RecyclerView.e0.FLAG_MOVED;
            } else {
                if ((G & 248) != 240) {
                    a(1L);
                    return 65533;
                }
                i10 = G & 7;
                i11 = 4;
                i12 = 65536;
            }
            long j10 = i11;
            if (N0() >= j10) {
                for (int i13 = 1; i13 < i11; i13++) {
                    long j11 = i13;
                    byte G2 = G(j11);
                    if ((G2 & 192) != 128) {
                        a(j11);
                        return 65533;
                    }
                    i10 = (i10 << 6) | (G2 & 63);
                }
                a(j10);
                if (i10 > 1114111) {
                    return 65533;
                }
                if ((55296 <= i10 && 57343 >= i10) || i10 < i12) {
                    return 65533;
                }
                return i10;
            }
            throw new EOFException("size < " + i11 + ": " + N0() + " (to read code point prefixed 0x" + cd.c.e(G) + ')');
        }
        throw new EOFException();
    }

    @Override // cd.h
    public boolean M() {
        return this.f3907g == 0;
    }

    public final void M0(long j10) {
        this.f3907g = j10;
    }

    public long N(byte b10, long j10, long j11) {
        x xVar;
        int i10;
        long j12 = 0;
        if (!(0 <= j10 && j11 >= j10)) {
            throw new IllegalArgumentException(("size=" + N0() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        if (j11 > N0()) {
            j11 = N0();
        }
        if (j10 == j11 || (xVar = this.f3906f) == null) {
            return -1L;
        }
        if (N0() - j10 < j10) {
            j12 = N0();
            while (j12 > j10) {
                xVar = xVar.f3960g;
                jc.l.c(xVar);
                j12 -= xVar.f3956c - xVar.f3955b;
            }
            while (j12 < j11) {
                byte[] bArr = xVar.f3954a;
                int min = (int) Math.min(xVar.f3956c, (xVar.f3955b + j11) - j12);
                i10 = (int) ((xVar.f3955b + j10) - j12);
                while (i10 < min) {
                    if (bArr[i10] != b10) {
                        i10++;
                    }
                }
                j12 += xVar.f3956c - xVar.f3955b;
                xVar = xVar.f3959f;
                jc.l.c(xVar);
                j10 = j12;
            }
            return -1L;
        }
        while (true) {
            long j13 = (xVar.f3956c - xVar.f3955b) + j12;
            if (j13 > j10) {
                break;
            }
            xVar = xVar.f3959f;
            jc.l.c(xVar);
            j12 = j13;
        }
        while (j12 < j11) {
            byte[] bArr2 = xVar.f3954a;
            int min2 = (int) Math.min(xVar.f3956c, (xVar.f3955b + j11) - j12);
            i10 = (int) ((xVar.f3955b + j10) - j12);
            while (i10 < min2) {
                if (bArr2[i10] != b10) {
                    i10++;
                }
            }
            j12 += xVar.f3956c - xVar.f3955b;
            xVar = xVar.f3959f;
            jc.l.c(xVar);
            j10 = j12;
        }
        return -1L;
        return (i10 - xVar.f3955b) + j12;
    }

    public final long N0() {
        return this.f3907g;
    }

    public final i O0() {
        if (N0() <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            return P0((int) N0());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + N0()).toString());
    }

    @Override // cd.h
    public byte[] P(long j10) throws EOFException {
        if (!(j10 >= 0 && j10 <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (N0() >= j10) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new EOFException();
    }

    public final i P0(int i10) {
        if (i10 == 0) {
            return i.f3917i;
        }
        cd.c.b(N0(), 0L, i10);
        x xVar = this.f3906f;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            jc.l.c(xVar);
            int i14 = xVar.f3956c;
            int i15 = xVar.f3955b;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                xVar = xVar.f3959f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i13];
        int[] iArr = new int[i13 * 2];
        x xVar2 = this.f3906f;
        int i16 = 0;
        while (i11 < i10) {
            jc.l.c(xVar2);
            bArr[i16] = xVar2.f3954a;
            i11 += xVar2.f3956c - xVar2.f3955b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = xVar2.f3955b;
            xVar2.f3957d = true;
            i16++;
            xVar2 = xVar2.f3959f;
        }
        return new z(bArr, iArr);
    }

    public final x Q0(int i10) {
        if (i10 >= 1 && i10 <= 8192) {
            x xVar = this.f3906f;
            if (xVar == null) {
                x c10 = y.c();
                this.f3906f = c10;
                c10.f3960g = c10;
                c10.f3959f = c10;
                return c10;
            }
            jc.l.c(xVar);
            x xVar2 = xVar.f3960g;
            jc.l.c(xVar2);
            return (xVar2.f3956c + i10 > 8192 || !xVar2.f3958e) ? xVar2.c(y.c()) : xVar2;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    public long R(i iVar, long j10) throws IOException {
        long j11 = j10;
        jc.l.f(iVar, "bytes");
        if (!(iVar.y() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j12 = 0;
        if (j11 >= 0) {
            x xVar = this.f3906f;
            if (xVar != null) {
                if (N0() - j11 < j11) {
                    long N0 = N0();
                    while (N0 > j11) {
                        xVar = xVar.f3960g;
                        jc.l.c(xVar);
                        N0 -= xVar.f3956c - xVar.f3955b;
                    }
                    byte[] n10 = iVar.n();
                    byte b10 = n10[0];
                    int y10 = iVar.y();
                    long N02 = (N0() - y10) + 1;
                    while (N0 < N02) {
                        byte[] bArr = xVar.f3954a;
                        long j13 = N0;
                        int min = (int) Math.min(xVar.f3956c, (xVar.f3955b + N02) - N0);
                        for (int i10 = (int) ((xVar.f3955b + j11) - j13); i10 < min; i10++) {
                            if (bArr[i10] == b10 && dd.a.c(xVar, i10 + 1, n10, 1, y10)) {
                                return (i10 - xVar.f3955b) + j13;
                            }
                        }
                        j11 = j13 + (xVar.f3956c - xVar.f3955b);
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                        N0 = j11;
                    }
                } else {
                    while (true) {
                        long j14 = (xVar.f3956c - xVar.f3955b) + j12;
                        if (j14 > j11) {
                            break;
                        }
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                        j12 = j14;
                    }
                    byte[] n11 = iVar.n();
                    byte b11 = n11[0];
                    int y11 = iVar.y();
                    long N03 = (N0() - y11) + 1;
                    while (j12 < N03) {
                        byte[] bArr2 = xVar.f3954a;
                        long j15 = N03;
                        int min2 = (int) Math.min(xVar.f3956c, (xVar.f3955b + N03) - j12);
                        for (int i11 = (int) ((xVar.f3955b + j11) - j12); i11 < min2; i11++) {
                            if (bArr2[i11] == b11 && dd.a.c(xVar, i11 + 1, n11, 1, y11)) {
                                return (i11 - xVar.f3955b) + j12;
                            }
                        }
                        j12 += xVar.f3956c - xVar.f3955b;
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                        j11 = j12;
                        N03 = j15;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j11).toString());
    }

    @Override // cd.g
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public f B(i iVar) {
        jc.l.f(iVar, "byteString");
        iVar.D(this, 0, iVar.y());
        return this;
    }

    @Override // cd.g
    /* renamed from: S0, reason: merged with bridge method [inline-methods] */
    public f write(byte[] bArr) {
        jc.l.f(bArr, "source");
        return write(bArr, 0, bArr.length);
    }

    @Override // cd.h
    public long T(a0 a0Var) throws IOException {
        jc.l.f(a0Var, "sink");
        long N0 = N0();
        if (N0 > 0) {
            a0Var.write(this, N0);
        }
        return N0;
    }

    @Override // cd.g
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public f write(byte[] bArr, int i10, int i11) {
        jc.l.f(bArr, "source");
        long j10 = i11;
        cd.c.b(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            x Q0 = Q0(1);
            int min = Math.min(i12 - i10, 8192 - Q0.f3956c);
            int i13 = i10 + min;
            wb.h.c(bArr, Q0.f3954a, Q0.f3956c, i10, i13);
            Q0.f3956c += min;
            i10 = i13;
        }
        M0(N0() + j10);
        return this;
    }

    public long U(i iVar, long j10) {
        int i10;
        int i11;
        jc.l.f(iVar, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            x xVar = this.f3906f;
            if (xVar == null) {
                return -1L;
            }
            if (N0() - j10 < j10) {
                j11 = N0();
                while (j11 > j10) {
                    xVar = xVar.f3960g;
                    jc.l.c(xVar);
                    j11 -= xVar.f3956c - xVar.f3955b;
                }
                if (iVar.y() == 2) {
                    byte h10 = iVar.h(0);
                    byte h11 = iVar.h(1);
                    while (j11 < N0()) {
                        byte[] bArr = xVar.f3954a;
                        i10 = (int) ((xVar.f3955b + j10) - j11);
                        int i12 = xVar.f3956c;
                        while (i10 < i12) {
                            byte b10 = bArr[i10];
                            if (b10 != h10 && b10 != h11) {
                                i10++;
                            }
                            i11 = xVar.f3955b;
                        }
                        j11 += xVar.f3956c - xVar.f3955b;
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                        j10 = j11;
                    }
                    return -1L;
                }
                byte[] n10 = iVar.n();
                while (j11 < N0()) {
                    byte[] bArr2 = xVar.f3954a;
                    i10 = (int) ((xVar.f3955b + j10) - j11);
                    int i13 = xVar.f3956c;
                    while (i10 < i13) {
                        byte b11 = bArr2[i10];
                        for (byte b12 : n10) {
                            if (b11 == b12) {
                                i11 = xVar.f3955b;
                            }
                        }
                        i10++;
                    }
                    j11 += xVar.f3956c - xVar.f3955b;
                    xVar = xVar.f3959f;
                    jc.l.c(xVar);
                    j10 = j11;
                }
                return -1L;
            }
            while (true) {
                long j12 = (xVar.f3956c - xVar.f3955b) + j11;
                if (j12 > j10) {
                    break;
                }
                xVar = xVar.f3959f;
                jc.l.c(xVar);
                j11 = j12;
            }
            if (iVar.y() == 2) {
                byte h12 = iVar.h(0);
                byte h13 = iVar.h(1);
                while (j11 < N0()) {
                    byte[] bArr3 = xVar.f3954a;
                    i10 = (int) ((xVar.f3955b + j10) - j11);
                    int i14 = xVar.f3956c;
                    while (i10 < i14) {
                        byte b13 = bArr3[i10];
                        if (b13 != h12 && b13 != h13) {
                            i10++;
                        }
                        i11 = xVar.f3955b;
                    }
                    j11 += xVar.f3956c - xVar.f3955b;
                    xVar = xVar.f3959f;
                    jc.l.c(xVar);
                    j10 = j11;
                }
                return -1L;
            }
            byte[] n11 = iVar.n();
            while (j11 < N0()) {
                byte[] bArr4 = xVar.f3954a;
                i10 = (int) ((xVar.f3955b + j10) - j11);
                int i15 = xVar.f3956c;
                while (i10 < i15) {
                    byte b14 = bArr4[i10];
                    for (byte b15 : n11) {
                        if (b14 == b15) {
                            i11 = xVar.f3955b;
                        }
                    }
                    i10++;
                }
                j11 += xVar.f3956c - xVar.f3955b;
                xVar = xVar.f3959f;
                jc.l.c(xVar);
                j10 = j11;
            }
            return -1L;
            return (i10 - i11) + j11;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }

    @Override // cd.g
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public f O(int i10) {
        x Q0 = Q0(1);
        byte[] bArr = Q0.f3954a;
        int i11 = Q0.f3956c;
        Q0.f3956c = i11 + 1;
        bArr[i11] = (byte) i10;
        M0(N0() + 1);
        return this;
    }

    public OutputStream V() {
        return new c();
    }

    @Override // cd.g
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public f u0(long j10) {
        if (j10 == 0) {
            return O(48);
        }
        boolean z10 = false;
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return t0("-9223372036854775808");
            }
            z10 = true;
        }
        if (j10 >= 100000000) {
            i10 = j10 < 1000000000000L ? j10 < 10000000000L ? j10 < Http2Connection.DEGRADED_PONG_TIMEOUT_NS ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i10 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z10) {
            i10++;
        }
        x Q0 = Q0(i10);
        byte[] bArr = Q0.f3954a;
        int i11 = Q0.f3956c + i10;
        while (j10 != 0) {
            long j11 = 10;
            i11--;
            bArr[i11] = dd.a.b()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i11 - 1] = (byte) 45;
        }
        Q0.f3956c += i10;
        M0(N0() + i10);
        return this;
    }

    @Override // cd.h
    public String W() throws EOFException {
        long L = L((byte) 10);
        if (L != -1) {
            return dd.a.d(this, L);
        }
        if (N0() != 0) {
            return K0(N0());
        }
        return null;
    }

    @Override // cd.g
    /* renamed from: W0, reason: merged with bridge method [inline-methods] */
    public f p(long j10) {
        if (j10 == 0) {
            return O(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        x Q0 = Q0(i10);
        byte[] bArr = Q0.f3954a;
        int i11 = Q0.f3956c;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = dd.a.b()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        Q0.f3956c += i10;
        M0(N0() + i10);
        return this;
    }

    @Override // cd.g
    /* renamed from: X0, reason: merged with bridge method [inline-methods] */
    public f D(int i10) {
        x Q0 = Q0(4);
        byte[] bArr = Q0.f3954a;
        int i11 = Q0.f3956c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & BaseProgressIndicator.MAX_ALPHA);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & BaseProgressIndicator.MAX_ALPHA);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
        bArr[i14] = (byte) (i10 & BaseProgressIndicator.MAX_ALPHA);
        Q0.f3956c = i14 + 1;
        M0(N0() + 4);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4 A[EDGE_INSN: B:48:0x00c4->B:42:0x00c4 BREAK  A[LOOP:0: B:4:0x0011->B:47:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ba  */
    @Override // cd.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long Y() throws EOFException {
        x xVar;
        boolean z10;
        long j10 = 0;
        if (N0() != 0) {
            long j11 = -7;
            int i10 = 0;
            boolean z11 = false;
            boolean z12 = false;
            do {
                x xVar2 = this.f3906f;
                jc.l.c(xVar2);
                byte[] bArr = xVar2.f3954a;
                int i11 = xVar2.f3955b;
                int i12 = xVar2.f3956c;
                while (i11 < i12) {
                    byte b10 = bArr[i11];
                    byte b11 = (byte) 48;
                    if (b10 >= b11 && b10 <= ((byte) 57)) {
                        int i13 = b11 - b10;
                        if (j10 >= -922337203685477580L) {
                            z10 = z12;
                            xVar = xVar2;
                            if (j10 != -922337203685477580L || i13 >= j11) {
                                j10 = (j10 * 10) + i13;
                            }
                        }
                        f O = new f().u0(j10).O(b10);
                        if (!z11) {
                            O.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + O.J0());
                    }
                    z10 = z12;
                    xVar = xVar2;
                    if (b10 == ((byte) 45) && i10 == 0) {
                        j11--;
                        z11 = true;
                    } else {
                        if (i10 == 0) {
                            throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + cd.c.e(b10));
                        }
                        z12 = true;
                        if (i11 != i12) {
                            this.f3906f = xVar.b();
                            y.b(xVar);
                        } else {
                            xVar.f3955b = i11;
                        }
                        if (!z12) {
                            break;
                        }
                    }
                    i11++;
                    i10++;
                    z12 = z10;
                    xVar2 = xVar;
                }
                xVar = xVar2;
                if (i11 != i12) {
                }
                if (!z12) {
                }
            } while (this.f3906f != null);
            M0(N0() - i10);
            return z11 ? j10 : -j10;
        }
        throw new EOFException();
    }

    public f Y0(long j10) {
        x Q0 = Q0(8);
        byte[] bArr = Q0.f3954a;
        int i10 = Q0.f3956c;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 48) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 40) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 32) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 24) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j10 >>> 16) & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((j10 >>> 8) & 255);
        bArr[i17] = (byte) (j10 & 255);
        Q0.f3956c = i17 + 1;
        M0(N0() + 8);
        return this;
    }

    @Override // cd.g
    public long Z(c0 c0Var) throws IOException {
        jc.l.f(c0Var, "source");
        long j10 = 0;
        while (true) {
            long read = c0Var.read(this, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            if (read == -1) {
                return j10;
            }
            j10 += read;
        }
    }

    @Override // cd.g
    /* renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public f w(int i10) {
        x Q0 = Q0(2);
        byte[] bArr = Q0.f3954a;
        int i11 = Q0.f3956c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
        bArr[i12] = (byte) (i10 & BaseProgressIndicator.MAX_ALPHA);
        Q0.f3956c = i12 + 1;
        M0(N0() + 2);
        return this;
    }

    @Override // cd.h
    public void a(long j10) throws EOFException {
        while (j10 > 0) {
            x xVar = this.f3906f;
            if (xVar != null) {
                int min = (int) Math.min(j10, xVar.f3956c - xVar.f3955b);
                long j11 = min;
                M0(N0() - j11);
                j10 -= j11;
                int i10 = xVar.f3955b + min;
                xVar.f3955b = i10;
                if (i10 == xVar.f3956c) {
                    this.f3906f = xVar.b();
                    y.b(xVar);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public boolean a0(long j10, i iVar, int i10, int i11) {
        jc.l.f(iVar, "bytes");
        if (j10 < 0 || i10 < 0 || i11 < 0 || N0() - j10 < i11 || iVar.y() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (G(i12 + j10) != iVar.h(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public f a1(String str, int i10, int i11, Charset charset) {
        jc.l.f(str, "string");
        jc.l.f(charset, "charset");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (i11 <= str.length()) {
                if (jc.l.a(charset, qc.c.f12678b)) {
                    return m(str, i10, i11);
                }
                String substring = str.substring(i10, i11);
                jc.l.e(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                if (substring != null) {
                    byte[] bytes = substring.getBytes(charset);
                    jc.l.e(bytes, "(this as java.lang.String).getBytes(charset)");
                    return write(bytes, 0, bytes.length);
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + str.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }

    public final void b() {
        a(N0());
    }

    public f b1(String str, Charset charset) {
        jc.l.f(str, "string");
        jc.l.f(charset, "charset");
        return a1(str, 0, str.length(), charset);
    }

    @Override // cd.h, cd.g
    public f c() {
        return this;
    }

    @Override // cd.g
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public f t0(String str) {
        jc.l.f(str, "string");
        return m(str, 0, str.length());
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public f clone() {
        return k();
    }

    @Override // cd.h
    public String d0(long j10) throws EOFException {
        if (j10 >= 0) {
            long j11 = RecyclerView.FOREVER_NS;
            if (j10 != RecyclerView.FOREVER_NS) {
                j11 = j10 + 1;
            }
            byte b10 = (byte) 10;
            long N = N(b10, 0L, j11);
            if (N != -1) {
                return dd.a.d(this, N);
            }
            if (j11 < N0() && G(j11 - 1) == ((byte) 13) && G(j11) == b10) {
                return dd.a.d(this, j11);
            }
            f fVar = new f();
            x(fVar, 0L, Math.min(32, N0()));
            throw new EOFException("\\n not found: limit=" + Math.min(N0(), j10) + " content=" + fVar.w0().m() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    @Override // cd.g
    /* renamed from: d1, reason: merged with bridge method [inline-methods] */
    public f m(String str, int i10, int i11) {
        jc.l.f(str, "string");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (!(i11 <= str.length())) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + str.length()).toString());
            }
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt < 128) {
                    x Q0 = Q0(1);
                    byte[] bArr = Q0.f3954a;
                    int i12 = Q0.f3956c - i10;
                    int min = Math.min(i11, 8192 - i12);
                    int i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) charAt;
                    while (i13 < min) {
                        char charAt2 = str.charAt(i13);
                        if (charAt2 >= 128) {
                            break;
                        }
                        bArr[i13 + i12] = (byte) charAt2;
                        i13++;
                    }
                    int i14 = Q0.f3956c;
                    int i15 = (i12 + i13) - i14;
                    Q0.f3956c = i14 + i15;
                    M0(N0() + i15);
                    i10 = i13;
                } else {
                    if (charAt < 2048) {
                        x Q02 = Q0(2);
                        byte[] bArr2 = Q02.f3954a;
                        int i16 = Q02.f3956c;
                        bArr2[i16] = (byte) ((charAt >> 6) | 192);
                        bArr2[i16 + 1] = (byte) ((charAt & '?') | 128);
                        Q02.f3956c = i16 + 2;
                        M0(N0() + 2);
                    } else if (charAt >= 55296 && charAt <= 57343) {
                        int i17 = i10 + 1;
                        char charAt3 = i17 < i11 ? str.charAt(i17) : (char) 0;
                        if (charAt <= 56319 && 56320 <= charAt3 && 57343 >= charAt3) {
                            int i18 = (((charAt & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            x Q03 = Q0(4);
                            byte[] bArr3 = Q03.f3954a;
                            int i19 = Q03.f3956c;
                            bArr3[i19] = (byte) ((i18 >> 18) | 240);
                            bArr3[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                            bArr3[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                            bArr3[i19 + 3] = (byte) ((i18 & 63) | 128);
                            Q03.f3956c = i19 + 4;
                            M0(N0() + 4);
                            i10 += 2;
                        } else {
                            O(63);
                            i10 = i17;
                        }
                    } else {
                        x Q04 = Q0(3);
                        byte[] bArr4 = Q04.f3954a;
                        int i20 = Q04.f3956c;
                        bArr4[i20] = (byte) ((charAt >> '\f') | 224);
                        bArr4[i20 + 1] = (byte) ((63 & (charAt >> 6)) | 128);
                        bArr4[i20 + 2] = (byte) ((charAt & '?') | 128);
                        Q04.f3956c = i20 + 3;
                        M0(N0() + 3);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }

    public f e1(int i10) {
        if (i10 < 128) {
            O(i10);
        } else if (i10 < 2048) {
            x Q0 = Q0(2);
            byte[] bArr = Q0.f3954a;
            int i11 = Q0.f3956c;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            Q0.f3956c = i11 + 2;
            M0(N0() + 2);
        } else if (55296 <= i10 && 57343 >= i10) {
            O(63);
        } else if (i10 < 65536) {
            x Q02 = Q0(3);
            byte[] bArr2 = Q02.f3954a;
            int i12 = Q02.f3956c;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            Q02.f3956c = i12 + 3;
            M0(N0() + 3);
        } else if (i10 <= 1114111) {
            x Q03 = Q0(4);
            byte[] bArr3 = Q03.f3954a;
            int i13 = Q03.f3956c;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            Q03.f3956c = i13 + 4;
            M0(N0() + 4);
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + cd.c.f(i10));
        }
        return this;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (N0() != fVar.N0()) {
                return false;
            }
            if (N0() != 0) {
                x xVar = this.f3906f;
                jc.l.c(xVar);
                x xVar2 = fVar.f3906f;
                jc.l.c(xVar2);
                int i10 = xVar.f3955b;
                int i11 = xVar2.f3955b;
                long j10 = 0;
                while (j10 < N0()) {
                    long min = Math.min(xVar.f3956c - i10, xVar2.f3956c - i11);
                    long j11 = 0;
                    while (j11 < min) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (xVar.f3954a[i10] != xVar2.f3954a[i11]) {
                            return false;
                        }
                        j11++;
                        i10 = i12;
                        i11 = i13;
                    }
                    if (i10 == xVar.f3956c) {
                        xVar = xVar.f3959f;
                        jc.l.c(xVar);
                        i10 = xVar.f3955b;
                    }
                    if (i11 == xVar2.f3956c) {
                        xVar2 = xVar2.f3959f;
                        jc.l.c(xVar2);
                        i11 = xVar2.f3955b;
                    }
                    j10 += min;
                }
            }
        }
        return true;
    }

    @Override // cd.g, cd.a0, java.io.Flushable
    public void flush() {
    }

    @Override // cd.h
    public f getBuffer() {
        return this;
    }

    public final long h() {
        long N0 = N0();
        if (N0 == 0) {
            return 0L;
        }
        x xVar = this.f3906f;
        jc.l.c(xVar);
        x xVar2 = xVar.f3960g;
        jc.l.c(xVar2);
        if (xVar2.f3956c < 8192 && xVar2.f3958e) {
            N0 -= r3 - xVar2.f3955b;
        }
        return N0;
    }

    public int h0(byte[] bArr, int i10, int i11) {
        jc.l.f(bArr, "sink");
        cd.c.b(bArr.length, i10, i11);
        x xVar = this.f3906f;
        if (xVar == null) {
            return -1;
        }
        int min = Math.min(i11, xVar.f3956c - xVar.f3955b);
        byte[] bArr2 = xVar.f3954a;
        int i12 = xVar.f3955b;
        wb.h.c(bArr2, bArr, i10, i12, i12 + min);
        xVar.f3955b += min;
        M0(N0() - min);
        if (xVar.f3955b != xVar.f3956c) {
            return min;
        }
        this.f3906f = xVar.b();
        y.b(xVar);
        return min;
    }

    public int hashCode() {
        x xVar = this.f3906f;
        if (xVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = xVar.f3956c;
            for (int i12 = xVar.f3955b; i12 < i11; i12++) {
                i10 = (i10 * 31) + xVar.f3954a[i12];
            }
            xVar = xVar.f3959f;
            jc.l.c(xVar);
        } while (xVar != this.f3906f);
        return i10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final f k() {
        f fVar = new f();
        if (N0() != 0) {
            x xVar = this.f3906f;
            jc.l.c(xVar);
            x d10 = xVar.d();
            fVar.f3906f = d10;
            d10.f3960g = d10;
            d10.f3959f = d10;
            for (x xVar2 = xVar.f3959f; xVar2 != xVar; xVar2 = xVar2.f3959f) {
                x xVar3 = d10.f3960g;
                jc.l.c(xVar3);
                jc.l.c(xVar2);
                xVar3.c(xVar2.d());
            }
            fVar.M0(N0());
        }
        return fVar;
    }

    public final a k0(a aVar) {
        jc.l.f(aVar, "unsafeCursor");
        return dd.a.a(this, aVar);
    }

    @Override // cd.h
    public h m0() {
        return p.d(new u(this));
    }

    @Override // cd.h
    public long q0(i iVar) {
        jc.l.f(iVar, "targetBytes");
        return U(iVar, 0L);
    }

    @Override // cd.h
    public i r(long j10) throws EOFException {
        if (!(j10 >= 0 && j10 <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (N0() < j10) {
            throw new EOFException();
        }
        if (j10 >= RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) {
            i P0 = P0((int) j10);
            a(j10);
            return P0;
        }
        return new i(P(j10));
    }

    @Override // cd.h
    public void r0(long j10) throws EOFException {
        if (this.f3907g < j10) {
            throw new EOFException();
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        jc.l.f(byteBuffer, "sink");
        x xVar = this.f3906f;
        if (xVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), xVar.f3956c - xVar.f3955b);
        byteBuffer.put(xVar.f3954a, xVar.f3955b, min);
        int i10 = xVar.f3955b + min;
        xVar.f3955b = i10;
        this.f3907g -= min;
        if (i10 == xVar.f3956c) {
            this.f3906f = xVar.b();
            y.b(xVar);
        }
        return min;
    }

    @Override // cd.h
    public byte readByte() throws EOFException {
        if (N0() != 0) {
            x xVar = this.f3906f;
            jc.l.c(xVar);
            int i10 = xVar.f3955b;
            int i11 = xVar.f3956c;
            int i12 = i10 + 1;
            byte b10 = xVar.f3954a[i10];
            M0(N0() - 1);
            if (i12 == i11) {
                this.f3906f = xVar.b();
                y.b(xVar);
            } else {
                xVar.f3955b = i12;
            }
            return b10;
        }
        throw new EOFException();
    }

    @Override // cd.h
    public void readFully(byte[] bArr) throws EOFException {
        jc.l.f(bArr, "sink");
        int i10 = 0;
        while (i10 < bArr.length) {
            int h02 = h0(bArr, i10, bArr.length - i10);
            if (h02 == -1) {
                throw new EOFException();
            }
            i10 += h02;
        }
    }

    @Override // cd.h
    public int readInt() throws EOFException {
        if (N0() >= 4) {
            x xVar = this.f3906f;
            jc.l.c(xVar);
            int i10 = xVar.f3955b;
            int i11 = xVar.f3956c;
            if (i11 - i10 < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = xVar.f3954a;
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            int i14 = ((bArr[i10] & 255) << 24) | ((bArr[i12] & 255) << 16);
            int i15 = i13 + 1;
            int i16 = i14 | ((bArr[i13] & 255) << 8);
            int i17 = i15 + 1;
            int i18 = i16 | (bArr[i15] & 255);
            M0(N0() - 4);
            if (i17 == i11) {
                this.f3906f = xVar.b();
                y.b(xVar);
            } else {
                xVar.f3955b = i17;
            }
            return i18;
        }
        throw new EOFException();
    }

    @Override // cd.h
    public long readLong() throws EOFException {
        if (N0() >= 8) {
            x xVar = this.f3906f;
            jc.l.c(xVar);
            int i10 = xVar.f3955b;
            int i11 = xVar.f3956c;
            if (i11 - i10 < 8) {
                return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            }
            byte[] bArr = xVar.f3954a;
            long j10 = (bArr[i10] & 255) << 56;
            long j11 = j10 | ((bArr[r6] & 255) << 48);
            long j12 = j11 | ((bArr[r1] & 255) << 40);
            int i12 = i10 + 1 + 1 + 1 + 1;
            long j13 = ((bArr[r6] & 255) << 32) | j12;
            long j14 = j13 | ((bArr[i12] & 255) << 24);
            long j15 = j14 | ((bArr[r8] & 255) << 16);
            long j16 = j15 | ((bArr[r1] & 255) << 8);
            int i13 = i12 + 1 + 1 + 1 + 1;
            long j17 = j16 | (bArr[r8] & 255);
            M0(N0() - 8);
            if (i13 == i11) {
                this.f3906f = xVar.b();
                y.b(xVar);
            } else {
                xVar.f3955b = i13;
            }
            return j17;
        }
        throw new EOFException();
    }

    @Override // cd.h
    public short readShort() throws EOFException {
        if (N0() >= 2) {
            x xVar = this.f3906f;
            jc.l.c(xVar);
            int i10 = xVar.f3955b;
            int i11 = xVar.f3956c;
            if (i11 - i10 < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = xVar.f3954a;
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            int i14 = ((bArr[i10] & 255) << 8) | (bArr[i12] & 255);
            M0(N0() - 2);
            if (i13 == i11) {
                this.f3906f = xVar.b();
                y.b(xVar);
            } else {
                xVar.f3955b = i13;
            }
            return (short) i14;
        }
        throw new EOFException();
    }

    @Override // cd.h
    public int t(s sVar) {
        jc.l.f(sVar, "options");
        int f10 = dd.a.f(this, sVar, false, 2, null);
        if (f10 == -1) {
            return -1;
        }
        a(sVar.d()[f10].y());
        return f10;
    }

    @Override // cd.c0
    public d0 timeout() {
        return d0.NONE;
    }

    public String toString() {
        return O0().toString();
    }

    public i w0() {
        return r(N0());
    }

    public final f x(f fVar, long j10, long j11) {
        jc.l.f(fVar, "out");
        cd.c.b(N0(), j10, j11);
        if (j11 != 0) {
            fVar.M0(fVar.N0() + j11);
            x xVar = this.f3906f;
            while (true) {
                jc.l.c(xVar);
                int i10 = xVar.f3956c;
                int i11 = xVar.f3955b;
                if (j10 < i10 - i11) {
                    break;
                }
                j10 -= i10 - i11;
                xVar = xVar.f3959f;
            }
            while (j11 > 0) {
                jc.l.c(xVar);
                x d10 = xVar.d();
                int i12 = d10.f3955b + ((int) j10);
                d10.f3955b = i12;
                d10.f3956c = Math.min(i12 + ((int) j11), d10.f3956c);
                x xVar2 = fVar.f3906f;
                if (xVar2 == null) {
                    d10.f3960g = d10;
                    d10.f3959f = d10;
                    fVar.f3906f = d10;
                } else {
                    jc.l.c(xVar2);
                    x xVar3 = xVar2.f3960g;
                    jc.l.c(xVar3);
                    xVar3.c(d10);
                }
                j11 -= d10.f3956c - d10.f3955b;
                xVar = xVar.f3959f;
                j10 = 0;
            }
        }
        return this;
    }

    @Override // cd.h
    public boolean y(long j10) {
        return this.f3907g >= j10;
    }

    @Override // cd.g
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public f v() {
        return this;
    }

    @Override // cd.h
    public boolean z0(long j10, i iVar) {
        jc.l.f(iVar, "bytes");
        return a0(j10, iVar, 0, iVar.y());
    }

    /* compiled from: Buffer.kt */
    /* loaded from: classes2.dex */
    public static final class b extends InputStream {
        public b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(f.this.N0(), Api.BaseClientBuilder.API_PRIORITY_OTHER);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (f.this.N0() > 0) {
                return f.this.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return f.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            jc.l.f(bArr, "sink");
            return f.this.h0(bArr, i10, i11);
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        jc.l.f(byteBuffer, "source");
        int remaining = byteBuffer.remaining();
        int i10 = remaining;
        while (i10 > 0) {
            x Q0 = Q0(1);
            int min = Math.min(i10, 8192 - Q0.f3956c);
            byteBuffer.get(Q0.f3954a, Q0.f3956c, min);
            i10 -= min;
            Q0.f3956c += min;
        }
        this.f3907g += remaining;
        return remaining;
    }

    @Override // cd.c0
    public long read(f fVar, long j10) {
        jc.l.f(fVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (N0() == 0) {
            return -1L;
        }
        if (j10 > N0()) {
            j10 = N0();
        }
        fVar.write(this, j10);
        return j10;
    }

    @Override // cd.a0
    public void write(f fVar, long j10) {
        x xVar;
        jc.l.f(fVar, "source");
        if (fVar != this) {
            cd.c.b(fVar.N0(), 0L, j10);
            while (j10 > 0) {
                x xVar2 = fVar.f3906f;
                jc.l.c(xVar2);
                int i10 = xVar2.f3956c;
                jc.l.c(fVar.f3906f);
                if (j10 < i10 - r2.f3955b) {
                    x xVar3 = this.f3906f;
                    if (xVar3 != null) {
                        jc.l.c(xVar3);
                        xVar = xVar3.f3960g;
                    } else {
                        xVar = null;
                    }
                    if (xVar != null && xVar.f3958e) {
                        if ((xVar.f3956c + j10) - (xVar.f3957d ? 0 : xVar.f3955b) <= RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) {
                            x xVar4 = fVar.f3906f;
                            jc.l.c(xVar4);
                            xVar4.g(xVar, (int) j10);
                            fVar.M0(fVar.N0() - j10);
                            M0(N0() + j10);
                            return;
                        }
                    }
                    x xVar5 = fVar.f3906f;
                    jc.l.c(xVar5);
                    fVar.f3906f = xVar5.e((int) j10);
                }
                x xVar6 = fVar.f3906f;
                jc.l.c(xVar6);
                long j11 = xVar6.f3956c - xVar6.f3955b;
                fVar.f3906f = xVar6.b();
                x xVar7 = this.f3906f;
                if (xVar7 == null) {
                    this.f3906f = xVar6;
                    xVar6.f3960g = xVar6;
                    xVar6.f3959f = xVar6;
                } else {
                    jc.l.c(xVar7);
                    x xVar8 = xVar7.f3960g;
                    jc.l.c(xVar8);
                    xVar8.c(xVar6).a();
                }
                fVar.M0(fVar.N0() - j11);
                M0(N0() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
