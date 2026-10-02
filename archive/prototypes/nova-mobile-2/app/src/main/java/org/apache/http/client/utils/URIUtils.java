package org.apache.http.client.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Stack;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class URIUtils {
    private URIUtils() {
    }

    public static URI createURI(String str, String str2, int i10, String str3, String str4, String str5) throws URISyntaxException {
        StringBuilder sb2 = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            }
            sb2.append(str2);
            if (i10 > 0) {
                sb2.append(':');
                sb2.append(i10);
            }
        }
        if (str3 == null || !str3.startsWith("/")) {
            sb2.append('/');
        }
        if (str3 != null) {
            sb2.append(str3);
        }
        if (str4 != null) {
            sb2.append('?');
            sb2.append(str4);
        }
        if (str5 != null) {
            sb2.append('#');
            sb2.append(str5);
        }
        return new URI(sb2.toString());
    }

    public static HttpHost extractHost(URI uri) {
        int indexOf;
        if (uri == null || !uri.isAbsolute()) {
            return null;
        }
        int port = uri.getPort();
        String host = uri.getHost();
        if (host == null && (host = uri.getAuthority()) != null) {
            int indexOf2 = host.indexOf(64);
            if (indexOf2 >= 0) {
                int i10 = indexOf2 + 1;
                host = host.length() > i10 ? host.substring(i10) : null;
            }
            if (host != null && (indexOf = host.indexOf(58)) >= 0) {
                int i11 = indexOf + 1;
                if (i11 < host.length()) {
                    port = Integer.parseInt(host.substring(i11));
                }
                host = host.substring(0, indexOf);
            }
        }
        String scheme = uri.getScheme();
        if (host != null) {
            return new HttpHost(host, port, scheme);
        }
        return null;
    }

    private static String normalizePath(String str) {
        if (str == null) {
            return null;
        }
        int i10 = 0;
        while (i10 < str.length() && str.charAt(i10) == '/') {
            i10++;
        }
        return i10 > 1 ? str.substring(i10 - 1) : str;
    }

    private static URI removeDotSegments(URI uri) {
        String path = uri.getPath();
        if (path == null || path.indexOf("/.") == -1) {
            return uri;
        }
        String[] split = path.split("/");
        Stack stack = new Stack();
        for (int i10 = 0; i10 < split.length; i10++) {
            if (split[i10].length() != 0 && !".".equals(split[i10])) {
                if ("..".equals(split[i10])) {
                    if (!stack.isEmpty()) {
                        stack.pop();
                    }
                } else {
                    stack.push(split[i10]);
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it2 = stack.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            sb2.append('/');
            sb2.append(str);
        }
        try {
            return new URI(uri.getScheme(), uri.getAuthority(), sb2.toString(), uri.getQuery(), uri.getFragment());
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri2) {
        String uri3 = uri.toString();
        if (uri3.indexOf(63) > -1) {
            uri3 = uri3.substring(0, uri3.indexOf(63));
        }
        return URI.create(uri3 + uri2.toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z10) throws URISyntaxException {
        if (uri == null) {
            throw new IllegalArgumentException("URI may nor be null");
        }
        if (httpHost != null) {
            return createURI(httpHost.getSchemeName(), httpHost.getHostName(), httpHost.getPort(), normalizePath(uri.getRawPath()), uri.getRawQuery(), z10 ? null : uri.getRawFragment());
        }
        return createURI(null, null, -1, normalizePath(uri.getRawPath()), uri.getRawQuery(), z10 ? null : uri.getRawFragment());
    }

    public static URI resolve(URI uri, URI uri2) {
        if (uri == null) {
            throw new IllegalArgumentException("Base URI may nor be null");
        }
        if (uri2 != null) {
            String uri3 = uri2.toString();
            if (uri3.startsWith("?")) {
                return resolveReferenceStartingWithQueryString(uri, uri2);
            }
            boolean z10 = uri3.length() == 0;
            if (z10) {
                uri2 = URI.create("#");
            }
            URI resolve = uri.resolve(uri2);
            if (z10) {
                String uri4 = resolve.toString();
                resolve = URI.create(uri4.substring(0, uri4.indexOf(35)));
            }
            return removeDotSegments(resolve);
        }
        throw new IllegalArgumentException("Reference URI may nor be null");
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) throws URISyntaxException {
        return rewriteURI(uri, httpHost, false);
    }
}
