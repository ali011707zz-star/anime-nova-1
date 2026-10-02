package cd;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource.kt */
/* loaded from: classes2.dex */
public final class n implements c0 {

    /* renamed from: f, reason: collision with root package name */
    public int f3928f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3929g;

    /* renamed from: h, reason: collision with root package name */
    public final h f3930h;

    /* renamed from: i, reason: collision with root package name */
    public final Inflater f3931i;

    public n(h hVar, Inflater inflater) {
        jc.l.f(hVar, "source");
        jc.l.f(inflater, "inflater");
        this.f3930h = hVar;
        this.f3931i = inflater;
    }

    public final long b(f fVar, long j10) throws IOException {
        jc.l.f(fVar, "sink");
        if (j10 >= 0) {
            if (!(!this.f3929g)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j10 == 0) {
                return 0L;
            }
            try {
                x Q0 = fVar.Q0(1);
                int min = (int) Math.min(j10, 8192 - Q0.f3956c);
                d();
                int inflate = this.f3931i.inflate(Q0.f3954a, Q0.f3956c, min);
                h();
                if (inflate > 0) {
                    Q0.f3956c += inflate;
                    long j11 = inflate;
                    fVar.M0(fVar.N0() + j11);
                    return j11;
                }
                if (Q0.f3955b == Q0.f3956c) {
                    fVar.f3906f = Q0.b();
                    y.b(Q0);
                }
                return 0L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f3929g) {
            return;
        }
        this.f3931i.end();
        this.f3929g = true;
        this.f3930h.close();
    }

    public final boolean d() throws IOException {
        if (!this.f3931i.needsInput()) {
            return false;
        }
        if (this.f3930h.M()) {
            return true;
        }
        x xVar = this.f3930h.getBuffer().f3906f;
        jc.l.c(xVar);
        int i10 = xVar.f3956c;
        int i11 = xVar.f3955b;
        int i12 = i10 - i11;
        this.f3928f = i12;
        this.f3931i.setInput(xVar.f3954a, i11, i12);
        return false;
    }

    public final void h() {
        int i10 = this.f3928f;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f3931i.getRemaining();
        this.f3928f -= remaining;
        this.f3930h.a(remaining);
    }

    @Override // cd.c0
    public long read(f fVar, long j10) throws IOException {
        jc.l.f(fVar, "sink");
        do {
            long b10 = b(fVar, j10);
            if (b10 > 0) {
                return b10;
            }
            if (this.f3931i.finished() || this.f3931i.needsDictionary()) {
                return -1L;
            }
        } while (!this.f3930h.M());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.f3930h.timeout();
    }
}
