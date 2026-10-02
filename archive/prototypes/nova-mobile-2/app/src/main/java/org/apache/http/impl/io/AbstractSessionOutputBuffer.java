package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public abstract class AbstractSessionOutputBuffer implements SessionOutputBuffer, BufferInfo {
    private static final byte[] CRLF = {13, 10};
    private ByteArrayBuffer buffer;
    private HttpTransportMetricsImpl metrics;
    private OutputStream outstream;
    private String charset = "US-ASCII";
    private boolean ascii = true;
    private int minChunkLimit = 512;

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.buffer.capacity();
    }

    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        flushBuffer();
        this.outstream.flush();
    }

    public void flushBuffer() throws IOException {
        int length = this.buffer.length();
        if (length > 0) {
            this.outstream.write(this.buffer.buffer(), 0, length);
            this.buffer.clear();
            this.metrics.incrementBytesTransferred(length);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public void init(OutputStream outputStream, int i10, HttpParams httpParams) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("Buffer size may not be negative or zero");
        }
        if (httpParams != null) {
            this.outstream = outputStream;
            this.buffer = new ByteArrayBuffer(i10);
            String httpElementCharset = HttpProtocolParams.getHttpElementCharset(httpParams);
            this.charset = httpElementCharset;
            this.ascii = httpElementCharset.equalsIgnoreCase("US-ASCII") || this.charset.equalsIgnoreCase("ASCII");
            this.minChunkLimit = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, 512);
            this.metrics = createTransportMetrics();
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.buffer.length();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr == null) {
            return;
        }
        if (i11 <= this.minChunkLimit && i11 <= this.buffer.capacity()) {
            if (i11 > this.buffer.capacity() - this.buffer.length()) {
                flushBuffer();
            }
            this.buffer.append(bArr, i10, i11);
        } else {
            flushBuffer();
            this.outstream.write(bArr, i10, i11);
            this.metrics.incrementBytesTransferred(i11);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            write(str.getBytes(this.charset));
        }
        write(CRLF);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        if (charArrayBuffer == null) {
            return;
        }
        if (this.ascii) {
            int i10 = 0;
            int length = charArrayBuffer.length();
            while (length > 0) {
                int min = Math.min(this.buffer.capacity() - this.buffer.length(), length);
                if (min > 0) {
                    this.buffer.append(charArrayBuffer, i10, min);
                }
                if (this.buffer.isFull()) {
                    flushBuffer();
                }
                i10 += min;
                length -= min;
            }
        } else {
            write(charArrayBuffer.toString().getBytes(this.charset));
        }
        write(CRLF);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        if (bArr == null) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i10) throws IOException {
        if (this.buffer.isFull()) {
            flushBuffer();
        }
        this.buffer.append(i10);
    }
}
