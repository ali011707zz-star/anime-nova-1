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
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes2.dex */
public class DefaultRedirectStrategy implements RedirectStrategy {
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    public URI createLocationURI(String str) throws ProtocolException {
        try {
            return new URI(str);
        } catch (URISyntaxException e10) {
            throw new ProtocolException("Invalid redirect URI: " + str, e10);
        }
    }

    public URI getLocationURI(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI rewriteURI;
        if (httpResponse != null) {
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (firstHeader != null) {
                String value = firstHeader.getValue();
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Redirect requested to location '" + value + "'");
                }
                URI createLocationURI = createLocationURI(value);
                HttpParams params = httpResponse.getParams();
                if (!createLocationURI.isAbsolute()) {
                    if (!params.isParameterTrue(ClientPNames.REJECT_RELATIVE_REDIRECT)) {
                        HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                        if (httpHost != null) {
                            try {
                                createLocationURI = URIUtils.resolve(URIUtils.rewriteURI(new URI(httpRequest.getRequestLine().getUri()), httpHost, true), createLocationURI);
                            } catch (URISyntaxException e10) {
                                throw new ProtocolException(e10.getMessage(), e10);
                            }
                        } else {
                            throw new IllegalStateException("Target host not available in the HTTP context");
                        }
                    } else {
                        throw new ProtocolException("Relative redirect location '" + createLocationURI + "' not allowed");
                    }
                }
                if (params.isParameterFalse(ClientPNames.ALLOW_CIRCULAR_REDIRECTS)) {
                    RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute(REDIRECT_LOCATIONS);
                    if (redirectLocations == null) {
                        redirectLocations = new RedirectLocations();
                        httpContext.setAttribute(REDIRECT_LOCATIONS, redirectLocations);
                    }
                    if (createLocationURI.getFragment() != null) {
                        try {
                            rewriteURI = URIUtils.rewriteURI(createLocationURI, new HttpHost(createLocationURI.getHost(), createLocationURI.getPort(), createLocationURI.getScheme()), true);
                        } catch (URISyntaxException e11) {
                            throw new ProtocolException(e11.getMessage(), e11);
                        }
                    } else {
                        rewriteURI = createLocationURI;
                    }
                    if (!redirectLocations.contains(rewriteURI)) {
                        redirectLocations.add(rewriteURI);
                    } else {
                        throw new CircularRedirectException("Circular redirect to '" + rewriteURI + "'");
                    }
                }
                return createLocationURI;
            }
            throw new ProtocolException("Received redirect response " + httpResponse.getStatusLine() + " but no location header");
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    @Override // org.apache.http.client.RedirectStrategy
    public HttpUriRequest getRedirect(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI locationURI = getLocationURI(httpRequest, httpResponse, httpContext);
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase(HttpHead.METHOD_NAME)) {
            return new HttpHead(locationURI);
        }
        return new HttpGet(locationURI);
    }

    @Override // org.apache.http.client.RedirectStrategy
    public boolean isRedirected(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        if (httpResponse != null) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            String method = httpRequest.getRequestLine().getMethod();
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (statusCode != 307) {
                switch (statusCode) {
                    case HttpStatus.SC_MOVED_PERMANENTLY /* 301 */:
                        break;
                    case HttpStatus.SC_MOVED_TEMPORARILY /* 302 */:
                        return (method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME)) && firstHeader != null;
                    case HttpStatus.SC_SEE_OTHER /* 303 */:
                        return true;
                    default:
                        return false;
                }
            }
            return method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME);
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }
}
