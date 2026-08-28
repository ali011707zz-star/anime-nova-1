package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.LangUtils;

@Immutable
/* loaded from: classes2.dex */
public final class HttpRoute implements RouteInfo, Cloneable {
    private static final HttpHost[] EMPTY_HTTP_HOST_ARRAY = new HttpHost[0];
    private final RouteInfo.LayerType layered;
    private final InetAddress localAddress;
    private final HttpHost[] proxyChain;
    private final boolean secure;
    private final HttpHost targetHost;
    private final RouteInfo.TunnelType tunnelled;

    private HttpRoute(InetAddress inetAddress, HttpHost httpHost, HttpHost[] httpHostArr, boolean z10, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        if (httpHost == null) {
            throw new IllegalArgumentException("Target host may not be null.");
        }
        if (httpHostArr != null) {
            if (tunnelType == RouteInfo.TunnelType.TUNNELLED && httpHostArr.length == 0) {
                throw new IllegalArgumentException("Proxy required if tunnelled.");
            }
            tunnelType = tunnelType == null ? RouteInfo.TunnelType.PLAIN : tunnelType;
            layerType = layerType == null ? RouteInfo.LayerType.PLAIN : layerType;
            this.targetHost = httpHost;
            this.localAddress = inetAddress;
            this.proxyChain = httpHostArr;
            this.secure = z10;
            this.tunnelled = tunnelType;
            this.layered = layerType;
            return;
        }
        throw new IllegalArgumentException("Proxies may not be null.");
    }

    private static HttpHost[] toChain(HttpHost httpHost) {
        return httpHost == null ? EMPTY_HTTP_HOST_ARRAY : new HttpHost[]{httpHost};
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpRoute)) {
            return false;
        }
        HttpRoute httpRoute = (HttpRoute) obj;
        return this.secure == httpRoute.secure && this.tunnelled == httpRoute.tunnelled && this.layered == httpRoute.layered && LangUtils.equals(this.targetHost, httpRoute.targetHost) && LangUtils.equals(this.localAddress, httpRoute.localAddress) && LangUtils.equals((Object[]) this.proxyChain, (Object[]) httpRoute.proxyChain);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final int getHopCount() {
        return this.proxyChain.length + 1;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getHopTarget(int i10) {
        if (i10 >= 0) {
            int hopCount = getHopCount();
            if (i10 < hopCount) {
                if (i10 < hopCount - 1) {
                    return this.proxyChain[i10];
                }
                return this.targetHost;
            }
            throw new IllegalArgumentException("Hop index " + i10 + " exceeds route length " + hopCount);
        }
        throw new IllegalArgumentException("Hop index must not be negative: " + i10);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.LayerType getLayerType() {
        return this.layered;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final InetAddress getLocalAddress() {
        return this.localAddress;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getProxyHost() {
        HttpHost[] httpHostArr = this.proxyChain;
        if (httpHostArr.length == 0) {
            return null;
        }
        return httpHostArr[0];
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getTargetHost() {
        return this.targetHost;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.TunnelType getTunnelType() {
        return this.tunnelled;
    }

    public final int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.targetHost), this.localAddress);
        int i10 = 0;
        while (true) {
            HttpHost[] httpHostArr = this.proxyChain;
            if (i10 < httpHostArr.length) {
                hashCode = LangUtils.hashCode(hashCode, httpHostArr[i10]);
                i10++;
            } else {
                return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(hashCode, this.secure), this.tunnelled), this.layered);
            }
        }
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isLayered() {
        return this.layered == RouteInfo.LayerType.LAYERED;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isSecure() {
        return this.secure;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isTunnelled() {
        return this.tunnelled == RouteInfo.TunnelType.TUNNELLED;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder((getHopCount() * 30) + 50);
        sb2.append("HttpRoute[");
        InetAddress inetAddress = this.localAddress;
        if (inetAddress != null) {
            sb2.append(inetAddress);
            sb2.append("->");
        }
        sb2.append('{');
        if (this.tunnelled == RouteInfo.TunnelType.TUNNELLED) {
            sb2.append('t');
        }
        if (this.layered == RouteInfo.LayerType.LAYERED) {
            sb2.append('l');
        }
        if (this.secure) {
            sb2.append('s');
        }
        sb2.append("}->");
        for (HttpHost httpHost : this.proxyChain) {
            sb2.append(httpHost);
            sb2.append("->");
        }
        sb2.append(this.targetHost);
        sb2.append(']');
        return sb2.toString();
    }

    private static HttpHost[] toChain(HttpHost[] httpHostArr) {
        if (httpHostArr != null && httpHostArr.length >= 1) {
            for (HttpHost httpHost : httpHostArr) {
                if (httpHost == null) {
                    throw new IllegalArgumentException("Proxy chain may not contain null elements.");
                }
            }
            HttpHost[] httpHostArr2 = new HttpHost[httpHostArr.length];
            System.arraycopy(httpHostArr, 0, httpHostArr2, 0, httpHostArr.length);
            return httpHostArr2;
        }
        return EMPTY_HTTP_HOST_ARRAY;
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost[] httpHostArr, boolean z10, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(inetAddress, httpHost, toChain(httpHostArr), z10, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z10, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(inetAddress, httpHost, toChain(httpHost2), z10, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, boolean z10) {
        this(inetAddress, httpHost, EMPTY_HTTP_HOST_ARRAY, z10, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost) {
        this((InetAddress) null, httpHost, EMPTY_HTTP_HOST_ARRAY, false, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z10) {
        this(inetAddress, httpHost, toChain(httpHost2), z10, z10 ? RouteInfo.TunnelType.TUNNELLED : RouteInfo.TunnelType.PLAIN, z10 ? RouteInfo.LayerType.LAYERED : RouteInfo.LayerType.PLAIN);
        if (httpHost2 == null) {
            throw new IllegalArgumentException("Proxy host may not be null.");
        }
    }
}
