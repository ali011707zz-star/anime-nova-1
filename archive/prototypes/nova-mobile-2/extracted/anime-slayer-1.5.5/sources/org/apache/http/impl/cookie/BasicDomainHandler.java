package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Immutable
/* loaded from: classes2.dex */
public class BasicDomainHandler implements CookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            String host = cookieOrigin.getHost();
            String domain = cookie.getDomain();
            if (domain == null) {
                return false;
            }
            if (host.equals(domain)) {
                return true;
            }
            if (!domain.startsWith(".")) {
                domain = '.' + domain;
            }
            return host.endsWith(domain) || host.equals(domain.substring(1));
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        if (setCookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (str != null) {
            if (str.trim().length() != 0) {
                setCookie.setDomain(str);
                return;
            }
            throw new MalformedCookieException("Blank value for domain attribute");
        }
        throw new MalformedCookieException("Missing value for domain attribute");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            String host = cookieOrigin.getHost();
            String domain = cookie.getDomain();
            if (domain != null) {
                if (host.contains(".")) {
                    if (host.endsWith(domain)) {
                        return;
                    }
                    if (domain.startsWith(".")) {
                        domain = domain.substring(1, domain.length());
                    }
                    if (host.equals(domain)) {
                        return;
                    }
                    throw new CookieRestrictionViolationException("Illegal domain attribute \"" + domain + "\". Domain of origin: \"" + host + "\"");
                }
                if (host.equals(domain)) {
                    return;
                }
                throw new CookieRestrictionViolationException("Illegal domain attribute \"" + domain + "\". Domain of origin: \"" + host + "\"");
            }
            throw new CookieRestrictionViolationException("Cookie domain may not be null");
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }
}
