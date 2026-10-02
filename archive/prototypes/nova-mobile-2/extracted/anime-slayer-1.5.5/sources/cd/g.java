package cd;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* compiled from: BufferedSink.kt */
/* loaded from: classes2.dex */
public interface g extends a0, WritableByteChannel {
    g B(i iVar) throws IOException;

    g D(int i10) throws IOException;

    g O(int i10) throws IOException;

    g X() throws IOException;

    long Z(c0 c0Var) throws IOException;

    f c();

    @Override // cd.a0, java.io.Flushable
    void flush() throws IOException;

    g m(String str, int i10, int i11) throws IOException;

    g p(long j10) throws IOException;

    g t0(String str) throws IOException;

    g u0(long j10) throws IOException;

    g v() throws IOException;

    g w(int i10) throws IOException;

    g write(byte[] bArr) throws IOException;

    g write(byte[] bArr, int i10, int i11) throws IOException;
}
