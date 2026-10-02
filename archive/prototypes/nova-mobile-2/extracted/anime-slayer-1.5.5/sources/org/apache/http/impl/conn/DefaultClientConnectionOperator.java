package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SchemeSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@ThreadSafe
/* loaded from: classes2.dex */
public class DefaultClientConnectionOperator implements ClientConnectionOperator {
    private final Log log = LogFactory.getLog(getClass());
    public final SchemeRegistry schemeRegistry;

    public DefaultClientConnectionOperator(SchemeRegistry schemeRegistry) {
        if (schemeRegistry != null) {
            this.schemeRegistry = schemeRegistry;
            return;
        }
        throw new IllegalArgumentException("Scheme registry amy not be null");
    }

    @Override // org.apache.http.conn.ClientConnectionOperator
    public OperatedClientConnection createConnection() {
        return new DefaultClientConnection();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c6 A[SYNTHETIC] */
    @Override // org.apache.http.conn.ClientConnectionOperator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void openConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, InetAddress inetAddress, HttpContext httpContext, HttpParams httpParams) throws IOException {
        HttpContext httpContext2;
        if (operatedClientConnection == null) {
            throw new IllegalArgumentException("Connection may not be null");
        }
        if (httpHost == null) {
            throw new IllegalArgumentException("Target host may not be null");
        }
        if (httpParams != null) {
            if (!operatedClientConnection.isOpen()) {
                Scheme scheme = this.schemeRegistry.getScheme(httpHost.getSchemeName());
                SchemeSocketFactory schemeSocketFactory = scheme.getSchemeSocketFactory();
                InetAddress[] resolveHostname = resolveHostname(httpHost.getHostName());
                int resolvePort = scheme.resolvePort(httpHost.getPort());
                int i10 = 0;
                int i11 = 0;
                while (i11 < resolveHostname.length) {
                    InetAddress inetAddress2 = resolveHostname[i11];
                    boolean z10 = i11 == resolveHostname.length - 1;
                    Socket createSocket = schemeSocketFactory.createSocket(httpParams);
                    operatedClientConnection.opening(createSocket, httpHost);
                    HttpInetSocketAddress httpInetSocketAddress = new HttpInetSocketAddress(httpHost, inetAddress2, resolvePort);
                    InetSocketAddress inetSocketAddress = inetAddress != null ? new InetSocketAddress(inetAddress, i10) : null;
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Connecting to " + httpInetSocketAddress);
                    }
                    try {
                        Socket connectSocket = schemeSocketFactory.connectSocket(createSocket, httpInetSocketAddress, inetSocketAddress, httpParams);
                        if (createSocket != connectSocket) {
                            operatedClientConnection.opening(connectSocket, httpHost);
                            httpContext2 = httpContext;
                            createSocket = connectSocket;
                        } else {
                            httpContext2 = httpContext;
                        }
                    } catch (ConnectException e10) {
                        e = e10;
                    } catch (ConnectTimeoutException e11) {
                        e = e11;
                    }
                    try {
                        prepareSocket(createSocket, httpContext2, httpParams);
                        operatedClientConnection.openCompleted(schemeSocketFactory.isSecure(createSocket), httpParams);
                        return;
                    } catch (ConnectException e12) {
                        e = e12;
                        if (z10) {
                            throw new HttpHostConnectException(httpHost, e);
                        }
                        if (!this.log.isDebugEnabled()) {
                            this.log.debug("Connect to " + httpInetSocketAddress + " timed out. Connection will be retried using another IP address");
                        }
                        i11++;
                        i10 = 0;
                    } catch (ConnectTimeoutException e13) {
                        e = e13;
                        if (z10) {
                            throw e;
                        }
                        if (!this.log.isDebugEnabled()) {
                        }
                        i11++;
                        i10 = 0;
                    }
                }
                return;
            }
            throw new IllegalStateException("Connection must not be open");
        }
        throw new IllegalArgumentException("Parameters may not be null");
    }

    public void prepareSocket(Socket socket, HttpContext httpContext, HttpParams httpParams) throws IOException {
        socket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(httpParams));
        socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpParams));
        int linger = HttpConnectionParams.getLinger(httpParams);
        if (linger >= 0) {
            socket.setSoLinger(linger > 0, linger);
        }
    }

    public InetAddress[] resolveHostname(String str) throws UnknownHostException {
        return InetAddress.getAllByName(str);
    }

    @Override // org.apache.http.conn.ClientConnectionOperator
    public void updateSecureConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, HttpContext httpContext, HttpParams httpParams) throws IOException {
        if (operatedClientConnection == null) {
            throw new IllegalArgumentException("Connection may not be null");
        }
        if (httpHost == null) {
            throw new IllegalArgumentException("Target host may not be null");
        }
        if (httpParams != null) {
            if (operatedClientConnection.isOpen()) {
                Scheme scheme = this.schemeRegistry.getScheme(httpHost.getSchemeName());
                if (scheme.getSchemeSocketFactory() instanceof LayeredSchemeSocketFactory) {
                    LayeredSchemeSocketFactory layeredSchemeSocketFactory = (LayeredSchemeSocketFactory) scheme.getSchemeSocketFactory();
                    try {
                        Socket createLayeredSocket = layeredSchemeSocketFactory.createLayeredSocket(operatedClientConnection.getSocket(), httpHost.getHostName(), httpHost.getPort(), true);
                        prepareSocket(createLayeredSocket, httpContext, httpParams);
                        operatedClientConnection.update(createLayeredSocket, httpHost, layeredSchemeSocketFactory.isSecure(createLayeredSocket), httpParams);
                        return;
                    } catch (ConnectException e10) {
                        throw new HttpHostConnectException(httpHost, e10);
                    }
                }
                throw new IllegalArgumentException("Target scheme (" + scheme.getName() + ") must have layered socket factory.");
            }
            throw new IllegalStateException("Connection must be open");
        }
        throw new IllegalArgumentException("Parameters may not be null");
    }
}
