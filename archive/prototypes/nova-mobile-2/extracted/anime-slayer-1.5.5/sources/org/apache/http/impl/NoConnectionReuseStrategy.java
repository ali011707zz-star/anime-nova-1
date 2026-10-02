package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class NoConnectionReuseStrategy implements ConnectionReuseStrategy {
    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        if (httpContext != null) {
            return false;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }
}
