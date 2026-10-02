package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.client.utils.Punycode;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* loaded from: classes2.dex */
public class PublicSuffixFilter implements CookieAttributeHandler {
    private Set<String> exceptions;
    private Set<String> suffixes;
    private final CookieAttributeHandler wrapped;

    public PublicSuffixFilter(CookieAttributeHandler cookieAttributeHandler) {
        this.wrapped = cookieAttributeHandler;
    }

    private boolean isForPublicSuffix(Cookie cookie) {
        String domain = cookie.getDomain();
        if (domain.startsWith(".")) {
            domain = domain.substring(1);
        }
        String unicode = Punycode.toUnicode(domain);
        Set<String> set = this.exceptions;
        if ((set != null && set.contains(unicode)) || this.suffixes == null) {
            return false;
        }
        while (!this.suffixes.contains(unicode)) {
            if (unicode.startsWith("*.")) {
                unicode = unicode.substring(2);
            }
            int indexOf = unicode.indexOf(46);
            if (indexOf != -1) {
                unicode = "*" + unicode.substring(indexOf);
                if (unicode.length() <= 0) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (isForPublicSuffix(cookie)) {
            return false;
        }
        return this.wrapped.match(cookie, cookieOrigin);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        this.wrapped.parse(setCookie, str);
    }

    public void setExceptions(Collection<String> collection) {
        this.exceptions = new HashSet(collection);
    }

    public void setPublicSuffixes(Collection<String> collection) {
        this.suffixes = new HashSet(collection);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        this.wrapped.validate(cookie, cookieOrigin);
    }
}
