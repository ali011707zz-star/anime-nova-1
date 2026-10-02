package org.apache.http.message;

import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.params.HttpProtocolParams;

/* loaded from: classes2.dex */
public class BasicHttpRequest extends AbstractHttpMessage implements HttpRequest {
    private final String method;
    private RequestLine requestline;
    private final String uri;

    public BasicHttpRequest(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Method name may not be null");
        }
        if (str2 != null) {
            this.method = str;
            this.uri = str2;
            this.requestline = null;
            return;
        }
        throw new IllegalArgumentException("Request URI may not be null");
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        return getRequestLine().getProtocolVersion();
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        if (this.requestline == null) {
            this.requestline = new BasicRequestLine(this.method, this.uri, HttpProtocolParams.getVersion(getParams()));
        }
        return this.requestline;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.method);
        stringBuffer.append(" ");
        stringBuffer.append(this.uri);
        stringBuffer.append(" ");
        stringBuffer.append(this.headergroup);
        return stringBuffer.toString();
    }

    public BasicHttpRequest(String str, String str2, ProtocolVersion protocolVersion) {
        this(new BasicRequestLine(str, str2, protocolVersion));
    }

    public BasicHttpRequest(RequestLine requestLine) {
        if (requestLine != null) {
            this.requestline = requestLine;
            this.method = requestLine.getMethod();
            this.uri = requestLine.getUri();
            return;
        }
        throw new IllegalArgumentException("Request line may not be null");
    }
}
