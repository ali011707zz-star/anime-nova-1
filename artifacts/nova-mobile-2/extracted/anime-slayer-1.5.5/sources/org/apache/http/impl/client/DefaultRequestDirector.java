package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.AbortableHttpRequest;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.BasicManagedEntity;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.EntityUtils;

@NotThreadSafe
/* loaded from: classes2.dex */
public class DefaultRequestDirector implements RequestDirector {
    public final ClientConnectionManager connManager;
    private int execCount;
    public final HttpProcessor httpProcessor;
    public final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    public ManagedClientConnection managedConn;
    private int maxRedirects;
    public final HttpParams params;
    public final AuthenticationHandler proxyAuthHandler;
    public final AuthState proxyAuthState;
    private int redirectCount;

    @Deprecated
    public final RedirectHandler redirectHandler;
    public final RedirectStrategy redirectStrategy;
    public final HttpRequestExecutor requestExec;
    public final HttpRequestRetryHandler retryHandler;
    public final ConnectionReuseStrategy reuseStrategy;
    public final HttpRoutePlanner routePlanner;
    public final AuthenticationHandler targetAuthHandler;
    public final AuthState targetAuthState;
    public final UserTokenHandler userTokenHandler;
    private HttpHost virtualHost;

    @Deprecated
    public DefaultRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this(LogFactory.getLog(DefaultRequestDirector.class), httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, new DefaultRedirectStrategyAdaptor(redirectHandler), authenticationHandler, authenticationHandler2, userTokenHandler, httpParams);
    }

    private void abortConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            this.managedConn = null;
            try {
                managedClientConnection.abortConnection();
            } catch (IOException e10) {
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e10.getMessage(), e10);
                }
            }
            try {
                managedClientConnection.releaseConnection();
            } catch (IOException e11) {
                this.log.debug("Error releasing connection", e11);
            }
        }
    }

    private void invalidateAuthIfSuccessful(AuthState authState) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme == null || !authScheme.isConnectionBased() || !authScheme.isComplete() || authState.getCredentials() == null) {
            return;
        }
        authState.invalidate();
    }

    private void processChallenges(Map<String, Header> map, AuthState authState, AuthenticationHandler authenticationHandler, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException, AuthenticationException {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme == null) {
            authScheme = authenticationHandler.selectScheme(map, httpResponse, httpContext);
            authState.setAuthScheme(authScheme);
        }
        String schemeName = authScheme.getSchemeName();
        Header header = map.get(schemeName.toLowerCase(Locale.ENGLISH));
        if (header != null) {
            authScheme.processChallenge(header);
            this.log.debug("Authorization challenge processed");
        } else {
            throw new AuthenticationException(schemeName + " authorization challenge expected, but not found");
        }
    }

    private void tryConnect(RoutedRequest routedRequest, HttpContext httpContext) throws HttpException, IOException {
        HttpRoute route = routedRequest.getRoute();
        int i10 = 0;
        while (true) {
            i10++;
            try {
                if (!this.managedConn.isOpen()) {
                    this.managedConn.open(route, httpContext, this.params);
                } else {
                    this.managedConn.setSocketTimeout(HttpConnectionParams.getSoTimeout(this.params));
                }
                establishRoute(route, httpContext);
                return;
            } catch (IOException e10) {
                try {
                    this.managedConn.close();
                } catch (IOException unused) {
                }
                if (!this.retryHandler.retryRequest(e10, i10, httpContext)) {
                    throw e10;
                }
                if (this.log.isInfoEnabled()) {
                    this.log.info("I/O exception (" + e10.getClass().getName() + ") caught when connecting to the target host: " + e10.getMessage());
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e10.getMessage(), e10);
                }
                this.log.info("Retrying connect");
            }
        }
    }

    private HttpResponse tryExecute(RoutedRequest routedRequest, HttpContext httpContext) throws HttpException, IOException {
        RequestWrapper request = routedRequest.getRequest();
        HttpRoute route = routedRequest.getRoute();
        IOException e10 = null;
        while (true) {
            this.execCount++;
            request.incrementExecCount();
            if (!request.isRepeatable()) {
                this.log.debug("Cannot retry non-repeatable request");
                if (e10 != null) {
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", e10);
                }
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
            }
            try {
                if (!this.managedConn.isOpen()) {
                    if (!route.isTunnelled()) {
                        this.log.debug("Reopening the direct connection.");
                        this.managedConn.open(route, httpContext, this.params);
                    } else {
                        this.log.debug("Proxied connection. Need to start over.");
                        return null;
                    }
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Attempt " + this.execCount + " to execute request");
                }
                return this.requestExec.execute(request, this.managedConn, httpContext);
            } catch (IOException e11) {
                e10 = e11;
                this.log.debug("Closing the connection.");
                try {
                    this.managedConn.close();
                } catch (IOException unused) {
                }
                if (!this.retryHandler.retryRequest(e10, request.getExecCount(), httpContext)) {
                    throw e10;
                }
                if (this.log.isInfoEnabled()) {
                    this.log.info("I/O exception (" + e10.getClass().getName() + ") caught when processing request: " + e10.getMessage());
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e10.getMessage(), e10);
                }
                this.log.info("Retrying request");
            }
        }
    }

    private void updateAuthState(AuthState authState, HttpHost httpHost, CredentialsProvider credentialsProvider) {
        if (authState.isValid()) {
            String hostName = httpHost.getHostName();
            int port = httpHost.getPort();
            if (port < 0) {
                port = this.connManager.getSchemeRegistry().getScheme(httpHost).getDefaultPort();
            }
            AuthScheme authScheme = authState.getAuthScheme();
            AuthScope authScope = new AuthScope(hostName, port, authScheme.getRealm(), authScheme.getSchemeName());
            if (this.log.isDebugEnabled()) {
                this.log.debug("Authentication scope: " + authScope);
            }
            Credentials credentials = authState.getCredentials();
            if (credentials == null) {
                credentials = credentialsProvider.getCredentials(authScope);
                if (this.log.isDebugEnabled()) {
                    if (credentials != null) {
                        this.log.debug("Found credentials");
                    } else {
                        this.log.debug("Credentials not found");
                    }
                }
            } else if (authScheme.isComplete()) {
                this.log.debug("Authentication failed");
                credentials = null;
            }
            authState.setAuthScope(authScope);
            authState.setCredentials(credentials);
        }
    }

    private RequestWrapper wrapRequest(HttpRequest httpRequest) throws ProtocolException {
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            return new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest);
        }
        return new RequestWrapper(httpRequest);
    }

    public HttpRequest createConnectRequest(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost targetHost = httpRoute.getTargetHost();
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = this.connManager.getSchemeRegistry().getScheme(targetHost.getSchemeName()).getDefaultPort();
        }
        StringBuilder sb2 = new StringBuilder(hostName.length() + 6);
        sb2.append(hostName);
        sb2.append(':');
        sb2.append(Integer.toString(port));
        return new BasicHttpRequest("CONNECT", sb2.toString(), HttpProtocolParams.getVersion(this.params));
    }

    public boolean createTunnelToProxy(HttpRoute httpRoute, int i10, HttpContext httpContext) throws HttpException, IOException {
        throw new HttpException("Proxy chains are not supported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createTunnelToTarget(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        CredentialsProvider credentialsProvider;
        boolean z10;
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpHost targetHost = httpRoute.getTargetHost();
        HttpResponse httpResponse = null;
        boolean z11 = false;
        while (true) {
            if (z11) {
                break;
            }
            if (!this.managedConn.isOpen()) {
                this.managedConn.open(httpRoute, httpContext, this.params);
            }
            HttpRequest createConnectRequest = createConnectRequest(httpRoute, httpContext);
            createConnectRequest.setParams(this.params);
            httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, targetHost);
            httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
            httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
            httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
            httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
            httpContext.setAttribute(ExecutionContext.HTTP_REQUEST, createConnectRequest);
            this.requestExec.preProcess(createConnectRequest, this.httpProcessor, httpContext);
            HttpResponse execute = this.requestExec.execute(createConnectRequest, this.managedConn, httpContext);
            execute.setParams(this.params);
            this.requestExec.postProcess(execute, this.httpProcessor, httpContext);
            if (execute.getStatusLine().getStatusCode() >= 200) {
                CredentialsProvider credentialsProvider2 = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
                if (credentialsProvider2 != null && HttpClientParams.isAuthenticating(this.params)) {
                    if (this.proxyAuthHandler.isAuthenticationRequested(execute, httpContext)) {
                        this.log.debug("Proxy requested authentication");
                        try {
                            credentialsProvider = credentialsProvider2;
                        } catch (AuthenticationException e10) {
                            e = e10;
                            credentialsProvider = credentialsProvider2;
                        }
                        try {
                            processChallenges(this.proxyAuthHandler.getChallenges(execute, httpContext), this.proxyAuthState, this.proxyAuthHandler, execute, httpContext);
                        } catch (AuthenticationException e11) {
                            e = e11;
                            if (this.log.isWarnEnabled()) {
                                this.log.warn("Authentication error: " + e.getMessage());
                                httpResponse = execute;
                                if (httpResponse.getStatusLine().getStatusCode() <= 299) {
                                }
                            }
                            updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                            if (this.proxyAuthState.getCredentials() == null) {
                            }
                            z11 = z10;
                            httpResponse = execute;
                        }
                        updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                        if (this.proxyAuthState.getCredentials() == null) {
                            if (this.reuseStrategy.keepAlive(execute, httpContext)) {
                                this.log.debug("Connection kept alive");
                                EntityUtils.consume(execute.getEntity());
                            } else {
                                this.managedConn.close();
                            }
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        z11 = z10;
                        httpResponse = execute;
                    } else {
                        this.proxyAuthState.setAuthScope(null);
                    }
                }
                z11 = true;
                httpResponse = execute;
            } else {
                throw new HttpException("Unexpected response to CONNECT request: " + execute.getStatusLine());
            }
        }
        if (httpResponse.getStatusLine().getStatusCode() <= 299) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                httpResponse.setEntity(new BufferedHttpEntity(entity));
            }
            this.managedConn.close();
            throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponse.getStatusLine(), httpResponse);
        }
        this.managedConn.markReusable();
        return false;
    }

    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        if (httpHost == null) {
            httpHost = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HOST);
        }
        if (httpHost != null) {
            return this.routePlanner.determineRoute(httpHost, httpRequest, httpContext);
        }
        throw new IllegalStateException("Target host must not be null, or set in parameters.");
    }

    public void establishRoute(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        int nextStep;
        BasicRouteDirector basicRouteDirector = new BasicRouteDirector();
        do {
            HttpRoute route = this.managedConn.getRoute();
            nextStep = basicRouteDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    break;
                case 1:
                case 2:
                    this.managedConn.open(httpRoute, httpContext, this.params);
                    break;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(httpRoute, httpContext);
                    this.log.debug("Tunnel to target created.");
                    this.managedConn.tunnelTarget(createTunnelToTarget, this.params);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpContext);
                    this.log.debug("Tunnel to proxy created.");
                    this.managedConn.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy, this.params);
                    break;
                case 5:
                    this.managedConn.layerProtocol(httpContext, this.params);
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x01f2, code lost:
    
        r11.managedConn.markReusable();
     */
    @Override // org.apache.http.client.RequestDirector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        String str;
        int port;
        RequestWrapper wrapRequest = wrapRequest(httpRequest);
        wrapRequest.setParams(this.params);
        HttpRoute determineRoute = determineRoute(httpHost, wrapRequest, httpContext);
        HttpHost httpHost2 = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.VIRTUAL_HOST);
        this.virtualHost = httpHost2;
        if (httpHost2 != null && httpHost2.getPort() == -1 && (port = httpHost.getPort()) != -1) {
            this.virtualHost = new HttpHost(this.virtualHost.getHostName(), port, this.virtualHost.getSchemeName());
        }
        RoutedRequest routedRequest = new RoutedRequest(wrapRequest, determineRoute);
        HttpResponse httpResponse = null;
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                RequestWrapper request = routedRequest.getRequest();
                HttpRoute route = routedRequest.getRoute();
                Object attribute = httpContext.getAttribute(ClientContext.USER_TOKEN);
                if (this.managedConn == null) {
                    ClientConnectionRequest requestConnection = this.connManager.requestConnection(route, attribute);
                    if (httpRequest instanceof AbortableHttpRequest) {
                        ((AbortableHttpRequest) httpRequest).setConnectionRequest(requestConnection);
                    }
                    try {
                        this.managedConn = requestConnection.getConnection(ConnManagerParams.getTimeout(this.params), TimeUnit.MILLISECONDS);
                        if (HttpConnectionParams.isStaleCheckingEnabled(this.params) && this.managedConn.isOpen()) {
                            this.log.debug("Stale connection check");
                            if (this.managedConn.isStale()) {
                                this.log.debug("Stale connection detected");
                                this.managedConn.close();
                            }
                        }
                    } catch (InterruptedException e10) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException();
                        interruptedIOException.initCause(e10);
                        throw interruptedIOException;
                    }
                }
                if (httpRequest instanceof AbortableHttpRequest) {
                    ((AbortableHttpRequest) httpRequest).setReleaseTrigger(this.managedConn);
                }
                try {
                    tryConnect(routedRequest, httpContext);
                    request.resetHeaders();
                    rewriteRequestURI(request, route);
                    HttpHost httpHost3 = this.virtualHost;
                    if (httpHost3 == null) {
                        httpHost3 = route.getTargetHost();
                    }
                    HttpHost proxyHost = route.getProxyHost();
                    httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, httpHost3);
                    httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
                    httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
                    httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
                    httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
                    this.requestExec.preProcess(request, this.httpProcessor, httpContext);
                    httpResponse = tryExecute(routedRequest, httpContext);
                    if (httpResponse != null) {
                        httpResponse.setParams(this.params);
                        this.requestExec.postProcess(httpResponse, this.httpProcessor, httpContext);
                        z11 = this.reuseStrategy.keepAlive(httpResponse, httpContext);
                        if (z11) {
                            long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(httpResponse, httpContext);
                            if (this.log.isDebugEnabled()) {
                                if (keepAliveDuration > 0) {
                                    str = "for " + keepAliveDuration + " " + TimeUnit.MILLISECONDS;
                                } else {
                                    str = "indefinitely";
                                }
                                this.log.debug("Connection can be kept alive " + str);
                            }
                            this.managedConn.setIdleDuration(keepAliveDuration, TimeUnit.MILLISECONDS);
                        }
                        RoutedRequest handleResponse = handleResponse(routedRequest, httpResponse, httpContext);
                        if (handleResponse == null) {
                            z10 = true;
                        } else {
                            if (z11) {
                                EntityUtils.consume(httpResponse.getEntity());
                                this.managedConn.markReusable();
                            } else {
                                this.managedConn.close();
                                invalidateAuthIfSuccessful(this.proxyAuthState);
                                invalidateAuthIfSuccessful(this.targetAuthState);
                            }
                            if (!handleResponse.getRoute().equals(routedRequest.getRoute())) {
                                releaseConnection();
                            }
                            routedRequest = handleResponse;
                        }
                        if (this.managedConn != null && attribute == null) {
                            Object userToken = this.userTokenHandler.getUserToken(httpContext);
                            httpContext.setAttribute(ClientContext.USER_TOKEN, userToken);
                            if (userToken != null) {
                                this.managedConn.setState(userToken);
                            }
                        }
                    }
                } catch (TunnelRefusedException e11) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e11.getMessage());
                    }
                    httpResponse = e11.getResponse();
                }
            } catch (IOException e12) {
                abortConnection();
                throw e12;
            } catch (HttpException e13) {
                abortConnection();
                throw e13;
            } catch (ConnectionShutdownException e14) {
                InterruptedIOException interruptedIOException2 = new InterruptedIOException("Connection has been shut down");
                interruptedIOException2.initCause(e14);
                throw interruptedIOException2;
            } catch (RuntimeException e15) {
                abortConnection();
                throw e15;
            }
        }
        if (httpResponse != null && httpResponse.getEntity() != null && httpResponse.getEntity().isStreaming()) {
            httpResponse.setEntity(new BasicManagedEntity(httpResponse.getEntity(), this.managedConn, z11));
            return httpResponse;
        }
        releaseConnection();
        return httpResponse;
    }

    public RoutedRequest handleResponse(RoutedRequest routedRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        HttpRoute route = routedRequest.getRoute();
        RequestWrapper request = routedRequest.getRequest();
        HttpParams params = request.getParams();
        if (HttpClientParams.isRedirecting(params) && this.redirectStrategy.isRedirected(request, httpResponse, httpContext)) {
            int i10 = this.redirectCount;
            if (i10 < this.maxRedirects) {
                this.redirectCount = i10 + 1;
                this.virtualHost = null;
                HttpUriRequest redirect = this.redirectStrategy.getRedirect(request, httpResponse, httpContext);
                redirect.setHeaders(request.getOriginal().getAllHeaders());
                URI uri = redirect.getURI();
                if (uri.getHost() != null) {
                    HttpHost httpHost = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
                    this.targetAuthState.setAuthScope(null);
                    this.proxyAuthState.setAuthScope(null);
                    if (!route.getTargetHost().equals(httpHost)) {
                        this.targetAuthState.invalidate();
                        AuthScheme authScheme = this.proxyAuthState.getAuthScheme();
                        if (authScheme != null && authScheme.isConnectionBased()) {
                            this.proxyAuthState.invalidate();
                        }
                    }
                    RequestWrapper wrapRequest = wrapRequest(redirect);
                    wrapRequest.setParams(params);
                    HttpRoute determineRoute = determineRoute(httpHost, wrapRequest, httpContext);
                    RoutedRequest routedRequest2 = new RoutedRequest(wrapRequest, determineRoute);
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Redirecting to '" + uri + "' via " + determineRoute);
                    }
                    return routedRequest2;
                }
                throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
            }
            throw new RedirectException("Maximum redirects (" + this.maxRedirects + ") exceeded");
        }
        CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
        if (credentialsProvider != null && HttpClientParams.isAuthenticating(params)) {
            if (this.targetAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                HttpHost httpHost2 = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                if (httpHost2 == null) {
                    httpHost2 = route.getTargetHost();
                }
                this.log.debug("Target requested authentication");
                try {
                    processChallenges(this.targetAuthHandler.getChallenges(httpResponse, httpContext), this.targetAuthState, this.targetAuthHandler, httpResponse, httpContext);
                } catch (AuthenticationException e10) {
                    if (this.log.isWarnEnabled()) {
                        this.log.warn("Authentication error: " + e10.getMessage());
                        return null;
                    }
                }
                updateAuthState(this.targetAuthState, httpHost2, credentialsProvider);
                if (this.targetAuthState.getCredentials() != null) {
                    return routedRequest;
                }
                return null;
            }
            this.targetAuthState.setAuthScope(null);
            if (this.proxyAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                HttpHost proxyHost = route.getProxyHost();
                this.log.debug("Proxy requested authentication");
                try {
                    processChallenges(this.proxyAuthHandler.getChallenges(httpResponse, httpContext), this.proxyAuthState, this.proxyAuthHandler, httpResponse, httpContext);
                } catch (AuthenticationException e11) {
                    if (this.log.isWarnEnabled()) {
                        this.log.warn("Authentication error: " + e11.getMessage());
                        return null;
                    }
                }
                updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                if (this.proxyAuthState.getCredentials() != null) {
                    return routedRequest;
                }
                return null;
            }
            this.proxyAuthState.setAuthScope(null);
        }
        return null;
    }

    public void releaseConnection() {
        try {
            this.managedConn.releaseConnection();
        } catch (IOException e10) {
            this.log.debug("IOException releasing connection", e10);
        }
        this.managedConn = null;
    }

    public void rewriteRequestURI(RequestWrapper requestWrapper, HttpRoute httpRoute) throws ProtocolException {
        try {
            URI uri = requestWrapper.getURI();
            if (httpRoute.getProxyHost() != null && !httpRoute.isTunnelled()) {
                if (uri.isAbsolute()) {
                    return;
                }
                requestWrapper.setURI(URIUtils.rewriteURI(uri, httpRoute.getTargetHost()));
            } else if (uri.isAbsolute()) {
                requestWrapper.setURI(URIUtils.rewriteURI(uri, null));
            }
        } catch (URISyntaxException e10) {
            throw new ProtocolException("Invalid URI: " + requestWrapper.getRequestLine().getUri(), e10);
        }
    }

    public DefaultRequestDirector(Log log, HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this.redirectHandler = null;
        if (log == null) {
            throw new IllegalArgumentException("Log may not be null.");
        }
        if (httpRequestExecutor == null) {
            throw new IllegalArgumentException("Request executor may not be null.");
        }
        if (clientConnectionManager == null) {
            throw new IllegalArgumentException("Client connection manager may not be null.");
        }
        if (connectionReuseStrategy == null) {
            throw new IllegalArgumentException("Connection reuse strategy may not be null.");
        }
        if (connectionKeepAliveStrategy == null) {
            throw new IllegalArgumentException("Connection keep alive strategy may not be null.");
        }
        if (httpRoutePlanner == null) {
            throw new IllegalArgumentException("Route planner may not be null.");
        }
        if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP protocol processor may not be null.");
        }
        if (httpRequestRetryHandler == null) {
            throw new IllegalArgumentException("HTTP request retry handler may not be null.");
        }
        if (redirectStrategy == null) {
            throw new IllegalArgumentException("Redirect strategy may not be null.");
        }
        if (authenticationHandler == null) {
            throw new IllegalArgumentException("Target authentication handler may not be null.");
        }
        if (authenticationHandler2 == null) {
            throw new IllegalArgumentException("Proxy authentication handler may not be null.");
        }
        if (userTokenHandler == null) {
            throw new IllegalArgumentException("User token handler may not be null.");
        }
        if (httpParams != null) {
            this.log = log;
            this.requestExec = httpRequestExecutor;
            this.connManager = clientConnectionManager;
            this.reuseStrategy = connectionReuseStrategy;
            this.keepAliveStrategy = connectionKeepAliveStrategy;
            this.routePlanner = httpRoutePlanner;
            this.httpProcessor = httpProcessor;
            this.retryHandler = httpRequestRetryHandler;
            this.redirectStrategy = redirectStrategy;
            this.targetAuthHandler = authenticationHandler;
            this.proxyAuthHandler = authenticationHandler2;
            this.userTokenHandler = userTokenHandler;
            this.params = httpParams;
            this.managedConn = null;
            this.execCount = 0;
            this.redirectCount = 0;
            this.maxRedirects = httpParams.getIntParameter(ClientPNames.MAX_REDIRECTS, 100);
            this.targetAuthState = new AuthState();
            this.proxyAuthState = new AuthState();
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }
}
