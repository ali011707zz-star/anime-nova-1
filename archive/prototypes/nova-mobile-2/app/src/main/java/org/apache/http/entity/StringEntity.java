package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public class StringEntity extends AbstractHttpEntity implements Cloneable {
    public final byte[] content;

    public StringEntity(String str, String str2, String str3) throws UnsupportedEncodingException {
        if (str != null) {
            str2 = str2 == null ? HTTP.PLAIN_TEXT_TYPE : str2;
            str3 = str3 == null ? "ISO-8859-1" : str3;
            this.content = str.getBytes(str3);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str2);
            stringBuffer.append(HTTP.CHARSET_PARAM);
            stringBuffer.append(str3);
            setContentType(stringBuffer.toString());
            return;
        }
        throw new IllegalArgumentException("Source string may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return new ByteArrayInputStream(this.content);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.content.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            outputStream.write(this.content);
            outputStream.flush();
            return;
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }

    public StringEntity(String str, String str2) throws UnsupportedEncodingException {
        this(str, null, str2);
    }

    public StringEntity(String str) throws UnsupportedEncodingException {
        this(str, null);
    }
}
