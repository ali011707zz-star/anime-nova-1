package okhttp3.internal.http1;

import cd.a0;
import cd.c0;
import cd.d0;
import cd.f;
import cd.g;
import cd.h;
import cd.l;
import cd.p;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public final class Http1Codec implements HttpCodec {
    private static final int HEADER_LIMIT = 262144;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    public final OkHttpClient client;
    public final g sink;
    public final h source;
    public final StreamAllocation streamAllocation;
    public int state = 0;
    private long headerLimit = 262144;

    /* loaded from: classes2.dex */
    public abstract class AbstractSource implements c0 {
        public long bytesRead;
        public boolean closed;
        public final l timeout;

        private AbstractSource() {
            this.timeout = new l(Http1Codec.this.source.timeout());
            this.bytesRead = 0L;
        }

        @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close() throws IOException;

        public final void endOfInput(boolean z10, IOException iOException) throws IOException {
            Http1Codec http1Codec = Http1Codec.this;
            int i10 = http1Codec.state;
            if (i10 == 6) {
                return;
            }
            if (i10 == 5) {
                http1Codec.detachTimeout(this.timeout);
                Http1Codec http1Codec2 = Http1Codec.this;
                http1Codec2.state = 6;
                StreamAllocation streamAllocation = http1Codec2.streamAllocation;
                if (streamAllocation != null) {
                    streamAllocation.streamFinished(!z10, http1Codec2, this.bytesRead, iOException);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + Http1Codec.this.state);
        }

        @Override // cd.c0
        public long read(f fVar, long j10) throws IOException {
            try {
                long read = Http1Codec.this.source.read(fVar, j10);
                if (read > 0) {
                    this.bytesRead += read;
                }
                return read;
            } catch (IOException e10) {
                endOfInput(false, e10);
                throw e10;
            }
        }

        @Override // cd.c0
        public d0 timeout() {
            return this.timeout;
        }
    }

    /* loaded from: classes2.dex */
    public final class ChunkedSink implements a0 {
        private boolean closed;
        private final l timeout;

        public ChunkedSink() {
            this.timeout = new l(Http1Codec.this.sink.timeout());
        }

        @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1Codec.this.sink.t0("0\r\n\r\n");
            Http1Codec.this.detachTimeout(this.timeout);
            Http1Codec.this.state = 3;
        }

        @Override // cd.a0, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.closed) {
                return;
            }
            Http1Codec.this.sink.flush();
        }

        @Override // cd.a0
        public d0 timeout() {
            return this.timeout;
        }

        @Override // cd.a0
        public void write(f fVar, long j10) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            Http1Codec.this.sink.p(j10);
            Http1Codec.this.sink.t0("\r\n");
            Http1Codec.this.sink.write(fVar, j10);
            Http1Codec.this.sink.t0("\r\n");
        }
    }

    /* loaded from: classes2.dex */
    public class ChunkedSource extends AbstractSource {
        private static final long NO_CHUNK_YET = -1;
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        private final HttpUrl url;

        public ChunkedSource(HttpUrl httpUrl) {
            super();
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
            this.url = httpUrl;
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                Http1Codec.this.source.I();
            }
            try {
                this.bytesRemainingInChunk = Http1Codec.this.source.C0();
                String trim = Http1Codec.this.source.I().trim();
                if (this.bytesRemainingInChunk < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + trim + "\"");
                }
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    HttpHeaders.receiveHeaders(Http1Codec.this.client.cookieJar(), this.url, Http1Codec.this.readHeaders());
                    endOfInput(true, null);
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0
        public long read(f fVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.closed) {
                    if (!this.hasMoreChunks) {
                        return -1L;
                    }
                    long j11 = this.bytesRemainingInChunk;
                    if (j11 == 0 || j11 == -1) {
                        readChunkSize();
                        if (!this.hasMoreChunks) {
                            return -1L;
                        }
                    }
                    long read = super.read(fVar, Math.min(j10, this.bytesRemainingInChunk));
                    if (read != -1) {
                        this.bytesRemainingInChunk -= read;
                        return read;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    endOfInput(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    /* loaded from: classes2.dex */
    public final class FixedLengthSink implements a0 {
        private long bytesRemaining;
        private boolean closed;
        private final l timeout;

        public FixedLengthSink(long j10) {
            this.timeout = new l(Http1Codec.this.sink.timeout());
            this.bytesRemaining = j10;
        }

        @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.bytesRemaining <= 0) {
                Http1Codec.this.detachTimeout(this.timeout);
                Http1Codec.this.state = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // cd.a0, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                return;
            }
            Http1Codec.this.sink.flush();
        }

        @Override // cd.a0
        public d0 timeout() {
            return this.timeout;
        }

        @Override // cd.a0
        public void write(f fVar, long j10) throws IOException {
            if (!this.closed) {
                Util.checkOffsetAndCount(fVar.N0(), 0L, j10);
                if (j10 <= this.bytesRemaining) {
                    Http1Codec.this.sink.write(fVar, j10);
                    this.bytesRemaining -= j10;
                    return;
                }
                throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + j10);
            }
            throw new IllegalStateException("closed");
        }
    }

    /* loaded from: classes2.dex */
    public class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j10) throws IOException {
            super();
            this.bytesRemaining = j10;
            if (j10 == 0) {
                endOfInput(true, null);
            }
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0
        public long read(f fVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.closed) {
                    long j11 = this.bytesRemaining;
                    if (j11 == 0) {
                        return -1L;
                    }
                    long read = super.read(fVar, Math.min(j11, j10));
                    if (read != -1) {
                        long j12 = this.bytesRemaining - read;
                        this.bytesRemaining = j12;
                        if (j12 == 0) {
                            endOfInput(true, null);
                        }
                        return read;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    endOfInput(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    /* loaded from: classes2.dex */
    public class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource() {
            super();
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (!this.inputExhausted) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, cd.c0
        public long read(f fVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.closed) {
                    if (this.inputExhausted) {
                        return -1L;
                    }
                    long read = super.read(fVar, j10);
                    if (read != -1) {
                        return read;
                    }
                    this.inputExhausted = true;
                    endOfInput(true, null);
                    return -1L;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    public Http1Codec(OkHttpClient okHttpClient, StreamAllocation streamAllocation, h hVar, g gVar) {
        this.client = okHttpClient;
        this.streamAllocation = streamAllocation;
        this.source = hVar;
        this.sink = gVar;
    }

    private String readHeaderLine() throws IOException {
        String d02 = this.source.d0(this.headerLimit);
        this.headerLimit -= d02.length();
        return d02;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void cancel() {
        RealConnection connection = this.streamAllocation.connection();
        if (connection != null) {
            connection.cancel();
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public a0 createRequestBody(Request request, long j10) {
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return newChunkedSink();
        }
        if (j10 != -1) {
            return newFixedLengthSink(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public void detachTimeout(l lVar) {
        d0 a10 = lVar.a();
        lVar.b(d0.NONE);
        a10.clearDeadline();
        a10.clearTimeout();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void finishRequest() throws IOException {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void flushRequest() throws IOException {
        this.sink.flush();
    }

    public boolean isClosed() {
        return this.state == 6;
    }

    public a0 newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public c0 newChunkedSource(HttpUrl httpUrl) throws IOException {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(httpUrl);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public a0 newFixedLengthSink(long j10) {
        if (this.state == 1) {
            this.state = 2;
            return new FixedLengthSink(j10);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public c0 newFixedLengthSource(long j10) throws IOException {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j10);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public c0 newUnknownLengthSource() throws IOException {
        if (this.state == 4) {
            StreamAllocation streamAllocation = this.streamAllocation;
            if (streamAllocation != null) {
                this.state = 5;
                streamAllocation.noNewStreams();
                return new UnknownLengthSource();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.state);
    }

    @Override // okhttp3.internal.http.HttpCodec
    public ResponseBody openResponseBody(Response response) throws IOException {
        StreamAllocation streamAllocation = this.streamAllocation;
        streamAllocation.eventListener.responseBodyStart(streamAllocation.call);
        String header = response.header("Content-Type");
        if (!HttpHeaders.hasBody(response)) {
            return new RealResponseBody(header, 0L, p.d(newFixedLengthSource(0L)));
        }
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return new RealResponseBody(header, -1L, p.d(newChunkedSource(response.request().url())));
        }
        long contentLength = HttpHeaders.contentLength(response);
        if (contentLength != -1) {
            return new RealResponseBody(header, contentLength, p.d(newFixedLengthSource(contentLength)));
        }
        return new RealResponseBody(header, -1L, p.d(newUnknownLengthSource()));
    }

    public Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String readHeaderLine = readHeaderLine();
            if (readHeaderLine.length() != 0) {
                Internal.instance.addLenient(builder, readHeaderLine);
            } else {
                return builder.build();
            }
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Response.Builder readResponseHeaders(boolean z10) throws IOException {
        int i10 = this.state;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.state);
        }
        try {
            StatusLine parse = StatusLine.parse(readHeaderLine());
            Response.Builder headers = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(readHeaders());
            if (z10 && parse.code == 100) {
                return null;
            }
            if (parse.code == 100) {
                this.state = 3;
                return headers;
            }
            this.state = 4;
            return headers;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + this.streamAllocation);
            iOException.initCause(e10);
            throw iOException;
        }
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.state == 0) {
            this.sink.t0(str).t0("\r\n");
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.sink.t0(headers.name(i10)).t0(": ").t0(headers.value(i10)).t0("\r\n");
            }
            this.sink.t0("\r\n");
            this.state = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.state);
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void writeRequestHeaders(Request request) throws IOException {
        writeRequest(request.headers(), RequestLine.get(request, this.streamAllocation.connection().route().proxy().type()));
    }
}
