package org.apache.http.impl.cookie;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.cookie.SetCookie2;

@Immutable
/* loaded from: classes2.dex */
public class RFC2965PortAttributeHandler implements CookieAttributeHandler {
    private static int[] parsePortAttribute(String str) throws MalformedCookieException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                iArr[i10] = Integer.parseInt(stringTokenizer.nextToken().trim());
                if (iArr[i10] < 0) {
                    throw new MalformedCookieException("Invalid Port attribute.");
                }
                i10++;
            } catch (NumberFormatException e10) {
                throw new MalformedCookieException("Invalid Port attribute: " + e10.getMessage());
            }
        }
        return iArr;
    }

    private static boolean portMatch(int i10, int[] iArr) {
        for (int i11 : iArr) {
            if (i10 == i11) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            int port = cookieOrigin.getPort();
            if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute(ClientCookie.PORT_ATTR)) {
                return cookie.getPorts() != null && portMatch(port, cookie.getPorts());
            }
            return true;
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        if (setCookie != null) {
            if (setCookie instanceof SetCookie2) {
                SetCookie2 setCookie2 = (SetCookie2) setCookie;
                if (str == null || str.trim().length() <= 0) {
                    return;
                }
                setCookie2.setPorts(parsePortAttribute(str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Cookie may not be null");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            int port = cookieOrigin.getPort();
            if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute(ClientCookie.PORT_ATTR) && !portMatch(port, cookie.getPorts())) {
                throw new CookieRestrictionViolationException("Port attribute violates RFC 2965: Request port not found in cookie's port list.");
            }
            return;
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }
}
