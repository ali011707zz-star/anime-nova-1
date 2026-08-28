package org.apache.http;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface HttpConnection {
    void close() throws IOException;

    HttpConnectionMetrics getMetrics();

    int getSocketTimeout();

    boolean isOpen();

    boolean isStale();

    void setSocketTimeout(int i10);

    void shutdown() throws IOException;
}
