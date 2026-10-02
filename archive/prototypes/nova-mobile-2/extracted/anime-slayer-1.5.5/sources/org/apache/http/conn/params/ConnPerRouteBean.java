package org.apache.http.conn.params;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.routing.HttpRoute;

@ThreadSafe
/* loaded from: classes2.dex */
public final class ConnPerRouteBean implements ConnPerRoute {
    public static final int DEFAULT_MAX_CONNECTIONS_PER_ROUTE = 2;
    private volatile int defaultMax;
    private final ConcurrentHashMap<HttpRoute, Integer> maxPerHostMap;

    public ConnPerRouteBean(int i10) {
        this.maxPerHostMap = new ConcurrentHashMap<>();
        setDefaultMaxPerRoute(i10);
    }

    @Deprecated
    public int getDefaultMax() {
        return this.defaultMax;
    }

    public int getDefaultMaxPerRoute() {
        return this.defaultMax;
    }

    @Override // org.apache.http.conn.params.ConnPerRoute
    public int getMaxForRoute(HttpRoute httpRoute) {
        if (httpRoute != null) {
            Integer num = this.maxPerHostMap.get(httpRoute);
            if (num != null) {
                return num.intValue();
            }
            return this.defaultMax;
        }
        throw new IllegalArgumentException("HTTP route may not be null.");
    }

    public void setDefaultMaxPerRoute(int i10) {
        if (i10 >= 1) {
            this.defaultMax = i10;
            return;
        }
        throw new IllegalArgumentException("The maximum must be greater than 0.");
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i10) {
        if (httpRoute == null) {
            throw new IllegalArgumentException("HTTP route may not be null.");
        }
        if (i10 >= 1) {
            this.maxPerHostMap.put(httpRoute, Integer.valueOf(i10));
            return;
        }
        throw new IllegalArgumentException("The maximum must be greater than 0.");
    }

    public void setMaxForRoutes(Map<HttpRoute, Integer> map) {
        if (map == null) {
            return;
        }
        this.maxPerHostMap.clear();
        this.maxPerHostMap.putAll(map);
    }

    public String toString() {
        return this.maxPerHostMap.toString();
    }

    public ConnPerRouteBean() {
        this(2);
    }
}
