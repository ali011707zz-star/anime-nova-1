package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public class StrictContentLengthStrategy implements ContentLengthStrategy {
    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        if (httpMessage != null) {
            Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
            Header firstHeader2 = httpMessage.getFirstHeader("Content-Length");
            if (firstHeader == null) {
                if (firstHeader2 == null) {
                    return -1L;
                }
                String value = firstHeader2.getValue();
                try {
                    return Long.parseLong(value);
                } catch (NumberFormatException unused) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Invalid content length: ");
                    stringBuffer.append(value);
                    throw new ProtocolException(stringBuffer.toString());
                }
            }
            String value2 = firstHeader.getValue();
            if (HTTP.CHUNK_CODING.equalsIgnoreCase(value2)) {
                if (!httpMessage.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0)) {
                    return -2L;
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Chunked transfer encoding not allowed for ");
                stringBuffer2.append(httpMessage.getProtocolVersion());
                throw new ProtocolException(stringBuffer2.toString());
            }
            if (HTTP.IDENTITY_CODING.equalsIgnoreCase(value2)) {
                return -1L;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Unsupported transfer encoding: ");
            stringBuffer3.append(value2);
            throw new ProtocolException(stringBuffer3.toString());
        }
        throw new IllegalArgumentException("HTTP message may not be null");
    }
}
