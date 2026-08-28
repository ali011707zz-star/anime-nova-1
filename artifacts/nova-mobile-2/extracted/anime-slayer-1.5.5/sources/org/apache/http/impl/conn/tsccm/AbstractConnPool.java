package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.IdleConnectionHandler;

@Deprecated
/* loaded from: classes2.dex */
public abstract class AbstractConnPool implements RefQueueHandler {
    public volatile boolean isShutDown;
    public Set<BasicPoolEntryRef> issuedConnections;

    @GuardedBy("poolLock")
    public int numConnections;
    public ReferenceQueue<Object> refQueue;
    private final Log log = LogFactory.getLog(getClass());

    @GuardedBy("poolLock")
    public Set<BasicPoolEntry> leasedConnections = new HashSet();
    public IdleConnectionHandler idleConnHandler = new IdleConnectionHandler();
    public final Lock poolLock = new ReentrantLock();

    public void closeConnection(OperatedClientConnection operatedClientConnection) {
        if (operatedClientConnection != null) {
            try {
                operatedClientConnection.close();
            } catch (IOException e10) {
                this.log.debug("I/O error closing connection", e10);
            }
        }
    }

    public void closeExpiredConnections() {
        this.poolLock.lock();
        try {
            this.idleConnHandler.closeExpiredConnections();
        } finally {
            this.poolLock.unlock();
        }
    }

    public void closeIdleConnections(long j10, TimeUnit timeUnit) {
        if (timeUnit != null) {
            this.poolLock.lock();
            try {
                this.idleConnHandler.closeIdleConnections(timeUnit.toMillis(j10));
                return;
            } finally {
                this.poolLock.unlock();
            }
        }
        throw new IllegalArgumentException("Time unit must not be null.");
    }

    public abstract void deleteClosedConnections();

    public void enableConnectionGC() throws IllegalStateException {
    }

    public abstract void freeEntry(BasicPoolEntry basicPoolEntry, boolean z10, long j10, TimeUnit timeUnit);

    public final BasicPoolEntry getEntry(HttpRoute httpRoute, Object obj, long j10, TimeUnit timeUnit) throws ConnectionPoolTimeoutException, InterruptedException {
        return requestPoolEntry(httpRoute, obj).getPoolEntry(j10, timeUnit);
    }

    public abstract void handleLostEntry(HttpRoute httpRoute);

    @Override // org.apache.http.impl.conn.tsccm.RefQueueHandler
    public void handleReference(Reference<?> reference) {
    }

    public abstract PoolEntryRequest requestPoolEntry(HttpRoute httpRoute, Object obj);

    public void shutdown() {
        this.poolLock.lock();
        try {
            if (this.isShutDown) {
                return;
            }
            Iterator<BasicPoolEntry> it2 = this.leasedConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                it2.remove();
                closeConnection(next.getConnection());
            }
            this.idleConnHandler.removeAll();
            this.isShutDown = true;
        } finally {
            this.poolLock.unlock();
        }
    }
}
