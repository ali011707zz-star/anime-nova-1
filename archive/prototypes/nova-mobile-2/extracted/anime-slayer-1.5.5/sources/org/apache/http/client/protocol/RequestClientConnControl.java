package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class RequestClientConnControl implements HttpRequestInterceptor {
    private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
    private final Log log = LogFactory.getLog(getClass());

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        if (httpRequest != null) {
            if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
                httpRequest.setHeader(PROXY_CONN_DIRECTIVE, HTTP.CONN_KEEP_ALIVE);
                return;
            }
            HttpRoutedConnection httpRoutedConnection = (HttpRoutedConnection) httpContext.getAttribute(ExecutionContext.HTTP_CONNECTION);
            if (httpRoutedConnection == null) {
                this.log.debug("HTTP connection not set in the context");
                return;
            }
            HttpRoute route = httpRoutedConnection.getRoute();
            if ((route.getHopCount() == 1 || route.isTunnelled()) && !httpRequest.containsHeader("Connection")) {
                httpRequest.addHeader("Connection", HTTP.CONN_KEEP_ALIVE);
            }
            if (route.getHopCount() != 2 || route.isTunnelled() || httpRequest.containsHeader(PROXY_CONN_DIRECTIVE)) {
                return;
            }
            httpRequest.addHeader(PROXY_CONN_DIRECTIVE, HTTP.CONN_KEEP_ALIVE);
            return;
        }
        throw new IllegalArgumentException("HTTP request may not be null");
    }
}
