package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@NotThreadSafe
/* loaded from: classes2.dex */
public abstract class AbstractPoolEntry {
    public final ClientConnectionOperator connOperator;
    public final OperatedClientConnection connection;
    public volatile HttpRoute route;
    public volatile Object state;
    public volatile RouteTracker tracker;

    public AbstractPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute) {
        if (clientConnectionOperator != null) {
            this.connOperator = clientConnectionOperator;
            this.connection = clientConnectionOperator.createConnection();
            this.route = httpRoute;
            this.tracker = null;
            return;
        }
        throw new IllegalArgumentException("Connection operator may not be null");
    }

    public Object getState() {
        return this.state;
    }

    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        if (httpParams != null) {
            if (this.tracker != null && this.tracker.isConnected()) {
                if (this.tracker.isTunnelled()) {
                    if (!this.tracker.isLayered()) {
                        this.connOperator.updateSecureConnection(this.connection, this.tracker.getTargetHost(), httpContext, httpParams);
                        this.tracker.layerProtocol(this.connection.isSecure());
                        return;
                    }
                    throw new IllegalStateException("Multiple protocol layering not supported.");
                }
                throw new IllegalStateException("Protocol layering without a tunnel not supported.");
            }
            throw new IllegalStateException("Connection not open.");
        }
        throw new IllegalArgumentException("Parameters must not be null.");
    }

    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        if (httpRoute == null) {
            throw new IllegalArgumentException("Route must not be null.");
        }
        if (httpParams != null) {
            if (this.tracker != null && this.tracker.isConnected()) {
                throw new IllegalStateException("Connection already open.");
            }
            this.tracker = new RouteTracker(httpRoute);
            HttpHost proxyHost = httpRoute.getProxyHost();
            this.connOperator.openConnection(this.connection, proxyHost != null ? proxyHost : httpRoute.getTargetHost(), httpRoute.getLocalAddress(), httpContext, httpParams);
            RouteTracker routeTracker = this.tracker;
            if (routeTracker == null) {
                throw new IOException("Request aborted");
            }
            if (proxyHost == null) {
                routeTracker.connectTarget(this.connection.isSecure());
                return;
            } else {
                routeTracker.connectProxy(proxyHost, this.connection.isSecure());
                return;
            }
        }
        throw new IllegalArgumentException("Parameters must not be null.");
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public void shutdownEntry() {
        this.tracker = null;
        this.state = null;
    }

    public void tunnelProxy(HttpHost httpHost, boolean z10, HttpParams httpParams) throws IOException {
        if (httpHost == null) {
            throw new IllegalArgumentException("Next proxy must not be null.");
        }
        if (httpParams != null) {
            if (this.tracker != null && this.tracker.isConnected()) {
                this.connection.update(null, httpHost, z10, httpParams);
                this.tracker.tunnelProxy(httpHost, z10);
                return;
            }
            throw new IllegalStateException("Connection not open.");
        }
        throw new IllegalArgumentException("Parameters must not be null.");
    }

    public void tunnelTarget(boolean z10, HttpParams httpParams) throws IOException {
        if (httpParams != null) {
            if (this.tracker != null && this.tracker.isConnected()) {
                if (!this.tracker.isTunnelled()) {
                    this.connection.update(null, this.tracker.getTargetHost(), z10, httpParams);
                    this.tracker.tunnelTarget(z10);
                    return;
                }
                throw new IllegalStateException("Connection is already tunnelled.");
            }
            throw new IllegalStateException("Connection not open.");
        }
        throw new IllegalArgumentException("Parameters must not be null.");
    }
}
