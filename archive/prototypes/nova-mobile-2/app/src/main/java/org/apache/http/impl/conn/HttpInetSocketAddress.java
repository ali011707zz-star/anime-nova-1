package org.apache.http.impl.conn;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import org.apache.http.HttpHost;

/* loaded from: classes2.dex */
class HttpInetSocketAddress extends InetSocketAddress {
    private static final long serialVersionUID = -6650701828361907957L;
    private final HttpHost host;

    public HttpInetSocketAddress(HttpHost httpHost, InetAddress inetAddress, int i10) {
        super(inetAddress, i10);
        if (httpHost != null) {
            this.host = httpHost;
            return;
        }
        throw new IllegalArgumentException("HTTP host may not be null");
    }

    public HttpHost getHost() {
        return this.host;
    }

    @Override // java.net.InetSocketAddress
    public String toString() {
        return this.host.getHostName() + ":" + getPort();
    }
}
