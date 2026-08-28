package okhttp3.internal.http2;

import cd.a0;
import cd.c0;
import cd.d;
import cd.d0;
import cd.f;
import cd.h;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;

/* loaded from: classes.dex */
public final class Http2Stream {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public long bytesLeftInWriteWindow;
    public final Http2Connection connection;
    public ErrorCode errorCode;
    private boolean hasResponseHeaders;
    private Header.Listener headersListener;
    private final Deque<Headers> headersQueue;

    /* renamed from: id, reason: collision with root package name */
    public final int f11870id;
    public final StreamTimeout readTimeout;
    public final FramingSink sink;
    private final FramingSource source;
    public long unacknowledgedBytesRead = 0;
    public final StreamTimeout writeTimeout;

    /* loaded from: classes2.dex */
    public final class FramingSink implements a0 {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final long EMIT_BUFFER_SIZE = 16384;
        public boolean closed;
        public boolean finished;
        private final f sendBuffer = new f();

        public FramingSink() {
        }

        private void emitFrame(boolean z10) throws IOException {
            Http2Stream http2Stream;
            long min;
            Http2Stream http2Stream2;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (true) {
                    try {
                        http2Stream = Http2Stream.this;
                        if (http2Stream.bytesLeftInWriteWindow > 0 || this.finished || this.closed || http2Stream.errorCode != null) {
                            break;
                        } else {
                            http2Stream.waitForIo();
                        }
                    } finally {
                    }
                }
                http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                min = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.N0());
                http2Stream2 = Http2Stream.this;
                http2Stream2.bytesLeftInWriteWindow -= min;
            }
            http2Stream2.writeTimeout.enter();
            try {
                Http2Stream http2Stream3 = Http2Stream.this;
                http2Stream3.connection.writeData(http2Stream3.f11870id, z10 && min == this.sendBuffer.N0(), this.sendBuffer, min);
            } finally {
            }
        }

        @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                if (this.closed) {
                    return;
                }
                if (!Http2Stream.this.sink.finished) {
                    if (this.sendBuffer.N0() > 0) {
                        while (this.sendBuffer.N0() > 0) {
                            emitFrame(true);
                        }
                    } else {
                        Http2Stream http2Stream = Http2Stream.this;
                        http2Stream.connection.writeData(http2Stream.f11870id, true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.closed = true;
                }
                Http2Stream.this.connection.flush();
                Http2Stream.this.cancelStreamIfNecessary();
            }
        }

        @Override // cd.a0, java.io.Flushable
        public void flush() throws IOException {
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.N0() > 0) {
                emitFrame(false);
                Http2Stream.this.connection.flush();
            }
        }

        @Override // cd.a0
        public d0 timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // cd.a0
        public void write(f fVar, long j10) throws IOException {
            this.sendBuffer.write(fVar, j10);
            while (this.sendBuffer.N0() >= EMIT_BUFFER_SIZE) {
                emitFrame(false);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class FramingSource implements c0 {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public boolean closed;
        public boolean finished;
        private final long maxByteCount;
        private final f receiveBuffer = new f();
        private final f readBuffer = new f();

        public FramingSource(long j10) {
            this.maxByteCount = j10;
        }

        private void updateConnectionFlowControl(long j10) {
            Http2Stream.this.connection.updateConnectionFlowControl(j10);
        }

        @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long N0;
            Header.Listener listener;
            ArrayList arrayList;
            synchronized (Http2Stream.this) {
                this.closed = true;
                N0 = this.readBuffer.N0();
                this.readBuffer.b();
                listener = null;
                if (Http2Stream.this.headersQueue.isEmpty() || Http2Stream.this.headersListener == null) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList(Http2Stream.this.headersQueue);
                    Http2Stream.this.headersQueue.clear();
                    listener = Http2Stream.this.headersListener;
                    arrayList = arrayList2;
                }
                Http2Stream.this.notifyAll();
            }
            if (N0 > 0) {
                updateConnectionFlowControl(N0);
            }
            Http2Stream.this.cancelStreamIfNecessary();
            if (listener != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    listener.onHeaders((Headers) it2.next());
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d3, code lost:
        
            throw new java.io.IOException("stream closed");
         */
        @Override // cd.c0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long read(f fVar, long j10) throws IOException {
            ErrorCode errorCode;
            long read;
            Headers headers;
            Header.Listener listener;
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            while (true) {
                synchronized (Http2Stream.this) {
                    Http2Stream.this.readTimeout.enter();
                    try {
                        Http2Stream http2Stream = Http2Stream.this;
                        errorCode = http2Stream.errorCode;
                        if (errorCode == null) {
                            errorCode = null;
                        }
                        if (!this.closed) {
                            if (!http2Stream.headersQueue.isEmpty() && Http2Stream.this.headersListener != null) {
                                headers = (Headers) Http2Stream.this.headersQueue.removeFirst();
                                listener = Http2Stream.this.headersListener;
                            } else if (this.readBuffer.N0() > 0) {
                                f fVar2 = this.readBuffer;
                                read = fVar2.read(fVar, Math.min(j10, fVar2.N0()));
                                Http2Stream http2Stream2 = Http2Stream.this;
                                long j11 = http2Stream2.unacknowledgedBytesRead + read;
                                http2Stream2.unacknowledgedBytesRead = j11;
                                if (errorCode == null && j11 >= http2Stream2.connection.okHttpSettings.getInitialWindowSize() / 2) {
                                    Http2Stream http2Stream3 = Http2Stream.this;
                                    http2Stream3.connection.writeWindowUpdateLater(http2Stream3.f11870id, http2Stream3.unacknowledgedBytesRead);
                                    Http2Stream.this.unacknowledgedBytesRead = 0L;
                                }
                                headers = null;
                                listener = null;
                                if (headers == null || listener == null) {
                                    break;
                                }
                                listener.onHeaders(headers);
                            } else if (this.finished || errorCode != null) {
                                headers = null;
                                listener = null;
                            } else {
                                Http2Stream.this.waitForIo();
                                Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                            }
                            read = -1;
                            if (headers == null) {
                                break;
                            }
                            break;
                        }
                        break;
                    } finally {
                    }
                }
            }
            if (read != -1) {
                updateConnectionFlowControl(read);
                return read;
            }
            if (errorCode == null) {
                return -1L;
            }
            throw new StreamResetException(errorCode);
        }

        public void receive(h hVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            long j11;
            while (j10 > 0) {
                synchronized (Http2Stream.this) {
                    z10 = this.finished;
                    z11 = true;
                    z12 = this.readBuffer.N0() + j10 > this.maxByteCount;
                }
                if (z12) {
                    hVar.a(j10);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    hVar.a(j10);
                    return;
                }
                long read = hVar.read(this.receiveBuffer, j10);
                if (read != -1) {
                    j10 -= read;
                    synchronized (Http2Stream.this) {
                        if (this.closed) {
                            j11 = this.receiveBuffer.N0();
                            this.receiveBuffer.b();
                        } else {
                            if (this.readBuffer.N0() != 0) {
                                z11 = false;
                            }
                            this.readBuffer.Z(this.receiveBuffer);
                            if (z11) {
                                Http2Stream.this.notifyAll();
                            }
                            j11 = 0;
                        }
                    }
                    if (j11 > 0) {
                        updateConnectionFlowControl(j11);
                    }
                } else {
                    throw new EOFException();
                }
            }
        }

        @Override // cd.c0
        public d0 timeout() {
            return Http2Stream.this.readTimeout;
        }
    }

    /* loaded from: classes2.dex */
    public class StreamTimeout extends d {
        public StreamTimeout() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // cd.d
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // cd.d
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.connection.sendDegradedPingLater();
        }
    }

    public Http2Stream(int i10, Http2Connection http2Connection, boolean z10, boolean z11, @Nullable Headers headers) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.headersQueue = arrayDeque;
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        this.errorCode = null;
        if (http2Connection != null) {
            this.f11870id = i10;
            this.connection = http2Connection;
            this.bytesLeftInWriteWindow = http2Connection.peerSettings.getInitialWindowSize();
            FramingSource framingSource = new FramingSource(http2Connection.okHttpSettings.getInitialWindowSize());
            this.source = framingSource;
            FramingSink framingSink = new FramingSink();
            this.sink = framingSink;
            framingSource.finished = z11;
            framingSink.finished = z10;
            if (headers != null) {
                arrayDeque.add(headers);
            }
            if (isLocallyInitiated() && headers != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            if (!isLocallyInitiated() && headers == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
            return;
        }
        throw new NullPointerException("connection == null");
    }

    private boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.finished && this.sink.finished) {
                return false;
            }
            this.errorCode = errorCode;
            notifyAll();
            this.connection.removeStream(this.f11870id);
            return true;
        }
    }

    public void addBytesToWriteWindow(long j10) {
        this.bytesLeftInWriteWindow += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public void cancelStreamIfNecessary() throws IOException {
        boolean z10;
        boolean isOpen;
        synchronized (this) {
            FramingSource framingSource = this.source;
            if (!framingSource.finished && framingSource.closed) {
                FramingSink framingSink = this.sink;
                if (framingSink.finished || framingSink.closed) {
                    z10 = true;
                    isOpen = isOpen();
                }
            }
            z10 = false;
            isOpen = isOpen();
        }
        if (z10) {
            close(ErrorCode.CANCEL);
        } else {
            if (isOpen) {
                return;
            }
            this.connection.removeStream(this.f11870id);
        }
    }

    public void checkOutNotClosed() throws IOException {
        FramingSink framingSink = this.sink;
        if (!framingSink.closed) {
            if (!framingSink.finished) {
                if (this.errorCode != null) {
                    throw new StreamResetException(this.errorCode);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public void close(ErrorCode errorCode) throws IOException {
        if (closeInternal(errorCode)) {
            this.connection.writeSynReset(this.f11870id, errorCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.f11870id, errorCode);
        }
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public int getId() {
        return this.f11870id;
    }

    public a0 getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public c0 getSource() {
        return this.source;
    }

    public boolean isLocallyInitiated() {
        return this.connection.client == ((this.f11870id & 1) == 1);
    }

    public synchronized boolean isOpen() {
        if (this.errorCode != null) {
            return false;
        }
        FramingSource framingSource = this.source;
        if (framingSource.finished || framingSource.closed) {
            FramingSink framingSink = this.sink;
            if (framingSink.finished || framingSink.closed) {
                if (this.hasResponseHeaders) {
                    return false;
                }
            }
        }
        return true;
    }

    public d0 readTimeout() {
        return this.readTimeout;
    }

    public void receiveData(h hVar, int i10) throws IOException {
        this.source.receive(hVar, i10);
    }

    public void receiveFin() {
        boolean isOpen;
        synchronized (this) {
            this.source.finished = true;
            isOpen = isOpen();
            notifyAll();
        }
        if (isOpen) {
            return;
        }
        this.connection.removeStream(this.f11870id);
    }

    public void receiveHeaders(List<Header> list) {
        boolean isOpen;
        synchronized (this) {
            this.hasResponseHeaders = true;
            this.headersQueue.add(Util.toHeaders(list));
            isOpen = isOpen();
            notifyAll();
        }
        if (isOpen) {
            return;
        }
        this.connection.removeStream(this.f11870id);
    }

    public synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    public synchronized void setHeadersListener(Header.Listener listener) {
        this.headersListener = listener;
        if (!this.headersQueue.isEmpty() && listener != null) {
            notifyAll();
        }
    }

    public synchronized Headers takeHeaders() throws IOException {
        this.readTimeout.enter();
        while (this.headersQueue.isEmpty() && this.errorCode == null) {
            try {
                waitForIo();
            } catch (Throwable th) {
                this.readTimeout.exitAndThrowIfTimedOut();
                throw th;
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        if (!this.headersQueue.isEmpty()) {
        } else {
            throw new StreamResetException(this.errorCode);
        }
        return this.headersQueue.removeFirst();
    }

    public void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public void writeHeaders(List<Header> list, boolean z10) throws IOException {
        boolean z11;
        boolean z12;
        boolean z13;
        if (list != null) {
            synchronized (this) {
                z11 = true;
                this.hasResponseHeaders = true;
                if (z10) {
                    z12 = false;
                    z13 = false;
                } else {
                    this.sink.finished = true;
                    z12 = true;
                    z13 = true;
                }
            }
            if (!z12) {
                synchronized (this.connection) {
                    if (this.connection.bytesLeftInWriteWindow != 0) {
                        z11 = false;
                    }
                }
                z12 = z11;
            }
            this.connection.writeSynReply(this.f11870id, z13, list);
            if (z12) {
                this.connection.flush();
                return;
            }
            return;
        }
        throw new NullPointerException("headers == null");
    }

    public d0 writeTimeout() {
        return this.writeTimeout;
    }
}
