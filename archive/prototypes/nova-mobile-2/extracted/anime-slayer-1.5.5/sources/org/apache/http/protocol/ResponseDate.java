package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

/* loaded from: classes2.dex */
public class ResponseDate implements HttpResponseInterceptor {
    private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        if (httpResponse != null) {
            if (httpResponse.getStatusLine().getStatusCode() < 200 || httpResponse.containsHeader("Date")) {
                return;
            }
            httpResponse.setHeader("Date", DATE_GENERATOR.getCurrentDate());
            return;
        }
        throw new IllegalArgumentException("HTTP response may not be null.");
    }
}
