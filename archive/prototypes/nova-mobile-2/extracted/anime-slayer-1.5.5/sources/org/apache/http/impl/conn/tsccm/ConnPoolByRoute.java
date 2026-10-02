package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;

@ThreadSafe
/* loaded from: classes2.dex */
public class ConnPoolByRoute extends AbstractConnPool {
    public final ConnPerRoute connPerRoute;
    private final long connTTL;
    private final TimeUnit connTTLTimeUnit;
    public final Queue<BasicPoolEntry> freeConnections;
    public final Set<BasicPoolEntry> leasedConnections;
    private final Log log;
    public volatile int maxTotalConnections;
    public volatile int numConnections;
    public final ClientConnectionOperator operator;
    private final Lock poolLock;
    public final Map<HttpRoute, RouteSpecificPool> routeToPool;
    public volatile boolean shutdown;
    public final Queue<WaitingThread> waitingThreads;

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute, int i10) {
        this(clientConnectionOperator, connPerRoute, i10, -1L, TimeUnit.MILLISECONDS);
    }

    private void closeConnection(BasicPoolEntry basicPoolEntry) {
        OperatedClientConnection connection = basicPoolEntry.getConnection();
        if (connection != null) {
            try {
                connection.close();
            } catch (IOException e10) {
                this.log.debug("I/O error closing connection", e10);
            }
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeExpiredConnections() {
        this.log.debug("Closing expired connections");
        long currentTimeMillis = System.currentTimeMillis();
        this.poolLock.lock();
        try {
            Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                if (next.isExpired(currentTimeMillis)) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Closing connection expired @ " + new Date(next.getExpiry()));
                    }
                    it2.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeIdleConnections(long j10, TimeUnit timeUnit) {
        if (timeUnit != null) {
            if (j10 < 0) {
                j10 = 0;
            }
            if (this.log.isDebugEnabled()) {
                this.log.debug("Closing connections idle longer than " + j10 + " " + timeUnit);
            }
            long currentTimeMillis = System.currentTimeMillis() - timeUnit.toMillis(j10);
            this.poolLock.lock();
            try {
                Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
                while (it2.hasNext()) {
                    BasicPoolEntry next = it2.next();
                    if (next.getUpdated() <= currentTimeMillis) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Closing connection last used @ " + new Date(next.getUpdated()));
                        }
                        it2.remove();
                        deleteEntry(next);
                    }
                }
                return;
            } finally {
                this.poolLock.unlock();
            }
        }
        throw new IllegalArgumentException("Time unit must not be null.");
    }

    public BasicPoolEntry createEntry(RouteSpecificPool routeSpecificPool, ClientConnectionOperator clientConnectionOperator) {
        if (this.log.isDebugEnabled()) {
            this.log.debug("Creating new connection [" + routeSpecificPool.getRoute() + "]");
        }
        BasicPoolEntry basicPoolEntry = new BasicPoolEntry(clientConnectionOperator, routeSpecificPool.getRoute(), this.connTTL, this.connTTLTimeUnit);
        this.poolLock.lock();
        try {
            routeSpecificPool.createdEntry(basicPoolEntry);
            this.numConnections++;
            this.leasedConnections.add(basicPoolEntry);
            return basicPoolEntry;
        } finally {
            this.poolLock.unlock();
        }
    }

    public Queue<BasicPoolEntry> createFreeConnQueue() {
        return new LinkedList();
    }

    public Map<HttpRoute, RouteSpecificPool> createRouteToPoolMap() {
        return new HashMap();
    }

    public Queue<WaitingThread> createWaitingThreadQueue() {
        return new LinkedList();
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void deleteClosedConnections() {
        this.poolLock.lock();
        try {
            Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                if (!next.getConnection().isOpen()) {
                    it2.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    public void deleteEntry(BasicPoolEntry basicPoolEntry) {
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Deleting connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]");
        }
        this.poolLock.lock();
        try {
            closeConnection(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            routePool.deleteEntry(basicPoolEntry);
            this.numConnections--;
            if (routePool.isUnused()) {
                this.routeToPool.remove(plannedRoute);
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    public void deleteLeastUsedEntry() {
        this.poolLock.lock();
        try {
            BasicPoolEntry remove = this.freeConnections.remove();
            if (remove != null) {
                deleteEntry(remove);
            } else if (this.log.isDebugEnabled()) {
                this.log.debug("No free connection to delete");
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void freeEntry(BasicPoolEntry basicPoolEntry, boolean z10, long j10, TimeUnit timeUnit) {
        String str;
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Releasing connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]");
        }
        this.poolLock.lock();
        try {
            if (this.shutdown) {
                closeConnection(basicPoolEntry);
                return;
            }
            this.leasedConnections.remove(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            if (z10) {
                if (this.log.isDebugEnabled()) {
                    if (j10 > 0) {
                        str = "for " + j10 + " " + timeUnit;
                    } else {
                        str = "indefinitely";
                    }
                    this.log.debug("Pooling connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]; keep alive " + str);
                }
                routePool.freeEntry(basicPoolEntry);
                basicPoolEntry.updateExpiry(j10, timeUnit);
                this.freeConnections.add(basicPoolEntry);
            } else {
                routePool.dropEntry();
                this.numConnections--;
            }
            notifyWaitingThread(routePool);
        } finally {
            this.poolLock.unlock();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        this.poolLock.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, false);
            return routePool != null ? routePool.getEntryCount() : 0;
        } finally {
            this.poolLock.unlock();
        }
    }

    public BasicPoolEntry getEntryBlocking(HttpRoute httpRoute, Object obj, long j10, TimeUnit timeUnit, WaitingThreadAborter waitingThreadAborter) throws ConnectionPoolTimeoutException, InterruptedException {
        BasicPoolEntry basicPoolEntry = null;
        Date date = j10 > 0 ? new Date(System.currentTimeMillis() + timeUnit.toMillis(j10)) : null;
        this.poolLock.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            WaitingThread waitingThread = null;
            while (basicPoolEntry == null) {
                if (!this.shutdown) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("[" + httpRoute + "] total kept alive: " + this.freeConnections.size() + ", total issued: " + this.leasedConnections.size() + ", total allocated: " + this.numConnections + " out of " + this.maxTotalConnections);
                    }
                    basicPoolEntry = getFreeEntry(routePool, obj);
                    if (basicPoolEntry != null) {
                        break;
                    }
                    boolean z10 = routePool.getCapacity() > 0;
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Available capacity: " + routePool.getCapacity() + " out of " + routePool.getMaxEntries() + " [" + httpRoute + "][" + obj + "]");
                    }
                    if (z10 && this.numConnections < this.maxTotalConnections) {
                        basicPoolEntry = createEntry(routePool, this.operator);
                    } else if (z10 && !this.freeConnections.isEmpty()) {
                        deleteLeastUsedEntry();
                        routePool = getRoutePool(httpRoute, true);
                        basicPoolEntry = createEntry(routePool, this.operator);
                    } else {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Need to wait for connection [" + httpRoute + "][" + obj + "]");
                        }
                        if (waitingThread == null) {
                            waitingThread = newWaitingThread(this.poolLock.newCondition(), routePool);
                            waitingThreadAborter.setWaitingThread(waitingThread);
                        }
                        try {
                            routePool.queueThread(waitingThread);
                            this.waitingThreads.add(waitingThread);
                            if (!waitingThread.await(date) && date != null && date.getTime() <= System.currentTimeMillis()) {
                                throw new ConnectionPoolTimeoutException("Timeout waiting for connection");
                            }
                        } finally {
                            routePool.removeThread(waitingThread);
                            this.waitingThreads.remove(waitingThread);
                        }
                    }
                } else {
                    throw new IllegalStateException("Connection pool shut down");
                }
            }
            return basicPoolEntry;
        } finally {
            this.poolLock.unlock();
        }
    }

    public BasicPoolEntry getFreeEntry(RouteSpecificPool routeSpecificPool, Object obj) {
        this.poolLock.lock();
        boolean z10 = false;
        BasicPoolEntry basicPoolEntry = null;
        while (!z10) {
            try {
                basicPoolEntry = routeSpecificPool.allocEntry(obj);
                if (basicPoolEntry != null) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Getting free connection [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                    }
                    this.freeConnections.remove(basicPoolEntry);
                    if (basicPoolEntry.isExpired(System.currentTimeMillis())) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Closing expired free connection [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                        }
                        closeConnection(basicPoolEntry);
                        routeSpecificPool.dropEntry();
                        this.numConnections--;
                    } else {
                        this.leasedConnections.add(basicPoolEntry);
                    }
                } else if (this.log.isDebugEnabled()) {
                    this.log.debug("No free connections [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                }
                z10 = true;
            } finally {
                this.poolLock.unlock();
            }
        }
        return basicPoolEntry;
    }

    public Lock getLock() {
        return this.poolLock;
    }

    public int getMaxTotalConnections() {
        return this.maxTotalConnections;
    }

    public RouteSpecificPool getRoutePool(HttpRoute httpRoute, boolean z10) {
        this.poolLock.lock();
        try {
            RouteSpecificPool routeSpecificPool = this.routeToPool.get(httpRoute);
            if (routeSpecificPool == null && z10) {
                routeSpecificPool = newRouteSpecificPool(httpRoute);
                this.routeToPool.put(httpRoute, routeSpecificPool);
            }
            return routeSpecificPool;
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void handleLostEntry(HttpRoute httpRoute) {
        this.poolLock.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            routePool.dropEntry();
            if (routePool.isUnused()) {
                this.routeToPool.remove(httpRoute);
            }
            this.numConnections--;
            notifyWaitingThread(routePool);
        } finally {
            this.poolLock.unlock();
        }
    }

    public RouteSpecificPool newRouteSpecificPool(HttpRoute httpRoute) {
        return new RouteSpecificPool(httpRoute, this.connPerRoute);
    }

    public WaitingThread newWaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        return new WaitingThread(condition, routeSpecificPool);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006b A[Catch: all -> 0x0074, TRY_LEAVE, TryCatch #0 {all -> 0x0074, blocks: (B:23:0x0007, B:25:0x000d, B:27:0x0015, B:28:0x0034, B:10:0x006b, B:3:0x0039, B:5:0x0041, B:7:0x0049, B:8:0x0050, B:18:0x0059, B:20:0x0061), top: B:22:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void notifyWaitingThread(RouteSpecificPool routeSpecificPool) {
        WaitingThread nextThread;
        this.poolLock.lock();
        if (routeSpecificPool != null) {
            try {
                if (routeSpecificPool.hasThread()) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Notifying thread waiting on pool [" + routeSpecificPool.getRoute() + "]");
                    }
                    nextThread = routeSpecificPool.nextThread();
                    if (nextThread != null) {
                        nextThread.wakeup();
                    }
                }
            } finally {
                this.poolLock.unlock();
            }
        }
        if (!this.waitingThreads.isEmpty()) {
            if (this.log.isDebugEnabled()) {
                this.log.debug("Notifying thread waiting on any pool");
            }
            nextThread = this.waitingThreads.remove();
        } else {
            if (this.log.isDebugEnabled()) {
                this.log.debug("Notifying no-one, there are no waiting threads");
            }
            nextThread = null;
        }
        if (nextThread != null) {
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public PoolEntryRequest requestPoolEntry(final HttpRoute httpRoute, final Object obj) {
        final WaitingThreadAborter waitingThreadAborter = new WaitingThreadAborter();
        return new PoolEntryRequest() { // from class: org.apache.http.impl.conn.tsccm.ConnPoolByRoute.1
            @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
            public void abortRequest() {
                ConnPoolByRoute.this.poolLock.lock();
                try {
                    waitingThreadAborter.abort();
                } finally {
                    ConnPoolByRoute.this.poolLock.unlock();
                }
            }

            @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
            public BasicPoolEntry getPoolEntry(long j10, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
                return ConnPoolByRoute.this.getEntryBlocking(httpRoute, obj, j10, timeUnit, waitingThreadAborter);
            }
        };
    }

    public void setMaxTotalConnections(int i10) {
        this.poolLock.lock();
        try {
            this.maxTotalConnections = i10;
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void shutdown() {
        this.poolLock.lock();
        try {
            if (this.shutdown) {
                return;
            }
            this.shutdown = true;
            Iterator<BasicPoolEntry> it2 = this.leasedConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                it2.remove();
                closeConnection(next);
            }
            Iterator<BasicPoolEntry> it3 = this.freeConnections.iterator();
            while (it3.hasNext()) {
                BasicPoolEntry next2 = it3.next();
                it3.remove();
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Closing connection [" + next2.getPlannedRoute() + "][" + next2.getState() + "]");
                }
                closeConnection(next2);
            }
            Iterator<WaitingThread> it4 = this.waitingThreads.iterator();
            while (it4.hasNext()) {
                WaitingThread next3 = it4.next();
                it4.remove();
                next3.wakeup();
            }
            this.routeToPool.clear();
        } finally {
            this.poolLock.unlock();
        }
    }

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute, int i10, long j10, TimeUnit timeUnit) {
        this.log = LogFactory.getLog(getClass());
        if (clientConnectionOperator == null) {
            throw new IllegalArgumentException("Connection operator may not be null");
        }
        if (connPerRoute != null) {
            this.poolLock = super.poolLock;
            this.leasedConnections = super.leasedConnections;
            this.operator = clientConnectionOperator;
            this.connPerRoute = connPerRoute;
            this.maxTotalConnections = i10;
            this.freeConnections = createFreeConnQueue();
            this.waitingThreads = createWaitingThreadQueue();
            this.routeToPool = createRouteToPoolMap();
            this.connTTL = j10;
            this.connTTLTimeUnit = timeUnit;
            return;
        }
        throw new IllegalArgumentException("Connections per route may not be null");
    }

    public int getConnectionsInPool() {
        this.poolLock.lock();
        try {
            return this.numConnections;
        } finally {
            this.poolLock.unlock();
        }
    }

    @Deprecated
    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, HttpParams httpParams) {
        this(clientConnectionOperator, ConnManagerParams.getMaxConnectionsPerRoute(httpParams), ConnManagerParams.getMaxTotalConnections(httpParams));
    }
}
