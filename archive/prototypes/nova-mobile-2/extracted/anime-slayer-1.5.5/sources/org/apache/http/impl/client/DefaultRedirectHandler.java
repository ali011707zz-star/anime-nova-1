package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Deprecated
@Immutable
/* loaded from: classes2.dex */
public class DefaultRedirectHandler implements RedirectHandler {
    private static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    @Override // org.apache.http.client.RedirectHandler
    public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI rewriteURI;
        if (httpResponse != null) {
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (firstHeader != null) {
                String value = firstHeader.getValue();
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Redirect requested to location '" + value + "'");
                }
                try {
                    URI uri = new URI(value);
                    HttpParams params = httpResponse.getParams();
                    if (!uri.isAbsolute()) {
                        if (!params.isParameterTrue(ClientPNames.REJECT_RELATIVE_REDIRECT)) {
                            HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                            if (httpHost != null) {
                                try {
                                    uri = URIUtils.resolve(URIUtils.rewriteURI(new URI(((HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST)).getRequestLine().getUri()), httpHost, true), uri);
                                } catch (URISyntaxException e10) {
                                    throw new ProtocolException(e10.getMessage(), e10);
                                }
                            } else {
                                throw new IllegalStateException("Target host not available in the HTTP context");
                            }
                        } else {
                            throw new ProtocolException("Relative redirect location '" + uri + "' not allowed");
                        }
                    }
                    if (params.isParameterFalse(ClientPNames.ALLOW_CIRCULAR_REDIRECTS)) {
                        RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute("http.protocol.redirect-locations");
                        if (redirectLocations == null) {
                            redirectLocations = new RedirectLocations();
                            httpContext.setAttribute("http.protocol.redirect-locations", redirectLocations);
                        }
                        if (uri.getFragment() != null) {
                            try {
                                rewriteURI = URIUtils.rewriteURI(uri, new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme()), true);
                            } catch (URISyntaxException e11) {
                                throw new ProtocolException(e11.getMessage(), e11);
                            }
                        } else {
                            rewriteURI = uri;
                        }
                        if (!redirectLocations.contains(rewriteURI)) {
                            redirectLocations.add(rewriteURI);
                        } else {
                            throw new CircularRedirectException("Circular redirect to '" + rewriteURI + "'");
                        }
                    }
                    return uri;
                } catch (URISyntaxException e12) {
                    throw new ProtocolException("Invalid redirect URI: " + value, e12);
                }
            }
            throw new ProtocolException("Received redirect response " + httpResponse.getStatusLine() + " but no location header");
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    @Override // org.apache.http.client.RedirectHandler
    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode != 307) {
                switch (statusCode) {
                    case HttpStatus.SC_MOVED_PERMANENTLY /* 301 */:
                    case HttpStatus.SC_MOVED_TEMPORARILY /* 302 */:
                        break;
                    case HttpStatus.SC_SEE_OTHER /* 303 */:
                        return true;
                    default:
                        return false;
                }
            }
            String method = ((HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST)).getRequestLine().getMethod();
            return method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME);
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }
}
