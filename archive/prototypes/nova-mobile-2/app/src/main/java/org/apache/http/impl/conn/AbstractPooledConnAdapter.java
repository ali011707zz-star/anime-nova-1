package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public abstract class AbstractPooledConnAdapter extends AbstractClientConnAdapter {
    public volatile AbstractPoolEntry poolEntry;

    public AbstractPooledConnAdapter(ClientConnectionManager clientConnectionManager, AbstractPoolEntry abstractPoolEntry) {
        super(clientConnectionManager, abstractPoolEntry.connection);
        this.poolEntry = abstractPoolEntry;
    }

    @Deprecated
    public final void assertAttached() {
        if (this.poolEntry == null) {
            throw new ConnectionShutdownException();
        }
    }

    public void assertValid(AbstractPoolEntry abstractPoolEntry) {
        if (isReleased() || abstractPoolEntry == null) {
            throw new ConnectionShutdownException();
        }
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        if (poolEntry != null) {
            poolEntry.shutdownEntry();
        }
        OperatedClientConnection wrappedConnection = getWrappedConnection();
        if (wrappedConnection != null) {
            wrappedConnection.close();
        }
    }

    @Override // org.apache.http.impl.conn.AbstractClientConnAdapter
    public synchronized void detach() {
        this.poolEntry = null;
        super.detach();
    }

    public AbstractPoolEntry getPoolEntry() {
        return this.poolEntry;
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public HttpRoute getRoute() {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        if (poolEntry.tracker == null) {
            return null;
        }
        return poolEntry.tracker.toRoute();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public Object getState() {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        return poolEntry.getState();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        poolEntry.layerProtocol(httpContext, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        poolEntry.open(httpRoute, httpContext, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setState(Object obj) {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        poolEntry.setState(obj);
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        if (poolEntry != null) {
            poolEntry.shutdownEntry();
        }
        OperatedClientConnection wrappedConnection = getWrappedConnection();
        if (wrappedConnection != null) {
            wrappedConnection.shutdown();
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelProxy(HttpHost httpHost, boolean z10, HttpParams httpParams) throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        poolEntry.tunnelProxy(httpHost, z10, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelTarget(boolean z10, HttpParams httpParams) throws IOException {
        AbstractPoolEntry poolEntry = getPoolEntry();
        assertValid(poolEntry);
        poolEntry.tunnelTarget(z10, httpParams);
    }
}
