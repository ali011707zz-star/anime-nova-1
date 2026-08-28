package okhttp3.internal.http2;

import cd.f;
import cd.g;
import com.google.android.gms.common.api.Api;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;

/* loaded from: classes2.dex */
final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final f hpackBuffer;
    public final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final g sink;

    public Http2Writer(g gVar, boolean z10) {
        this.sink = gVar;
        this.client = z10;
        f fVar = new f();
        this.hpackBuffer = fVar;
        this.hpackWriter = new Hpack.Writer(fVar);
        this.maxFrameSize = Http2.INITIAL_MAX_FRAME_SIZE;
    }

    private void writeContinuationFrames(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int min = (int) Math.min(this.maxFrameSize, j10);
            long j11 = min;
            j10 -= j11;
            frameHeader(i10, min, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.sink.write(this.hpackBuffer, j11);
        }
    }

    private static void writeMedium(g gVar, int i10) throws IOException {
        gVar.O((i10 >>> 16) & BaseProgressIndicator.MAX_ALPHA);
        gVar.O((i10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
        gVar.O(i10 & BaseProgressIndicator.MAX_ALPHA);
    }

    public synchronized void applyAndAckSettings(Settings settings) throws IOException {
        if (!this.closed) {
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, (byte) 4, (byte) 1);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public synchronized void connectionPreface() throws IOException {
        if (!this.closed) {
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.m()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.B());
                this.sink.flush();
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public synchronized void data(boolean z10, int i10, f fVar, int i11) throws IOException {
        if (!this.closed) {
            dataFrame(i10, z10 ? (byte) 1 : (byte) 0, fVar, i11);
        } else {
            throw new IOException("closed");
        }
    }

    public void dataFrame(int i10, byte b10, f fVar, int i11) throws IOException {
        frameHeader(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.sink.write(fVar, i11);
        }
    }

    public synchronized void flush() throws IOException {
        if (!this.closed) {
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public void frameHeader(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.frameLog(false, i10, i11, b10, b11));
        }
        int i12 = this.maxFrameSize;
        if (i11 > i12) {
            throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i10));
        }
        writeMedium(this.sink, i11);
        this.sink.O(b10 & 255);
        this.sink.O(b11 & 255);
        this.sink.D(i10 & Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public synchronized void goAway(int i10, ErrorCode errorCode, byte[] bArr) throws IOException {
        if (!this.closed) {
            if (errorCode.httpCode != -1) {
                frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.sink.D(i10);
                this.sink.D(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.sink.write(bArr);
                }
                this.sink.flush();
            } else {
                throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void headers(int i10, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(false, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public synchronized void ping(boolean z10, int i10, int i11) throws IOException {
        if (!this.closed) {
            frameHeader(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.sink.D(i10);
            this.sink.D(i11);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void pushPromise(int i10, int i11, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long N0 = this.hpackBuffer.N0();
            int min = (int) Math.min(this.maxFrameSize - 4, N0);
            long j10 = min;
            frameHeader(i10, min + 4, (byte) 5, N0 == j10 ? (byte) 4 : (byte) 0);
            this.sink.D(i11 & Api.BaseClientBuilder.API_PRIORITY_OTHER);
            this.sink.write(this.hpackBuffer, j10);
            if (N0 > j10) {
                writeContinuationFrames(i10, N0 - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void rstStream(int i10, ErrorCode errorCode) throws IOException {
        if (!this.closed) {
            if (errorCode.httpCode != -1) {
                frameHeader(i10, 4, (byte) 3, (byte) 0);
                this.sink.D(errorCode.httpCode);
                this.sink.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void settings(Settings settings) throws IOException {
        if (!this.closed) {
            int i10 = 0;
            frameHeader(0, settings.size() * 6, (byte) 4, (byte) 0);
            while (i10 < 10) {
                if (settings.isSet(i10)) {
                    this.sink.w(i10 == 4 ? 3 : i10 == 7 ? 4 : i10);
                    this.sink.D(settings.get(i10));
                }
                i10++;
            }
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void synReply(boolean z10, int i10, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(z10, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void synStream(boolean z10, int i10, int i11, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(z10, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void windowUpdate(int i10, long j10) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j10 != 0 && j10 <= 2147483647L) {
            frameHeader(i10, 4, (byte) 8, (byte) 0);
            this.sink.D((int) j10);
            this.sink.flush();
        } else {
            throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
    }

    public void headers(boolean z10, int i10, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long N0 = this.hpackBuffer.N0();
            int min = (int) Math.min(this.maxFrameSize, N0);
            long j10 = min;
            byte b10 = N0 == j10 ? (byte) 4 : (byte) 0;
            if (z10) {
                b10 = (byte) (b10 | 1);
            }
            frameHeader(i10, min, (byte) 1, b10);
            this.sink.write(this.hpackBuffer, j10);
            if (N0 > j10) {
                writeContinuationFrames(i10, N0 - j10);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
