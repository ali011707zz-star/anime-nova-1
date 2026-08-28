package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public class LaxContentLengthStrategy implements ContentLengthStrategy {
    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        long j10;
        if (httpMessage != null) {
            boolean isParameterTrue = httpMessage.getParams().isParameterTrue(CoreProtocolPNames.STRICT_TRANSFER_ENCODING);
            Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
            Header firstHeader2 = httpMessage.getFirstHeader("Content-Length");
            if (firstHeader == null) {
                if (firstHeader2 != null) {
                    Header[] headers = httpMessage.getHeaders("Content-Length");
                    if (isParameterTrue && headers.length > 1) {
                        throw new ProtocolException("Multiple content length headers");
                    }
                    int length = headers.length - 1;
                    while (true) {
                        if (length < 0) {
                            j10 = -1;
                            break;
                        }
                        Header header = headers[length];
                        try {
                            j10 = Long.parseLong(header.getValue());
                            break;
                        } catch (NumberFormatException unused) {
                            if (isParameterTrue) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Invalid content length: ");
                                stringBuffer.append(header.getValue());
                                throw new ProtocolException(stringBuffer.toString());
                            }
                            length--;
                        }
                    }
                    if (j10 >= 0) {
                        return j10;
                    }
                }
                return -1L;
            }
            try {
                HeaderElement[] elements = firstHeader.getElements();
                if (isParameterTrue) {
                    for (HeaderElement headerElement : elements) {
                        String name = headerElement.getName();
                        if (name != null && name.length() > 0 && !name.equalsIgnoreCase(HTTP.CHUNK_CODING) && !name.equalsIgnoreCase(HTTP.IDENTITY_CODING)) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Unsupported transfer encoding: ");
                            stringBuffer2.append(name);
                            throw new ProtocolException(stringBuffer2.toString());
                        }
                    }
                }
                int length2 = elements.length;
                if (HTTP.IDENTITY_CODING.equalsIgnoreCase(firstHeader.getValue())) {
                    return -1L;
                }
                if (length2 > 0 && HTTP.CHUNK_CODING.equalsIgnoreCase(elements[length2 - 1].getName())) {
                    return -2L;
                }
                if (isParameterTrue) {
                    throw new ProtocolException("Chunk-encoding must be the last one applied");
                }
                return -1L;
            } catch (ParseException e10) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Invalid Transfer-Encoding header value: ");
                stringBuffer3.append(firstHeader);
                throw new ProtocolException(stringBuffer3.toString(), e10);
            }
        }
        throw new IllegalArgumentException("HTTP message may not be null");
    }
}
