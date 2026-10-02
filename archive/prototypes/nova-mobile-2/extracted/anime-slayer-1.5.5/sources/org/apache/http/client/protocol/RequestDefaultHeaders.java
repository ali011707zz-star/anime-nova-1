package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class RequestDefaultHeaders implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Collection collection;
        if (httpRequest != null) {
            if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") || (collection = (Collection) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HEADERS)) == null) {
                return;
            }
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                httpRequest.addHeader((Header) it2.next());
            }
            return;
        }
        throw new IllegalArgumentException("HTTP request may not be null");
    }
}
