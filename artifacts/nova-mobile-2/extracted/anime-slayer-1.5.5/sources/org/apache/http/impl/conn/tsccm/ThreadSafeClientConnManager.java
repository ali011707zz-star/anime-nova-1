package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.params.HttpParams;

@ThreadSafe
/* loaded from: classes2.dex */
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    public final ClientConnectionOperator connOperator;
    public final ConnPerRouteBean connPerRoute;

    @Deprecated
    public final AbstractConnPool connectionPool;
    private final Log log;
    public final ConnPoolByRoute pool;
    public final SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry) {
        this(schemeRegistry, -1L, TimeUnit.MILLISECONDS);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        this.log.debug("Closing expired connections");
        this.pool.closeExpiredConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j10, TimeUnit timeUnit) {
        if (this.log.isDebugEnabled()) {
            this.log.debug("Closing connections idle longer than " + j10 + " " + timeUnit);
        }
        this.pool.closeIdleConnections(j10, timeUnit);
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry);
    }

    @Deprecated
    public AbstractConnPool createConnectionPool(HttpParams httpParams) {
        return new ConnPoolByRoute(this.connOperator, httpParams);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        return this.pool.getConnectionsInPool(httpRoute);
    }

    public int getDefaultMaxPerRoute() {
        return this.connPerRoute.getDefaultMaxPerRoute();
    }

    public int getMaxForRoute(HttpRoute httpRoute) {
        return this.connPerRoute.getMaxForRoute(httpRoute);
    }

    public int getMaxTotal() {
        return this.pool.getMaxTotalConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j10, TimeUnit timeUnit) {
        boolean isMarkedReusable;
        ConnPoolByRoute connPoolByRoute;
        if (managedClientConnection instanceof BasicPooledConnAdapter) {
            BasicPooledConnAdapter basicPooledConnAdapter = (BasicPooledConnAdapter) managedClientConnection;
            if (basicPooledConnAdapter.getPoolEntry() != null && basicPooledConnAdapter.getManager() != this) {
                throw new IllegalArgumentException("Connection not obtained from this manager.");
            }
            synchronized (basicPooledConnAdapter) {
                BasicPoolEntry basicPoolEntry = (BasicPoolEntry) basicPooledConnAdapter.getPoolEntry();
                if (basicPoolEntry == null) {
                    return;
                }
                try {
                    try {
                        if (basicPooledConnAdapter.isOpen() && !basicPooledConnAdapter.isMarkedReusable()) {
                            basicPooledConnAdapter.shutdown();
                        }
                        isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                        if (this.log.isDebugEnabled()) {
                            if (isMarkedReusable) {
                                this.log.debug("Released connection is reusable.");
                            } else {
                                this.log.debug("Released connection is not reusable.");
                            }
                        }
                        basicPooledConnAdapter.detach();
                        connPoolByRoute = this.pool;
                    } catch (IOException e10) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Exception shutting down released connection.", e10);
                        }
                        isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                        if (this.log.isDebugEnabled()) {
                            if (isMarkedReusable) {
                                this.log.debug("Released connection is reusable.");
                            } else {
                                this.log.debug("Released connection is not reusable.");
                            }
                        }
                        basicPooledConnAdapter.detach();
                        connPoolByRoute = this.pool;
                    }
                    connPoolByRoute.freeEntry(basicPoolEntry, isMarkedReusable, j10, timeUnit);
                    return;
                } catch (Throwable th) {
                    boolean isMarkedReusable2 = basicPooledConnAdapter.isMarkedReusable();
                    if (this.log.isDebugEnabled()) {
                        if (isMarkedReusable2) {
                            this.log.debug("Released connection is reusable.");
                        } else {
                            this.log.debug("Released connection is not reusable.");
                        }
                    }
                    basicPooledConnAdapter.detach();
                    this.pool.freeEntry(basicPoolEntry, isMarkedReusable2, j10, timeUnit);
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(final HttpRoute httpRoute, Object obj) {
        final PoolEntryRequest requestPoolEntry = this.pool.requestPoolEntry(httpRoute, obj);
        return new ClientConnectionRequest() { // from class: org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager.1
            @Override // org.apache.http.conn.ClientConnectionRequest
            public void abortRequest() {
                requestPoolEntry.abortRequest();
            }

            @Override // org.apache.http.conn.ClientConnectionRequest
            public ManagedClientConnection getConnection(long j10, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
                if (httpRoute != null) {
                    if (ThreadSafeClientConnManager.this.log.isDebugEnabled()) {
                        ThreadSafeClientConnManager.this.log.debug("Get connection: " + httpRoute + ", timeout = " + j10);
                    }
                    return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, requestPoolEntry.getPoolEntry(j10, timeUnit));
                }
                throw new IllegalArgumentException("Route may not be null.");
            }
        };
    }

    public void setDefaultMaxPerRoute(int i10) {
        this.connPerRoute.setDefaultMaxPerRoute(i10);
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i10) {
        this.connPerRoute.setMaxForRoute(httpRoute, i10);
    }

    public void setMaxTotal(int i10) {
        this.pool.setMaxTotalConnections(i10);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        this.log.debug("Shutting down");
        this.pool.shutdown();
    }

    public ThreadSafeClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }

    public ConnPoolByRoute createConnectionPool(long j10, TimeUnit timeUnit) {
        return new ConnPoolByRoute(this.connOperator, this.connPerRoute, 20, j10, timeUnit);
    }

    public int getConnectionsInPool() {
        return this.pool.getConnectionsInPool();
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry, long j10, TimeUnit timeUnit) {
        if (schemeRegistry != null) {
            this.log = LogFactory.getLog(getClass());
            this.schemeRegistry = schemeRegistry;
            this.connPerRoute = new ConnPerRouteBean();
            this.connOperator = createConnectionOperator(schemeRegistry);
            ConnPoolByRoute createConnectionPool = createConnectionPool(j10, timeUnit);
            this.pool = createConnectionPool;
            this.connectionPool = createConnectionPool;
            return;
        }
        throw new IllegalArgumentException("Scheme registry may not be null");
    }

    @Deprecated
    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        if (schemeRegistry != null) {
            this.log = LogFactory.getLog(getClass());
            this.schemeRegistry = schemeRegistry;
            this.connPerRoute = new ConnPerRouteBean();
            this.connOperator = createConnectionOperator(schemeRegistry);
            ConnPoolByRoute connPoolByRoute = (ConnPoolByRoute) createConnectionPool(httpParams);
            this.pool = connPoolByRoute;
            this.connectionPool = connPoolByRoute;
            return;
        }
        throw new IllegalArgumentException("Scheme registry may not be null");
    }
}
