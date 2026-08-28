package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public abstract class AbstractSessionInputBuffer implements SessionInputBuffer, BufferInfo {
    private byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private InputStream instream;
    private HttpTransportMetricsImpl metrics;
    private ByteArrayBuffer linebuffer = null;
    private String charset = "US-ASCII";
    private boolean ascii = true;
    private int maxLineLen = -1;
    private int minChunkLimit = 512;

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
                this.linebuffer.setLength(length);
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                this.linebuffer.setLength(length - 1);
            }
        }
        int length2 = this.linebuffer.length();
        if (this.ascii) {
            charArrayBuffer.append(this.linebuffer, 0, length2);
        } else {
            String str = new String(this.linebuffer.buffer(), 0, length2, this.charset);
            length2 = str.length();
            charArrayBuffer.append(str);
        }
        this.linebuffer.clear();
        return length2;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i10) throws IOException {
        int i11 = this.bufferpos;
        this.bufferpos = i10 + 1;
        if (i10 > 0 && this.buffer[i10 - 1] == 13) {
            i10--;
        }
        int i12 = i10 - i11;
        if (this.ascii) {
            charArrayBuffer.append(this.buffer, i11, i12);
            return i12;
        }
        String str = new String(this.buffer, i11, i12, this.charset);
        charArrayBuffer.append(str);
        return str.length();
    }

    private int locateLF() {
        for (int i10 = this.bufferpos; i10 < this.bufferlen; i10++) {
            if (this.buffer[i10] == 10) {
                return i10;
            }
        }
        return -1;
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.buffer.length;
    }

    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    public int fillBuffer() throws IOException {
        int i10 = this.bufferpos;
        if (i10 > 0) {
            int i11 = this.bufferlen - i10;
            if (i11 > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, i10, bArr, 0, i11);
            }
            this.bufferpos = 0;
            this.bufferlen = i11;
        }
        int i12 = this.bufferlen;
        byte[] bArr2 = this.buffer;
        int read = this.instream.read(bArr2, i12, bArr2.length - i12);
        if (read == -1) {
            return -1;
        }
        this.bufferlen = i12 + read;
        this.metrics.incrementBytesTransferred(read);
        return read;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    public void init(InputStream inputStream, int i10, HttpParams httpParams) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("Buffer size may not be negative or zero");
        }
        if (httpParams != null) {
            this.instream = inputStream;
            this.buffer = new byte[i10];
            this.bufferpos = 0;
            this.bufferlen = 0;
            this.linebuffer = new ByteArrayBuffer(i10);
            String httpElementCharset = HttpProtocolParams.getHttpElementCharset(httpParams);
            this.charset = httpElementCharset;
            this.ascii = httpElementCharset.equalsIgnoreCase("US-ASCII") || this.charset.equalsIgnoreCase("ASCII");
            this.maxLineLen = httpParams.getIntParameter(CoreConnectionPNames.MAX_LINE_LENGTH, -1);
            this.minChunkLimit = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, 512);
            this.metrics = createTransportMetrics();
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i10 = this.bufferpos;
        this.bufferpos = i10 + 1;
        return bArr[i10] & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
    
        if (r2 == (-1)) goto L13;
     */
    @Override // org.apache.http.io.SessionInputBuffer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        if (charArrayBuffer != null) {
            boolean z10 = true;
            int i10 = 0;
            while (z10) {
                int locateLF = locateLF();
                if (locateLF != -1) {
                    if (this.linebuffer.isEmpty()) {
                        return lineFromReadBuffer(charArrayBuffer, locateLF);
                    }
                    int i11 = locateLF + 1;
                    int i12 = this.bufferpos;
                    this.linebuffer.append(this.buffer, i12, i11 - i12);
                    this.bufferpos = i11;
                } else {
                    if (hasBufferedData()) {
                        int i13 = this.bufferlen;
                        int i14 = this.bufferpos;
                        this.linebuffer.append(this.buffer, i14, i13 - i14);
                        this.bufferpos = this.bufferlen;
                    }
                    i10 = fillBuffer();
                }
                z10 = false;
                if (this.maxLineLen > 0 && this.linebuffer.length() >= this.maxLineLen) {
                    throw new IOException("Maximum line length limit exceeded");
                }
            }
            if (i10 == -1 && this.linebuffer.isEmpty()) {
                return -1;
            }
            return lineFromLineBuffer(charArrayBuffer);
        }
        throw new IllegalArgumentException("Char array buffer may not be null");
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i11, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i10, min);
            this.bufferpos += min;
            return min;
        }
        if (i11 > this.minChunkLimit) {
            int read = this.instream.read(bArr, i10, i11);
            if (read > 0) {
                this.metrics.incrementBytesTransferred(read);
            }
            return read;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int min2 = Math.min(i11, this.bufferlen - this.bufferpos);
        System.arraycopy(this.buffer, this.bufferpos, bArr, i10, min2);
        this.bufferpos += min2;
        return min2;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
