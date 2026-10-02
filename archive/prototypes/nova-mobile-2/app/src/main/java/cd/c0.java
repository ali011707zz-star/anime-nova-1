package cd;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: Source.kt */
/* loaded from: classes2.dex */
public interface c0 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(f fVar, long j10) throws IOException;

    d0 timeout();
}
