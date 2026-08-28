package cd;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: GzipSource.kt */
/* loaded from: classes2.dex */
public final class m implements c0 {

    /* renamed from: f, reason: collision with root package name */
    public byte f3923f;

    /* renamed from: g, reason: collision with root package name */
    public final w f3924g;

    /* renamed from: h, reason: collision with root package name */
    public final Inflater f3925h;

    /* renamed from: i, reason: collision with root package name */
    public final n f3926i;

    /* renamed from: j, reason: collision with root package name */
    public final CRC32 f3927j;

    public m(c0 c0Var) {
        jc.l.f(c0Var, "source");
        w wVar = new w(c0Var);
        this.f3924g = wVar;
        Inflater inflater = new Inflater(true);
        this.f3925h = inflater;
        this.f3926i = new n(wVar, inflater);
        this.f3927j = new CRC32();
    }

    public final void b(String str, int i10, int i11) {
        if (i11 == i10) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3));
        jc.l.e(format, "java.lang.String.format(this, *args)");
        throw new IOException(format);
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3926i.close();
    }

    public final void d() throws IOException {
        this.f3924g.r0(10L);
        byte G = this.f3924g.f3949f.G(3L);
        boolean z10 = ((G >> 1) & 1) == 1;
        if (z10) {
            k(this.f3924g.f3949f, 0L, 10L);
        }
        b("ID1ID2", 8075, this.f3924g.readShort());
        this.f3924g.a(8L);
        if (((G >> 2) & 1) == 1) {
            this.f3924g.r0(2L);
            if (z10) {
                k(this.f3924g.f3949f, 0L, 2L);
            }
            long H0 = this.f3924g.f3949f.H0();
            this.f3924g.r0(H0);
            if (z10) {
                k(this.f3924g.f3949f, 0L, H0);
            }
            this.f3924g.a(H0);
        }
        if (((G >> 3) & 1) == 1) {
            long b10 = this.f3924g.b((byte) 0);
            if (b10 != -1) {
                if (z10) {
                    k(this.f3924g.f3949f, 0L, b10 + 1);
                }
                this.f3924g.a(b10 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((G >> 4) & 1) == 1) {
            long b11 = this.f3924g.b((byte) 0);
            if (b11 != -1) {
                if (z10) {
                    k(this.f3924g.f3949f, 0L, b11 + 1);
                }
                this.f3924g.a(b11 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z10) {
            b("FHCRC", this.f3924g.F(), (short) this.f3927j.getValue());
            this.f3927j.reset();
        }
    }

    public final void h() throws IOException {
        b("CRC", this.f3924g.z(), (int) this.f3927j.getValue());
        b("ISIZE", this.f3924g.z(), (int) this.f3925h.getBytesWritten());
    }

    public final void k(f fVar, long j10, long j11) {
        x xVar = fVar.f3906f;
        jc.l.c(xVar);
        while (true) {
            int i10 = xVar.f3956c;
            int i11 = xVar.f3955b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            xVar = xVar.f3959f;
            jc.l.c(xVar);
        }
        while (j11 > 0) {
            int min = (int) Math.min(xVar.f3956c - r7, j11);
            this.f3927j.update(xVar.f3954a, (int) (xVar.f3955b + j10), min);
            j11 -= min;
            xVar = xVar.f3959f;
            jc.l.c(xVar);
            j10 = 0;
        }
    }

    @Override // cd.c0
    public long read(f fVar, long j10) throws IOException {
        jc.l.f(fVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f3923f == 0) {
            d();
            this.f3923f = (byte) 1;
        }
        if (this.f3923f == 1) {
            long N0 = fVar.N0();
            long read = this.f3926i.read(fVar, j10);
            if (read != -1) {
                k(fVar, N0, read);
                return read;
            }
            this.f3923f = (byte) 2;
        }
        if (this.f3923f == 2) {
            h();
            this.f3923f = (byte) 3;
            if (!this.f3924g.M()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.f3924g.timeout();
    }
}
