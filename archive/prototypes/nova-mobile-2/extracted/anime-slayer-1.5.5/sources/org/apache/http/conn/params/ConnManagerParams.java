package org.apache.http.conn.params;

import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;

@Deprecated
@Immutable
/* loaded from: classes2.dex */
public final class ConnManagerParams implements ConnManagerPNames {
    private static final ConnPerRoute DEFAULT_CONN_PER_ROUTE = new ConnPerRoute() { // from class: org.apache.http.conn.params.ConnManagerParams.1
        @Override // org.apache.http.conn.params.ConnPerRoute
        public int getMaxForRoute(HttpRoute httpRoute) {
            return 2;
        }
    };
    public static final int DEFAULT_MAX_TOTAL_CONNECTIONS = 20;

    @Deprecated
    public static ConnPerRoute getMaxConnectionsPerRoute(HttpParams httpParams) {
        if (httpParams != null) {
            ConnPerRoute connPerRoute = (ConnPerRoute) httpParams.getParameter(ConnManagerPNames.MAX_CONNECTIONS_PER_ROUTE);
            return connPerRoute == null ? DEFAULT_CONN_PER_ROUTE : connPerRoute;
        }
        throw new IllegalArgumentException("HTTP parameters must not be null.");
    }

    @Deprecated
    public static int getMaxTotalConnections(HttpParams httpParams) {
        if (httpParams != null) {
            return httpParams.getIntParameter(ConnManagerPNames.MAX_TOTAL_CONNECTIONS, 20);
        }
        throw new IllegalArgumentException("HTTP parameters must not be null.");
    }

    @Deprecated
    public static long getTimeout(HttpParams httpParams) {
        if (httpParams != null) {
            Long l10 = (Long) httpParams.getParameter(ConnManagerPNames.TIMEOUT);
            if (l10 != null) {
                return l10.longValue();
            }
            return httpParams.getIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 0);
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    @Deprecated
    public static void setMaxConnectionsPerRoute(HttpParams httpParams, ConnPerRoute connPerRoute) {
        if (httpParams != null) {
            httpParams.setParameter(ConnManagerPNames.MAX_CONNECTIONS_PER_ROUTE, connPerRoute);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters must not be null.");
    }

    @Deprecated
    public static void setMaxTotalConnections(HttpParams httpParams, int i10) {
        if (httpParams != null) {
            httpParams.setIntParameter(ConnManagerPNames.MAX_TOTAL_CONNECTIONS, i10);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters must not be null.");
    }

    @Deprecated
    public static void setTimeout(HttpParams httpParams, long j10) {
        if (httpParams != null) {
            httpParams.setLongParameter(ConnManagerPNames.TIMEOUT, j10);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }
}
