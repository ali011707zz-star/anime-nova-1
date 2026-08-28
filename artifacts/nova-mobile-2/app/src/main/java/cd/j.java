package cd;

import java.io.IOException;

/* compiled from: ForwardingSink.kt */
/* loaded from: classes2.dex */
public abstract class j implements a0 {
    private final a0 delegate;

    public j(a0 a0Var) {
        jc.l.f(a0Var, "delegate");
        this.delegate = a0Var;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final a0 m0deprecated_delegate() {
        return this.delegate;
    }

    @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final a0 delegate() {
        return this.delegate;
    }

    @Override // cd.a0, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // cd.a0
    public d0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // cd.a0
    public void write(f fVar, long j10) throws IOException {
        jc.l.f(fVar, "source");
        this.delegate.write(fVar, j10);
    }
}
