package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Immutable
/* loaded from: classes2.dex */
public class RFC2109VersionHandler extends AbstractCookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        if (setCookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (str != null) {
            if (str.trim().length() != 0) {
                try {
                    setCookie.setVersion(Integer.parseInt(str));
                    return;
                } catch (NumberFormatException e10) {
                    throw new MalformedCookieException("Invalid version: " + e10.getMessage());
                }
            }
            throw new MalformedCookieException("Blank value for version attribute");
        }
        throw new MalformedCookieException("Missing value for version attribute");
    }

    @Override // org.apache.http.impl.cookie.AbstractCookieAttributeHandler, org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (cookie != null) {
            if (cookie.getVersion() < 0) {
                throw new CookieRestrictionViolationException("Cookie version may not be negative");
            }
            return;
        }
        throw new IllegalArgumentException("Cookie may not be null");
    }
}
