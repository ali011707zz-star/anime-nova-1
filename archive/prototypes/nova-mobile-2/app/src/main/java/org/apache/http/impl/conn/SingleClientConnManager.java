package org.apache.http.impl.conn;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

@ThreadSafe
/* loaded from: classes2.dex */
public class SingleClientConnManager implements ClientConnectionManager {
    public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
    public final boolean alwaysShutDown;
    public final ClientConnectionOperator connOperator;

    @GuardedBy("this")
    public long connectionExpiresTime;
    public volatile boolean isShutDown;

    @GuardedBy("this")
    public long lastReleaseTime;
    private final Log log;

    @GuardedBy("this")
    public ConnAdapter managedConn;
    public final SchemeRegistry schemeRegistry;

    @GuardedBy("this")
    public PoolEntry uniquePoolEntry;

    /* loaded from: classes2.dex */
    public class ConnAdapter extends AbstractPooledConnAdapter {
        public ConnAdapter(PoolEntry poolEntry, HttpRoute httpRoute) {
            super(SingleClientConnManager.this, poolEntry);
            markReusable();
            poolEntry.route = httpRoute;
        }
    }

    /* loaded from: classes2.dex */
    public class PoolEntry extends AbstractPoolEntry {
        public PoolEntry() {
            super(SingleClientConnManager.this.connOperator, null);
        }

        public void close() throws IOException {
            shutdownEntry();
            if (this.connection.isOpen()) {
                this.connection.close();
            }
        }

        public void shutdown() throws IOException {
            shutdownEntry();
            if (this.connection.isOpen()) {
                this.connection.shutdown();
            }
        }
    }

