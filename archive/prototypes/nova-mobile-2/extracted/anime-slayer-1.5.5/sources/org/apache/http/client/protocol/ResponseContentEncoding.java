package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.entity.DeflateDecompressingEntity;
import org.apache.http.client.entity.GzipDecompressingEntity;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class ResponseContentEncoding implements HttpResponseInterceptor {
    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Header contentEncoding;
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || (contentEncoding = entity.getContentEncoding()) == null) {
            return;
        }
        HeaderElement[] elements = contentEncoding.getElements();
        if (elements.length > 0) {
            HeaderElement headerElement = elements[0];
            String lowerCase = headerElement.getName().toLowerCase(Locale.US);
            if (!"gzip".equals(lowerCase) && !"x-gzip".equals(lowerCase)) {
                if ("deflate".equals(lowerCase)) {
                    httpResponse.setEntity(new DeflateDecompressingEntity(httpResponse.getEntity()));
                    return;
                } else {
                    if (HTTP.IDENTITY_CODING.equals(lowerCase)) {
                        return;
                    }
                    throw new HttpException("Unsupported Content-Coding: " + headerElement.getName());
                }
            }
            httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
        }
    }
}
