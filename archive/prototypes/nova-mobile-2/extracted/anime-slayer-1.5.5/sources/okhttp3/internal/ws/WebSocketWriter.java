package okhttp3.internal.ws;

import cd.a0;
import cd.d0;
import cd.f;
import cd.g;
import cd.i;
import java.io.IOException;
import java.util.Random;

/* loaded from: classes2.dex */
final class WebSocketWriter {
    public boolean activeWriter;
    public final f buffer = new f();
    public final FrameSink frameSink = new FrameSink();
    public final boolean isClient;
    private final f.a maskCursor;
    private final byte[] maskKey;
    public final Random random;
    public final g sink;
    public final f sinkBuffer;
    public boolean writerClosed;

    /* loaded from: classes2.dex */
    public final class FrameSink implements a0 {
        public boolean closed;
        public long contentLength;
        public int formatOpcode;
        public boolean isFirstFrame;

        public FrameSink() {
        }

        @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                WebSocketWriter webSocketWriter = WebSocketWriter.this;
                webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.N0(), this.isFirstFrame, true);
                this.closed = true;
                WebSocketWriter.this.activeWriter = false;
                return;
            }
            throw new IOException("closed");
        }

        @Override // cd.a0, java.io.Flushable
        public void flush() throws IOException {
            if (!this.closed) {
                WebSocketWriter webSocketWriter = WebSocketWriter.this;
                webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.N0(), this.isFirstFrame, false);
                this.isFirstFrame = false;
                return;
            }
            throw new IOException("closed");
        }

        @Override // cd.a0
        public d0 timeout() {
            return WebSocketWriter.this.sink.timeout();
        }

        @Override // cd.a0
        public void write(f fVar, long j10) throws IOException {
            if (!this.closed) {
                WebSocketWriter.this.buffer.write(fVar, j10);
                boolean z10 = this.isFirstFrame && this.contentLength != -1 && WebSocketWriter.this.buffer.N0() > this.contentLength - 8192;
                long h10 = WebSocketWriter.this.buffer.h();
                if (h10 <= 0 || z10) {
                    return;
                }
                WebSocketWriter.this.writeMessageFrame(this.formatOpcode, h10, this.isFirstFrame, false);
                this.isFirstFrame = false;
                return;
            }
            throw new IOException("closed");
        }
    }

    public WebSocketWriter(boolean z10, g gVar, Random random) {
        if (gVar == null) {
            throw new NullPointerException("sink == null");
        }
        if (random != null) {
            this.isClient = z10;
            this.sink = gVar;
            this.sinkBuffer = gVar.c();
            this.random = random;
            this.maskKey = z10 ? new byte[4] : null;
            this.maskCursor = z10 ? new f.a() : null;
            return;
        }
        throw new NullPointerException("random == null");
    }

    private void writeControlFrame(int i10, i iVar) throws IOException {
        if (!this.writerClosed) {
            int y10 = iVar.y();
            if (y10 <= 125) {
                this.sinkBuffer.O(i10 | 128);
                if (this.isClient) {
                    this.sinkBuffer.O(y10 | 128);
                    this.random.nextBytes(this.maskKey);
                    this.sinkBuffer.write(this.maskKey);
                    if (y10 > 0) {
                        long N0 = this.sinkBuffer.N0();
                        this.sinkBuffer.B(iVar);
                        this.sinkBuffer.k0(this.maskCursor);
                        this.maskCursor.h(N0);
                        WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                        this.maskCursor.close();
                    }
                } else {
                    this.sinkBuffer.O(y10);
                    this.sinkBuffer.B(iVar);
                }
                this.sink.flush();
                return;
            }
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        throw new IOException("closed");
    }

    public a0 newMessageSink(int i10, long j10) {
        if (!this.activeWriter) {
            this.activeWriter = true;
            FrameSink frameSink = this.frameSink;
            frameSink.formatOpcode = i10;
            frameSink.contentLength = j10;
            frameSink.isFirstFrame = true;
            frameSink.closed = false;
            return frameSink;
        }
        throw new IllegalStateException("Another message writer is active. Did you call close()?");
    }

    public void writeClose(int i10, i iVar) throws IOException {
        i iVar2 = i.f3917i;
        if (i10 != 0 || iVar != null) {
            if (i10 != 0) {
                WebSocketProtocol.validateCloseCode(i10);
            }
            f fVar = new f();
            fVar.w(i10);
            if (iVar != null) {
                fVar.B(iVar);
            }
            iVar2 = fVar.w0();
        }
        try {
            writeControlFrame(8, iVar2);
        } finally {
            this.writerClosed = true;
        }
    }

    public void writeMessageFrame(int i10, long j10, boolean z10, boolean z11) throws IOException {
        if (!this.writerClosed) {
            if (!z10) {
                i10 = 0;
            }
            if (z11) {
                i10 |= 128;
            }
            this.sinkBuffer.O(i10);
            int i11 = this.isClient ? 128 : 0;
            if (j10 <= 125) {
                this.sinkBuffer.O(((int) j10) | i11);
            } else if (j10 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.sinkBuffer.O(i11 | 126);
                this.sinkBuffer.w((int) j10);
            } else {
                this.sinkBuffer.O(i11 | 127);
                this.sinkBuffer.Y0(j10);
            }
            if (this.isClient) {
                this.random.nextBytes(this.maskKey);
                this.sinkBuffer.write(this.maskKey);
                if (j10 > 0) {
                    long N0 = this.sinkBuffer.N0();
                    this.sinkBuffer.write(this.buffer, j10);
                    this.sinkBuffer.k0(this.maskCursor);
                    this.maskCursor.h(N0);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            } else {
                this.sinkBuffer.write(this.buffer, j10);
            }
            this.sink.v();
            return;
        }
        throw new IOException("closed");
    }

    public void writePing(i iVar) throws IOException {
        writeControlFrame(9, iVar);
    }

    public void writePong(i iVar) throws IOException {
        writeControlFrame(10, iVar);
    }
}
