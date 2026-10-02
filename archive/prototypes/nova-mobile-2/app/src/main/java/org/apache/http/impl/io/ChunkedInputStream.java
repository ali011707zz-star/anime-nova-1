package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.ExceptionUtils;

/* loaded from: classes2.dex */
public class ChunkedInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private static final int CHUNK_CRLF = 3;
    private static final int CHUNK_DATA = 2;
    private static final int CHUNK_LEN = 1;
    private final CharArrayBuffer buffer;
    private int chunkSize;
    private final SessionInputBuffer in;
    private int pos;
    private int state;
    private boolean eof = false;
    private boolean closed = false;
    private Header[] footers = new Header[0];

    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer) {
        if (sessionInputBuffer != null) {
            this.in = sessionInputBuffer;
            this.pos = 0;
            this.buffer = new CharArrayBuffer(16);
            this.state = 1;
            return;
        }
        throw new IllegalArgumentException("Session input buffer may not be null");
    }

    private int getChunkSize() throws IOException {
        int i10 = this.state;
        if (i10 != 1) {
            if (i10 == 3) {
                this.buffer.clear();
                if (this.in.readLine(this.buffer) == -1) {
                    return 0;
                }
                if (this.buffer.isEmpty()) {
                    this.state = 1;
                } else {
                    throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
                }
            } else {
                throw new IllegalStateException("Inconsistent codec state");
            }
        }
        this.buffer.clear();
        if (this.in.readLine(this.buffer) == -1) {
            return 0;
        }
        int indexOf = this.buffer.indexOf(59);
        if (indexOf < 0) {
            indexOf = this.buffer.length();
        }
        try {
            return Integer.parseInt(this.buffer.substringTrimmed(0, indexOf), 16);
        } catch (NumberFormatException unused) {
            throw new MalformedChunkCodingException("Bad chunk header");
        }
    }

    private void nextChunk() throws IOException {
        int chunkSize = getChunkSize();
        this.chunkSize = chunkSize;
        if (chunkSize >= 0) {
            this.state = 2;
            this.pos = 0;
            if (chunkSize == 0) {
                this.eof = true;
                parseTrailerHeaders();
                return;
            }
            return;
        }
        throw new MalformedChunkCodingException("Negative chunk size");
    }

    private void parseTrailerHeaders() throws IOException {
        try {
            this.footers = AbstractMessageParser.parseHeaders(this.in, -1, -1, null);
        } catch (HttpException e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid footer: ");
            stringBuffer.append(e10.getMessage());
            MalformedChunkCodingException malformedChunkCodingException = new MalformedChunkCodingException(stringBuffer.toString());
            ExceptionUtils.initCause(malformedChunkCodingException, e10);
            throw malformedChunkCodingException;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        SessionInputBuffer sessionInputBuffer = this.in;
        if (sessionInputBuffer instanceof BufferInfo) {
            return Math.min(((BufferInfo) sessionInputBuffer).length(), this.chunkSize - this.pos);
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
            if (!this.eof) {
                do {
                } while (read(new byte[2048]) >= 0);
            }
        } finally {
            this.eof = true;
            this.closed = true;
        }
    }

    public Header[] getFooters() {
        return (Header[]) this.footers.clone();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.closed) {
            if (this.eof) {
                return -1;
            }
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.in.read();
            if (read != -1) {
                int i10 = this.pos + 1;
                this.pos = i10;
                if (i10 >= this.chunkSize) {
                    this.state = 3;
                }
            }
            return read;
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.closed) {
            if (this.eof) {
                return -1;
            }
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.in.read(bArr, i10, Math.min(i11, this.chunkSize - this.pos));
            if (read != -1) {
                int i12 = this.pos + read;
                this.pos = i12;
                if (i12 >= this.chunkSize) {
                    this.state = 3;
                }
                return read;
            }
            this.eof = true;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Truncated chunk ( expected size: ");
            stringBuffer.append(this.chunkSize);
            stringBuffer.append("; actual size: ");
            stringBuffer.append(this.pos);
            stringBuffer.append(")");
            throw new TruncatedChunkException(stringBuffer.toString());
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
