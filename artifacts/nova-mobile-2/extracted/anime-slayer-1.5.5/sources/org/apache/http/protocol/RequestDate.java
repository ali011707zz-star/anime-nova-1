package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;

/* loaded from: classes2.dex */
public class RequestDate implements HttpRequestInterceptor {
    private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        if (httpRequest != null) {
            if (!(httpRequest instanceof HttpEntityEnclosingRequest) || httpRequest.containsHeader("Date")) {
                return;
            }
            httpRequest.setHeader("Date", DATE_GENERATOR.getCurrentDate());
            return;
        }
        throw new IllegalArgumentException("HTTP request may not be null.");
    }
}
