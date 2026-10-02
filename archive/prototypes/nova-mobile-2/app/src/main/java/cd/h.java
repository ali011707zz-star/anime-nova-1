package cd;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: BufferedSource.kt */
/* loaded from: classes2.dex */
public interface h extends c0, ReadableByteChannel {
    long C0() throws IOException;

    String D0(Charset charset) throws IOException;

    long E(i iVar) throws IOException;

    InputStream F0();

    void G0(f fVar, long j10) throws IOException;

    String I() throws IOException;

    byte[] K() throws IOException;

    boolean M() throws IOException;

    byte[] P(long j10) throws IOException;

    long T(a0 a0Var) throws IOException;

    String W() throws IOException;

    long Y() throws IOException;

    void a(long j10) throws IOException;

    f c();

    String d0(long j10) throws IOException;

    f getBuffer();

    h m0();

    long q0(i iVar) throws IOException;

    i r(long j10) throws IOException;

    void r0(long j10) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    int t(s sVar) throws IOException;

    boolean y(long j10) throws IOException;

    boolean z0(long j10, i iVar) throws IOException;
}
