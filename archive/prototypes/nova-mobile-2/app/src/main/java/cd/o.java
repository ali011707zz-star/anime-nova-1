package cd;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: JvmOkio.kt */
/* loaded from: classes2.dex */
public final class o implements c0 {

    /* renamed from: f, reason: collision with root package name */
    public final InputStream f3932f;

    /* renamed from: g, reason: collision with root package name */
    public final d0 f3933g;

    public o(InputStream inputStream, d0 d0Var) {
        jc.l.f(inputStream, "input");
        jc.l.f(d0Var, "timeout");
        this.f3932f = inputStream;
        this.f3933g = d0Var;
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3932f.close();
    }

    @Override // cd.c0
    public long read(f fVar, long j10) {
        jc.l.f(fVar, "sink");
        if (j10 == 0) {
            return 0L;
        }
        if (j10 >= 0) {
            try {
                this.f3933g.throwIfReached();
                x Q0 = fVar.Q0(1);
                int read = this.f3932f.read(Q0.f3954a, Q0.f3956c, (int) Math.min(j10, 8192 - Q0.f3956c));
                if (read == -1) {
                    if (Q0.f3955b != Q0.f3956c) {
                        return -1L;
                    }
                    fVar.f3906f = Q0.b();
                    y.b(Q0);
                    return -1L;
                }
                Q0.f3956c += read;
                long j11 = read;
                fVar.M0(fVar.N0() + j11);
                return j11;
            } catch (AssertionError e10) {
                if (p.e(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.f3933g;
    }

    public String toString() {
        return "source(" + this.f3932f + ')';
    }
}
