package org.apache.http.impl.conn;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;

@NotThreadSafe
/* loaded from: classes2.dex */
public class ProxySelectorRoutePlanner implements HttpRoutePlanner {
    public ProxySelector proxySelector;
    public final SchemeRegistry schemeRegistry;

    /* renamed from: org.apache.http.impl.conn.ProxySelectorRoutePlanner$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$java$net$Proxy$Type;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            $SwitchMap$java$net$Proxy$Type = iArr;
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$net$Proxy$Type[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$net$Proxy$Type[Proxy.Type.SOCKS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ProxySelectorRoutePlanner(SchemeRegistry schemeRegistry, ProxySelector proxySelector) {
        if (schemeRegistry != null) {
            this.schemeRegistry = schemeRegistry;
            this.proxySelector = proxySelector;
            return;
        }
        throw new IllegalArgumentException("SchemeRegistry must not be null.");
    }

    public Proxy chooseProxy(List<Proxy> list, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        if (list != null && !list.isEmpty()) {
            Proxy proxy = null;
            for (int i10 = 0; proxy == null && i10 < list.size(); i10++) {
                Proxy proxy2 = list.get(i10);
                int i11 = AnonymousClass1.$SwitchMap$java$net$Proxy$Type[proxy2.type().ordinal()];
                if (i11 == 1 || i11 == 2) {
                    proxy = proxy2;
                }
            }
            return proxy == null ? Proxy.NO_PROXY : proxy;
        }
        throw new IllegalArgumentException("Proxy list must not be empty.");
    }

    public HttpHost determineProxy(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        ProxySelector proxySelector = this.proxySelector;
        if (proxySelector == null) {
            proxySelector = ProxySelector.getDefault();
        }
        if (proxySelector == null) {
            return null;
        }
        try {
            Proxy chooseProxy = chooseProxy(proxySelector.select(new URI(httpHost.toURI())), httpHost, httpRequest, httpContext);
            if (chooseProxy.type() != Proxy.Type.HTTP) {
                return null;
            }
            if (chooseProxy.address() instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) chooseProxy.address();
                return new HttpHost(getHost(inetSocketAddress), inetSocketAddress.getPort());
            }
            throw new HttpException("Unable to handle non-Inet proxy address: " + chooseProxy.address());
        } catch (URISyntaxException e10) {
            throw new HttpException("Cannot convert host to URI: " + httpHost, e10);
        }
    }

    @Override // org.apache.http.conn.routing.HttpRoutePlanner
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        if (httpRequest != null) {
            HttpRoute forcedRoute = ConnRouteParams.getForcedRoute(httpRequest.getParams());
            if (forcedRoute != null) {
                return forcedRoute;
            }
            if (httpHost != null) {
                InetAddress localAddress = ConnRouteParams.getLocalAddress(httpRequest.getParams());
                HttpHost determineProxy = determineProxy(httpHost, httpRequest, httpContext);
                boolean isLayered = this.schemeRegistry.getScheme(httpHost.getSchemeName()).isLayered();
                if (determineProxy == null) {
                    return new HttpRoute(httpHost, localAddress, isLayered);
                }
                return new HttpRoute(httpHost, localAddress, determineProxy, isLayered);
            }
            throw new IllegalStateException("Target host must not be null.");
        }
        throw new IllegalStateException("Request must not be null.");
    }

    public String getHost(InetSocketAddress inetSocketAddress) {
        return inetSocketAddress.isUnresolved() ? inetSocketAddress.getHostName() : inetSocketAddress.getAddress().getHostAddress();
    }

    public ProxySelector getProxySelector() {
        return this.proxySelector;
    }

    public void setProxySelector(ProxySelector proxySelector) {
        this.proxySelector = proxySelector;
    }
}
