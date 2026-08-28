package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;

/* loaded from: classes2.dex */
public class RequestContent implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        if (httpRequest != null) {
            if (httpRequest instanceof HttpEntityEnclosingRequest) {
                if (!httpRequest.containsHeader("Transfer-Encoding")) {
                    if (!httpRequest.containsHeader("Content-Length")) {
                        ProtocolVersion protocolVersion = httpRequest.getRequestLine().getProtocolVersion();
                        HttpEntity entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
                        if (entity == null) {
                            httpRequest.addHeader("Content-Length", "0");
                            return;
                        }
                        if (!entity.isChunked() && entity.getContentLength() >= 0) {
                            httpRequest.addHeader("Content-Length", Long.toString(entity.getContentLength()));
                        } else if (!protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                            httpRequest.addHeader("Transfer-Encoding", HTTP.CHUNK_CODING);
                        } else {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Chunked transfer encoding not allowed for ");
                            stringBuffer.append(protocolVersion);
                            throw new ProtocolException(stringBuffer.toString());
                        }
                        if (entity.getContentType() != null && !httpRequest.containsHeader("Content-Type")) {
                            httpRequest.addHeader(entity.getContentType());
                        }
                        if (entity.getContentEncoding() == null || httpRequest.containsHeader("Content-Encoding")) {
                            return;
                        }
                        httpRequest.addHeader(entity.getContentEncoding());
                        return;
                    }
                    throw new ProtocolException("Content-Length header already present");
                }
                throw new ProtocolException("Transfer-encoding header already present");
            }
            return;
        }
        throw new IllegalArgumentException("HTTP request may not be null");
    }
}
