package cd;

import java.io.OutputStream;

/* compiled from: JvmOkio.kt */
/* loaded from: classes2.dex */
public final class t implements a0 {

    /* renamed from: f, reason: collision with root package name */
    public final OutputStream f3938f;

    /* renamed from: g, reason: collision with root package name */
    public final d0 f3939g;

    public t(OutputStream outputStream, d0 d0Var) {
        jc.l.f(outputStream, "out");
        jc.l.f(d0Var, "timeout");
        this.f3938f = outputStream;
        this.f3939g = d0Var;
    }

    @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3938f.close();
    }

    @Override // cd.a0, java.io.Flushable
    public void flush() {
        this.f3938f.flush();
    }

    @Override // cd.a0
    public d0 timeout() {
        return this.f3939g;
    }

    public String toString() {
        return "sink(" + this.f3938f + ')';
    }

    @Override // cd.a0
    public void write(f fVar, long j10) {
        jc.l.f(fVar, "source");
        c.b(fVar.N0(), 0L, j10);
        while (j10 > 0) {
            this.f3939g.throwIfReached();
            x xVar = fVar.f3906f;
            jc.l.c(xVar);
            int min = (int) Math.min(j10, xVar.f3956c - xVar.f3955b);
            this.f3938f.write(xVar.f3954a, xVar.f3955b, min);
            xVar.f3955b += min;
            long j11 = min;
            j10 -= j11;
            fVar.M0(fVar.N0() - j11);
            if (xVar.f3955b == xVar.f3956c) {
                fVar.f3906f = xVar.b();
                y.b(xVar);
            }
        }
    }
}
