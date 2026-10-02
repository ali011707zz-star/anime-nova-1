package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ConnectionPoolTimeoutException;

/* loaded from: classes2.dex */
public interface PoolEntryRequest {
    void abortRequest();

    BasicPoolEntry getPoolEntry(long j10, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException;
}
