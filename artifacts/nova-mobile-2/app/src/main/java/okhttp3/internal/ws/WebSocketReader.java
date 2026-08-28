package okhttp3.internal.ws;

import cd.f;
import cd.h;
import cd.i;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class WebSocketReader {
    public boolean closed;
    public final FrameCallback frameCallback;
    public long frameLength;
    public final boolean isClient;
    public boolean isControlFrame;
    public boolean isFinalFrame;
    private final f.a maskCursor;
    private final byte[] maskKey;
    public int opcode;
    public final h source;
    private final f controlFrameBuffer = new f();
    private final f messageFrameBuffer = new f();

    /* loaded from: classes2.dex */
    public interface FrameCallback {
        void onReadClose(int i10, String str);

        void onReadMessage(i iVar) throws IOException;

        void onReadMessage(String str) throws IOException;

        void onReadPing(i iVar);

        void onReadPong(i iVar);
    }

    public WebSocketReader(boolean z10, h hVar, FrameCallback frameCallback) {
        if (hVar == null) {
            throw new NullPointerException("source == null");
        }
        if (frameCallback != null) {
            this.isClient = z10;
            this.source = hVar;
            this.frameCallback = frameCallback;
            this.maskKey = z10 ? null : new byte[4];
            this.maskCursor = z10 ? null : new f.a();
            return;
        }
        throw new NullPointerException("frameCallback == null");
    }

    private void readControlFrame() throws IOException {
        String str;
        long j10 = this.frameLength;
        if (j10 > 0) {
            this.source.G0(this.controlFrameBuffer, j10);
            if (!this.isClient) {
                this.controlFrameBuffer.k0(this.maskCursor);
                this.maskCursor.h(0L);
                WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                short s10 = 1005;
                long N0 = this.controlFrameBuffer.N0();
                if (N0 != 1) {
                    if (N0 != 0) {
                        s10 = this.controlFrameBuffer.readShort();
                        str = this.controlFrameBuffer.J0();
                        String closeCodeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(s10);
                        if (closeCodeExceptionMessage != null) {
                            throw new ProtocolException(closeCodeExceptionMessage);
                        }
                    } else {
                        str = "";
                    }
                    this.frameCallback.onReadClose(s10, str);
                    this.closed = true;
                    return;
                }
                throw new ProtocolException("Malformed close payload length of 1.");
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.w0());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.w0());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
        }
    }

    /* JADX WARN: Finally extract failed */
    private void readHeader() throws IOException {
        if (!this.closed) {
            long timeoutNanos = this.source.timeout().timeoutNanos();
            this.source.timeout().clearTimeout();
            try {
                int readByte = this.source.readByte() & 255;
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                this.opcode = readByte & 15;
                boolean z10 = (readByte & 128) != 0;
                this.isFinalFrame = z10;
                boolean z11 = (readByte & 8) != 0;
                this.isControlFrame = z11;
                if (z11 && !z10) {
                    throw new ProtocolException("Control frames must be final.");
                }
                boolean z12 = (readByte & 64) != 0;
                boolean z13 = (readByte & 32) != 0;
                boolean z14 = (readByte & 16) != 0;
                if (!z12 && !z13 && !z14) {
                    int readByte2 = this.source.readByte() & 255;
                    boolean z15 = (readByte2 & 128) != 0;
                    if (z15 == this.isClient) {
                        throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
                    }
                    long j10 = readByte2 & 127;
                    this.frameLength = j10;
                    if (j10 == 126) {
                        this.frameLength = this.source.readShort() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                    } else if (j10 == 127) {
                        long readLong = this.source.readLong();
                        this.frameLength = readLong;
                        if (readLong < 0) {
                            throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                        }
                    }
                    if (this.isControlFrame && this.frameLength > 125) {
                        throw new ProtocolException("Control frame must be less than 125B.");
                    }
                    if (z15) {
                        this.source.readFully(this.maskKey);
                        return;
                    }
                    return;
                }
                throw new ProtocolException("Reserved flags are unsupported.");
            } catch (Throwable th) {
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                throw th;
            }
        }
        throw new IOException("closed");
    }

    private void readMessage() throws IOException {
        while (!this.closed) {
            long j10 = this.frameLength;
            if (j10 > 0) {
                this.source.G0(this.messageFrameBuffer, j10);
                if (!this.isClient) {
                    this.messageFrameBuffer.k0(this.maskCursor);
                    this.maskCursor.h(this.messageFrameBuffer.N0() - this.frameLength);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.opcode));
            }
        }
        throw new IOException("closed");
    }

    private void readMessageFrame() throws IOException {
        int i10 = this.opcode;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i10));
        }
        readMessage();
        if (i10 == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.J0());
        } else {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.w0());
        }
    }

    private void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }

    public void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
