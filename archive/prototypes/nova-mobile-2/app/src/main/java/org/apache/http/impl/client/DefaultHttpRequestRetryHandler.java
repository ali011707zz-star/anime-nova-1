package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class DefaultHttpRequestRetryHandler implements HttpRequestRetryHandler {
    private final boolean requestSentRetryEnabled;
    private final int retryCount;

    public DefaultHttpRequestRetryHandler(int i10, boolean z10) {
        this.retryCount = i10;
        this.requestSentRetryEnabled = z10;
    }

    private boolean handleAsIdempotent(HttpRequest httpRequest) {
        return !(httpRequest instanceof HttpEntityEnclosingRequest);
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public boolean isRequestSentRetryEnabled() {
        return this.requestSentRetryEnabled;
    }

    @Override // org.apache.http.client.HttpRequestRetryHandler
    public boolean retryRequest(IOException iOException, int i10, HttpContext httpContext) {
        if (iOException == null) {
            throw new IllegalArgumentException("Exception parameter may not be null");
        }
        if (httpContext != null) {
            if (i10 > this.retryCount || (iOException instanceof InterruptedIOException) || (iOException instanceof UnknownHostException) || (iOException instanceof ConnectException) || (iOException instanceof SSLException)) {
                return false;
            }
            if (handleAsIdempotent((HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST))) {
                return true;
            }
            Boolean bool = (Boolean) httpContext.getAttribute(ExecutionContext.HTTP_REQ_SENT);
            return !(bool != null && bool.booleanValue()) || this.requestSentRetryEnabled;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }

    public DefaultHttpRequestRetryHandler() {
        this(3, false);
    }
}
