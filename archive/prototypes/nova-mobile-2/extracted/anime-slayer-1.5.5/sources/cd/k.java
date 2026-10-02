package cd;

import java.io.IOException;

/* compiled from: ForwardingSource.kt */
/* loaded from: classes2.dex */
public abstract class k implements c0 {
    private final c0 delegate;

    public k(c0 c0Var) {
        jc.l.f(c0Var, "delegate");
        this.delegate = c0Var;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final c0 m1deprecated_delegate() {
        return this.delegate;
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final c0 delegate() {
        return this.delegate;
    }

    @Override // cd.c0
    public long read(f fVar, long j10) throws IOException {
        jc.l.f(fVar, "sink");
        return this.delegate.read(fVar, j10);
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
