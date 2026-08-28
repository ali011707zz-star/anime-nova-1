package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

/* loaded from: classes2.dex */
abstract class DecompressingEntity extends HttpEntityWrapper {
    private static final int BUFFER_SIZE = 2048;
    private InputStream content;

    public DecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (this.wrappedEntity.isStreaming()) {
            if (this.content == null) {
                this.content = getDecompressingInputStream(this.wrappedEntity.getContent());
            }
            return this.content;
        }
        return getDecompressingInputStream(this.wrappedEntity.getContent());
    }

    public abstract InputStream getDecompressingInputStream(InputStream inputStream) throws IOException;

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            InputStream content = getContent();
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = content.read(bArr);
                    if (read == -1) {
                        return;
                    } else {
                        outputStream.write(bArr, 0, read);
                    }
                }
            } finally {
                content.close();
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
