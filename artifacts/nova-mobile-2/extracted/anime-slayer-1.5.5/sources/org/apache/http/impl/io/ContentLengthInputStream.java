package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;

/* loaded from: classes2.dex */
public class ContentLengthInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private long contentLength;
    private SessionInputBuffer in;
    private long pos = 0;
    private boolean closed = false;

    public ContentLengthInputStream(SessionInputBuffer sessionInputBuffer, long j10) {
        this.in = null;
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        }
        if (j10 >= 0) {
            this.in = sessionInputBuffer;
            this.contentLength = j10;
            return;
        }
        throw new IllegalArgumentException("Content length may not be negative");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        SessionInputBuffer sessionInputBuffer = this.in;
        if (sessionInputBuffer instanceof BufferInfo) {
            return Math.min(((BufferInfo) sessionInputBuffer).length(), (int) (this.contentLength - this.pos));
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
            if (this.pos < this.contentLength) {
                do {
                } while (read(new byte[2048]) >= 0);
            }
        } finally {
            this.closed = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        }
        if (this.pos >= this.contentLength) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.pos++;
        } else if (this.pos < this.contentLength) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Premature end of Content-Length delimited message body (expected: ");
            stringBuffer.append(this.contentLength);
            stringBuffer.append("; received: ");
            stringBuffer.append(this.pos);
            throw new ConnectionClosedException(stringBuffer.toString());
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        int read;
        if (j10 <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long min = Math.min(j10, this.contentLength - this.pos);
        long j11 = 0;
        while (min > 0 && (read = read(bArr, 0, (int) Math.min(2048L, min))) != -1) {
            long j12 = read;
            j11 += j12;
            min -= j12;
        }
        return j11;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.closed) {
            long j10 = this.pos;
            long j11 = this.contentLength;
            if (j10 >= j11) {
                return -1;
            }
            if (i11 + j10 > j11) {
                i11 = (int) (j11 - j10);
            }
            int read = this.in.read(bArr, i10, i11);
            if (read != -1 || this.pos >= this.contentLength) {
                if (read > 0) {
                    this.pos += read;
                }
                return read;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Premature end of Content-Length delimited message body (expected: ");
            stringBuffer.append(this.contentLength);
            stringBuffer.append("; received: ");
            stringBuffer.append(this.pos);
            throw new ConnectionClosedException(stringBuffer.toString());
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
