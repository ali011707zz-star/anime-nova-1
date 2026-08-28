package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class InputStreamEntity extends AbstractHttpEntity {
    private static final int BUFFER_SIZE = 2048;
    private final InputStream content;
    private final long length;

    public InputStreamEntity(InputStream inputStream, long j10) {
        if (inputStream != null) {
            this.content = inputStream;
            this.length = j10;
            return;
        }
        throw new IllegalArgumentException("Source input stream may not be null");
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        this.content.close();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return this.content;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        int read;
        if (outputStream != null) {
            InputStream inputStream = this.content;
            try {
                byte[] bArr = new byte[2048];
                long j10 = this.length;
                if (j10 < 0) {
                    while (true) {
                        int read2 = inputStream.read(bArr);
                        if (read2 == -1) {
                            break;
                        } else {
                            outputStream.write(bArr, 0, read2);
                        }
                    }
                } else {
                    while (j10 > 0 && (read = inputStream.read(bArr, 0, (int) Math.min(2048L, j10))) != -1) {
                        outputStream.write(bArr, 0, read);
                        j10 -= read;
                    }
                }
                return;
            } finally {
                inputStream.close();
            }
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
