package org.apache.http.client.methods;

import java.net.URI;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
/* loaded from: classes2.dex */
public class HttpOptions extends HttpRequestBase {
    public static final String METHOD_NAME = "OPTIONS";

    public HttpOptions() {
    }

    public Set<String> getAllowedMethods(HttpResponse httpResponse) {
        if (httpResponse != null) {
            HeaderIterator headerIterator = httpResponse.headerIterator(HttpHeaders.ALLOW);
            HashSet hashSet = new HashSet();
            while (headerIterator.hasNext()) {
                for (HeaderElement headerElement : headerIterator.nextHeader().getElements()) {
                    hashSet.add(headerElement.getName());
                }
            }
            return hashSet;
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpOptions(URI uri) {
        setURI(uri);
    }

    public HttpOptions(String str) {
        setURI(URI.create(str));
    }
}
