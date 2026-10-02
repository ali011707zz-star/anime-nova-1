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
public class BasicPathHandler implements CookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            String path = cookieOrigin.getPath();
            String path2 = cookie.getPath();
            if (path2 == null) {
                path2 = "/";
            }
            if (path2.length() > 1 && path2.endsWith("/")) {
                path2 = path2.substring(0, path2.length() - 1);
            }
            boolean startsWith = path.startsWith(path2);
            if (!startsWith || path.length() == path2.length() || path2.endsWith("/")) {
                return startsWith;
            }
            return path.charAt(path2.length()) == '/';
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        if (setCookie != null) {
            if (str == null || str.trim().length() == 0) {
                str = "/";
            }
            setCookie.setPath(str);
            return;
        }
        throw new IllegalArgumentException("Cookie may not be null");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (match(cookie, cookieOrigin)) {
            return;
        }
        throw new CookieRestrictionViolationException("Illegal path attribute \"" + cookie.getPath() + "\". Path of origin: \"" + cookieOrigin.getPath() + "\"");
    }
}
