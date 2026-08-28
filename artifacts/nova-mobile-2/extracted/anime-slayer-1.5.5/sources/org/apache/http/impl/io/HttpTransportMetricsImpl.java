package org.apache.http.impl.io;

import org.apache.http.io.HttpTransportMetrics;

/* loaded from: classes2.dex */
public class HttpTransportMetricsImpl implements HttpTransportMetrics {
    private long bytesTransferred = 0;

    @Override // org.apache.http.io.HttpTransportMetrics
    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public void incrementBytesTransferred(long j10) {
        this.bytesTransferred += j10;
    }

    @Override // org.apache.http.io.HttpTransportMetrics
    public void reset() {
        this.bytesTransferred = 0L;
    }

    public void setBytesTransferred(long j10) {
        this.bytesTransferred = j10;
    }
}
