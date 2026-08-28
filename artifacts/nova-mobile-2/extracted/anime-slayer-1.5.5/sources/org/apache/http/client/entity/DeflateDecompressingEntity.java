package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* loaded from: classes2.dex */
public class DeflateDecompressingEntity extends DecompressingEntity {
    public DeflateDecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return null;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public long getContentLength() {
        return -1L;
    }

    @Override // org.apache.http.client.entity.DecompressingEntity
    public InputStream getDecompressingInputStream(InputStream inputStream) throws IOException {
        int inflate;
        byte[] bArr = new byte[6];
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 6);
        int read = pushbackInputStream.read(bArr);
        if (read != -1) {
            byte[] bArr2 = new byte[1];
            Inflater inflater = new Inflater();
            while (true) {
                try {
                    inflate = inflater.inflate(bArr2);
                    if (inflate != 0) {
                        break;
                    }
                    if (!inflater.finished()) {
                        if (inflater.needsDictionary()) {
                            break;
                        }
                        if (inflater.needsInput()) {
                            inflater.setInput(bArr);
                        }
                    } else {
                        throw new IOException("Unable to read the response");
                    }
                } catch (DataFormatException unused) {
                    pushbackInputStream.unread(bArr, 0, read);
                    return new InflaterInputStream(pushbackInputStream, new Inflater(true));
                }
            }
            if (inflate != -1) {
                pushbackInputStream.unread(bArr, 0, read);
                return new InflaterInputStream(pushbackInputStream);
            }
            throw new IOException("Unable to read the response");
        }
        throw new IOException("Unable to read the response");
    }
}
