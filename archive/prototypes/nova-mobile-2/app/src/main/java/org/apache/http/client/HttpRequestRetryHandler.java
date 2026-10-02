package org.apache.http.client;

import java.io.IOException;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public interface HttpRequestRetryHandler {
    boolean retryRequest(IOException iOException, int i10, HttpContext httpContext);
}
