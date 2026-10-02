package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class RequestAuthCache implements HttpRequestInterceptor {
    private final Log log = LogFactory.getLog(getClass());

    private void doPreemptiveAuth(HttpHost httpHost, AuthScheme authScheme, AuthState authState, CredentialsProvider credentialsProvider) {
        String schemeName = authScheme.getSchemeName();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Re-using cached '" + schemeName + "' auth scheme for " + httpHost);
        }
        Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort(), AuthScope.ANY_REALM, schemeName));
        if (credentials != null) {
            authState.setAuthScheme(authScheme);
            authState.setCredentials(credentials);
        } else {
            this.log.debug("No credentials for preemptive authentication");
        }
    }

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        AuthScheme authScheme;
        AuthScheme authScheme2;
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpContext != null) {
            AuthCache authCache = (AuthCache) httpContext.getAttribute(ClientContext.AUTH_CACHE);
            if (authCache == null) {
                this.log.debug("Auth cache not set in the context");
                return;
            }
            CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
            if (credentialsProvider == null) {
                this.log.debug("Credentials provider not set in the context");
                return;
            }
            HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
            AuthState authState = (AuthState) httpContext.getAttribute(ClientContext.TARGET_AUTH_STATE);
            if (httpHost != null && authState != null && authState.getAuthScheme() == null && (authScheme2 = authCache.get(httpHost)) != null) {
                doPreemptiveAuth(httpHost, authScheme2, authState, credentialsProvider);
            }
            HttpHost httpHost2 = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_PROXY_HOST);
            AuthState authState2 = (AuthState) httpContext.getAttribute(ClientContext.PROXY_AUTH_STATE);
            if (httpHost2 == null || authState2 == null || authState2.getAuthScheme() != null || (authScheme = authCache.get(httpHost2)) == null) {
                return;
            }
            doPreemptiveAuth(httpHost2, authScheme, authState2, credentialsProvider);
            return;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }
}