    @Deprecated
    public SingleClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        this(schemeRegistry);
    }

    public final void assertStillUp() throws IllegalStateException {
        if (this.isShutDown) {
            throw new IllegalStateException("Manager is shut down.");
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void closeExpiredConnections() {
        if (System.currentTimeMillis() >= this.connectionExpiresTime) {
            closeIdleConnections(0L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void closeIdleConnections(long j10, TimeUnit timeUnit) {
        assertStillUp();
        if (timeUnit != null) {
            if (this.managedConn == null && this.uniquePoolEntry.connection.isOpen()) {
                if (this.lastReleaseTime <= System.currentTimeMillis() - timeUnit.toMillis(j10)) {
                    try {
                        this.uniquePoolEntry.close();
                    } catch (IOException e10) {
                        this.log.debug("Problem closing idle connection.", e10);
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("Time unit must not be null.");
        }
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public synchronized ManagedClientConnection getConnection(HttpRoute httpRoute, Object obj) {
        boolean z10;
        ConnAdapter connAdapter;
        try {
            if (httpRoute != null) {
                assertStillUp();
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Get connection for route " + httpRoute);
                }
                if (this.managedConn == null) {
                    closeExpiredConnections();
                    boolean z11 = true;
                    boolean z12 = false;
                    if (this.uniquePoolEntry.connection.isOpen()) {
                        RouteTracker routeTracker = this.uniquePoolEntry.tracker;
                        z12 = routeTracker == null || !routeTracker.toRoute().equals(httpRoute);
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (z12) {
                        try {
                            this.uniquePoolEntry.shutdown();
                        } catch (IOException e10) {
                            this.log.debug("Problem shutting down connection.", e10);
                        }
                    } else {
                        z11 = z10;
                    }
                    if (z11) {
                        this.uniquePoolEntry = new PoolEntry();
                    }
                    connAdapter = new ConnAdapter(this.uniquePoolEntry, httpRoute);
                    this.managedConn = connAdapter;
                } else {
                    throw new IllegalStateException(MISUSE_MESSAGE);
                }
            } else {
                throw new IllegalArgumentException("Route may not be null.");
            }
        } catch (Throwable th) {
            throw th;
        }
        return connAdapter;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void releaseConnection(ManagedClientConnection managedClientConnection, long j10, TimeUnit timeUnit) {
        long millis;
        long j11;
        assertStillUp();
        if (managedClientConnection instanceof ConnAdapter) {
            if (this.log.isDebugEnabled()) {
                this.log.debug("Releasing connection " + managedClientConnection);
            }
            ConnAdapter connAdapter = (ConnAdapter) managedClientConnection;
            if (connAdapter.poolEntry == null) {
                return;
            }
            ClientConnectionManager manager = connAdapter.getManager();
            if (manager != null && manager != this) {
                throw new IllegalArgumentException("Connection not obtained from this manager.");
            }
            try {
                try {
                    if (connAdapter.isOpen() && (this.alwaysShutDown || !connAdapter.isMarkedReusable())) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Released connection open but not reusable.");
                        }
                        connAdapter.shutdown();
                    }
                    connAdapter.detach();
                    this.managedConn = null;
                    this.lastReleaseTime = System.currentTimeMillis();
                } catch (IOException e10) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Exception shutting down released connection.", e10);
                    }
                    connAdapter.detach();
                    this.managedConn = null;
                    this.lastReleaseTime = System.currentTimeMillis();
                    if (j10 > 0) {
                        millis = timeUnit.toMillis(j10);
                        j11 = this.lastReleaseTime;
                    }
                }
                if (j10 > 0) {
                    millis = timeUnit.toMillis(j10);
                    j11 = this.lastReleaseTime;
                    this.connectionExpiresTime = millis + j11;
                    return;
                }
                this.connectionExpiresTime = RecyclerView.FOREVER_NS;
                return;
            } catch (Throwable th) {
                connAdapter.detach();
                this.managedConn = null;
                this.lastReleaseTime = System.currentTimeMillis();
                if (j10 > 0) {
                    this.connectionExpiresTime = timeUnit.toMillis(j10) + this.lastReleaseTime;
                } else {
                    this.connectionExpiresTime = RecyclerView.FOREVER_NS;
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public final ClientConnectionRequest requestConnection(final HttpRoute httpRoute, final Object obj) {
        return new ClientConnectionRequest() { // from class: org.apache.http.impl.conn.SingleClientConnManager.1
            @Override // org.apache.http.conn.ClientConnectionRequest
            public void abortRequest() {
            }

            @Override // org.apache.http.conn.ClientConnectionRequest
            public ManagedClientConnection getConnection(long j10, TimeUnit timeUnit) {
                return SingleClientConnManager.this.getConnection(httpRoute, obj);
            }
        };
    }

    @Deprecated
    public synchronized void revokeConnection() {
        ConnAdapter connAdapter = this.managedConn;
        if (connAdapter == null) {
            return;
        }
        connAdapter.detach();
        try {
            this.uniquePoolEntry.shutdown();
        } catch (IOException e10) {
            this.log.debug("Problem while shutting down connection.", e10);
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void shutdown() {
        this.isShutDown = true;
        ConnAdapter connAdapter = this.managedConn;
        if (connAdapter != null) {
            connAdapter.detach();
        }
        try {
            try {
                PoolEntry poolEntry = this.uniquePoolEntry;
                if (poolEntry != null) {
                    poolEntry.shutdown();
                }
            } catch (IOException e10) {
                this.log.debug("Problem while shutting down manager.", e10);
            }
        } finally {
            this.uniquePoolEntry = null;
        }
    }

    public SingleClientConnManager(SchemeRegistry schemeRegistry) {
        this.log = LogFactory.getLog(getClass());
        if (schemeRegistry != null) {
            this.schemeRegistry = schemeRegistry;
            this.connOperator = createConnectionOperator(schemeRegistry);
            this.uniquePoolEntry = new PoolEntry();
            this.managedConn = null;
            this.lastReleaseTime = -1L;
            this.alwaysShutDown = false;
            this.isShutDown = false;
            return;
        }
        throw new IllegalArgumentException("Scheme registry must not be null.");
    }

    public SingleClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }
}
