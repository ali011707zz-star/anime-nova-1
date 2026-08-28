package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.LangUtils;

@NotThreadSafe
/* loaded from: classes2.dex */
public final class RouteTracker implements RouteInfo, Cloneable {
    private boolean connected;
    private RouteInfo.LayerType layered;
    private final InetAddress localAddress;
    private HttpHost[] proxyChain;
    private boolean secure;
    private final HttpHost targetHost;
    private RouteInfo.TunnelType tunnelled;

    public RouteTracker(HttpHost httpHost, InetAddress inetAddress) {
        if (httpHost != null) {
            this.targetHost = httpHost;
            this.localAddress = inetAddress;
            this.tunnelled = RouteInfo.TunnelType.PLAIN;
            this.layered = RouteInfo.LayerType.PLAIN;
            return;
        }
        throw new IllegalArgumentException("Target host may not be null.");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public final void connectProxy(HttpHost httpHost, boolean z10) {
        if (httpHost != null) {
            if (!this.connected) {
                this.connected = true;
                this.proxyChain = new HttpHost[]{httpHost};
                this.secure = z10;
                return;
            }
            throw new IllegalStateException("Already connected.");
        }
        throw new IllegalArgumentException("Proxy host may not be null.");
    }

    public final void connectTarget(boolean z10) {
        if (!this.connected) {
            this.connected = true;
            this.secure = z10;
            return;
        }
        throw new IllegalStateException("Already connected.");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RouteTracker)) {
            return false;
        }
        RouteTracker routeTracker = (RouteTracker) obj;
        return this.connected == routeTracker.connected && this.secure == routeTracker.secure && this.tunnelled == routeTracker.tunnelled && this.layered == routeTracker.layered && LangUtils.equals(this.targetHost, routeTracker.targetHost) && LangUtils.equals(this.localAddress, routeTracker.localAddress) && LangUtils.equals((Object[]) this.proxyChain, (Object[]) routeTracker.proxyChain);
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final int getHopCount() {
        if (!this.connected) {
            return 0;
        }
        HttpHost[] httpHostArr = this.proxyChain;
        if (httpHostArr == null) {
            return 1;
        }
        return 1 + httpHostArr.length;
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
            throw new IllegalArgumentException("Hop index " + i10 + " exceeds tracked route length " + hopCount + ".");
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
        if (httpHostArr == null) {
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
        if (this.proxyChain != null) {
            int i10 = 0;
            while (true) {
                HttpHost[] httpHostArr = this.proxyChain;
                if (i10 >= httpHostArr.length) {
                    break;
                }
                hashCode = LangUtils.hashCode(hashCode, httpHostArr[i10]);
                i10++;
            }
        }
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(hashCode, this.connected), this.secure), this.tunnelled), this.layered);
    }

    public final boolean isConnected() {
        return this.connected;
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

    public final void layerProtocol(boolean z10) {
        if (this.connected) {
            this.layered = RouteInfo.LayerType.LAYERED;
            this.secure = z10;
            return;
        }
        throw new IllegalStateException("No layered protocol unless connected.");
    }

    public final HttpRoute toRoute() {
        if (this.connected) {
            return new HttpRoute(this.targetHost, this.localAddress, this.proxyChain, this.secure, this.tunnelled, this.layered);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder((getHopCount() * 30) + 50);
        sb2.append("RouteTracker[");
        InetAddress inetAddress = this.localAddress;
        if (inetAddress != null) {
            sb2.append(inetAddress);
            sb2.append("->");
        }
        sb2.append('{');
        if (this.connected) {
            sb2.append('c');
        }
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
        if (this.proxyChain != null) {
            int i10 = 0;
            while (true) {
                HttpHost[] httpHostArr = this.proxyChain;
                if (i10 >= httpHostArr.length) {
                    break;
                }
                sb2.append(httpHostArr[i10]);
                sb2.append("->");
                i10++;
            }
        }
        sb2.append(this.targetHost);
        sb2.append(']');
        return sb2.toString();
    }

    public final void tunnelProxy(HttpHost httpHost, boolean z10) {
        if (httpHost != null) {
            if (this.connected) {
                HttpHost[] httpHostArr = this.proxyChain;
                if (httpHostArr != null) {
                    int length = httpHostArr.length + 1;
                    HttpHost[] httpHostArr2 = new HttpHost[length];
                    System.arraycopy(httpHostArr, 0, httpHostArr2, 0, httpHostArr.length);
                    httpHostArr2[length - 1] = httpHost;
                    this.proxyChain = httpHostArr2;
                    this.secure = z10;
                    return;
                }
                throw new IllegalStateException("No proxy tunnel without proxy.");
            }
            throw new IllegalStateException("No tunnel unless connected.");
        }
        throw new IllegalArgumentException("Proxy host may not be null.");
    }

    public final void tunnelTarget(boolean z10) {
        if (this.connected) {
            if (this.proxyChain != null) {
                this.tunnelled = RouteInfo.TunnelType.TUNNELLED;
                this.secure = z10;
                return;
            }
            throw new IllegalStateException("No tunnel without proxy.");
        }
        throw new IllegalStateException("No tunnel unless connected.");
    }

    public RouteTracker(HttpRoute httpRoute) {
        this(httpRoute.getTargetHost(), httpRoute.getLocalAddress());
    }
}
