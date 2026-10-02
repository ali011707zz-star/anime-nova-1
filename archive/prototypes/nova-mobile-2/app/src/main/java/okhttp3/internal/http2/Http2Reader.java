package okhttp3.internal.http2;

import androidx.recyclerview.widget.RecyclerView;
import cd.c0;
import cd.d0;
import cd.f;
import cd.h;
import cd.i;
import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Http2Reader implements Closeable {
    public static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation;
    public final Hpack.Reader hpackReader;
    private final h source;

    /* loaded from: classes2.dex */
    public static final class ContinuationSource implements c0 {
        public byte flags;
        public int left;
        public int length;
        public short padding;
        private final h source;
        public int streamId;

        public ContinuationSource(h hVar) {
            this.source = hVar;
        }

        private void readContinuationHeader() throws IOException {
            int i10 = this.streamId;
            int readMedium = Http2Reader.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            byte readByte = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            Logger logger = Http2Reader.logger;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
            }
            int readInt = this.source.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
            this.streamId = readInt;
            if (readByte != 9) {
                throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
            }
            if (readInt != i10) {
                throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // cd.c0
        public long read(f fVar, long j10) throws IOException {
            while (true) {
                int i10 = this.left;
                if (i10 == 0) {
                    this.source.a(this.padding);
                    this.padding = (short) 0;
                    if ((this.flags & 4) != 0) {
                        return -1L;
                    }
                    readContinuationHeader();
                } else {
                    long read = this.source.read(fVar, Math.min(j10, i10));
                    if (read == -1) {
                        return -1L;
                    }
                    this.left = (int) (this.left - read);
                    return read;
                }
            }
        }

        @Override // cd.c0
        public d0 timeout() {
            return this.source.timeout();
        }
    }

    /* loaded from: classes2.dex */
    public interface Handler {
        void ackSettings();

        void alternateService(int i10, String str, i iVar, String str2, int i11, long j10);

        void data(boolean z10, int i10, h hVar, int i11) throws IOException;

        void goAway(int i10, ErrorCode errorCode, i iVar);

        void headers(boolean z10, int i10, int i11, List<Header> list);

        void ping(boolean z10, int i10, int i11);

        void priority(int i10, int i11, int i12, boolean z10);

        void pushPromise(int i10, int i11, List<Header> list) throws IOException;

        void rstStream(int i10, ErrorCode errorCode);

        void settings(boolean z10, Settings settings);

        void windowUpdate(int i10, long j10);
    }

    public Http2Reader(h hVar, boolean z10) {
        this.source = hVar;
        this.client = z10;
        ContinuationSource continuationSource = new ContinuationSource(hVar);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT, continuationSource);
    }

    public static int lengthWithoutPadding(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }

    private void readData(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if (!((b10 & 32) != 0)) {
            short readByte = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
            handler.data(z10, i11, this.source, lengthWithoutPadding(i10, b10, readByte));
            this.source.a(readByte);
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
    }

    private void readGoAway(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            int i12 = i10 - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            i iVar = i.f3917i;
            if (i12 > 0) {
                iVar = this.source.r(i12);
            }
            handler.goAway(readInt, fromHttp2, iVar);
            return;
        }
        throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
    }

    private List<Header> readHeaderBlock(int i10, short s10, byte b10, int i11) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        continuationSource.left = i10;
        continuationSource.length = i10;
        continuationSource.padding = s10;
        continuationSource.flags = b10;
        continuationSource.streamId = i11;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readHeaders(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            boolean z10 = (b10 & 1) != 0;
            short readByte = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
            if ((b10 & 32) != 0) {
                readPriority(handler, i11);
                i10 -= 5;
            }
            handler.headers(z10, i11, -1, readHeaderBlock(lengthWithoutPadding(i10, b10, readByte), readByte, b10, i11));
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    public static int readMedium(h hVar) throws IOException {
        return (hVar.readByte() & 255) | ((hVar.readByte() & 255) << 16) | ((hVar.readByte() & 255) << 8);
    }

    private void readPing(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            handler.ping((b10 & 1) != 0, this.source.readInt(), this.source.readInt());
            return;
        }
        throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
    }

    private void readPriority(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            readPriority(handler, i11);
            return;
        }
        throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
    }

    private void readPushPromise(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            short readByte = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
            handler.pushPromise(i11, this.source.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER, readHeaderBlock(lengthWithoutPadding(i10 - 4, b10, readByte), readByte, b10, i11));
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    private void readRstStream(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            int readInt = this.source.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            }
            handler.rstStream(i11, fromHttp2);
            return;
        }
        throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
    }

    private void readSettings(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 == 0) {
                handler.ackSettings();
                return;
            }
            throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        }
        if (i10 % 6 != 0) {
            throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        Settings settings = new Settings();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            int readShort = this.source.readShort() & 65535;
            int readInt = this.source.readInt();
            if (readShort != 2) {
                if (readShort == 3) {
                    readShort = 4;
                } else if (readShort == 4) {
                    readShort = 7;
                    if (readInt < 0) {
                        throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                } else if (readShort == 5 && (readInt < 16384 || readInt > 16777215)) {
                    throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                }
            } else if (readInt != 0 && readInt != 1) {
                throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
            }
            settings.set(readShort, readInt);
        }
        handler.settings(false, settings);
    }

    private void readWindowUpdate(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long readInt = this.source.readInt() & 2147483647L;
        if (readInt == 0) {
            throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(readInt));
        }
        handler.windowUpdate(i11, readInt);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public boolean nextFrame(boolean z10, Handler handler) throws IOException {
        try {
            this.source.r0(9L);
            int readMedium = readMedium(this.source);
            if (readMedium < 0 || readMedium > 16384) {
                throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(readMedium));
            }
            byte readByte = (byte) (this.source.readByte() & 255);
            if (z10 && readByte != 4) {
                throw Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            }
            byte readByte2 = (byte) (this.source.readByte() & 255);
            int readInt = this.source.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.frameLog(true, readInt, readMedium, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    readData(handler, readMedium, readByte2, readInt);
                    return true;
                case 1:
                    readHeaders(handler, readMedium, readByte2, readInt);
                    return true;
                case 2:
                    readPriority(handler, readMedium, readByte2, readInt);
                    return true;
                case 3:
                    readRstStream(handler, readMedium, readByte2, readInt);
                    return true;
                case 4:
                    readSettings(handler, readMedium, readByte2, readInt);
                    return true;
                case 5:
                    readPushPromise(handler, readMedium, readByte2, readInt);
                    return true;
                case 6:
                    readPing(handler, readMedium, readByte2, readInt);
                    return true;
                case 7:
                    readGoAway(handler, readMedium, readByte2, readInt);
                    return true;
                case 8:
                    readWindowUpdate(handler, readMedium, readByte2, readInt);
                    return true;
                default:
                    this.source.a(readMedium);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        h hVar = this.source;
        i iVar = Http2.CONNECTION_PREFACE;
        i r10 = hVar.r(iVar.y());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION %s", r10.m()));
        }
        if (!iVar.equals(r10)) {
            throw Http2.ioException("Expected a connection header but was %s", r10.C());
        }
    }

    private void readPriority(Handler handler, int i10) throws IOException {
        int readInt = this.source.readInt();
        handler.priority(i10, readInt & Api.BaseClientBuilder.API_PRIORITY_OTHER, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }
}
