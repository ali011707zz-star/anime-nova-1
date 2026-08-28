package cd;

/* compiled from: Okio.kt */
/* loaded from: classes2.dex */
public final class e implements a0 {
    @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // cd.a0, java.io.Flushable
    public void flush() {
    }

    @Override // cd.a0
    public d0 timeout() {
        return d0.NONE;
    }

    @Override // cd.a0
    public void write(f fVar, long j10) {
        jc.l.f(fVar, "source");
        fVar.a(j10);
    }
}
