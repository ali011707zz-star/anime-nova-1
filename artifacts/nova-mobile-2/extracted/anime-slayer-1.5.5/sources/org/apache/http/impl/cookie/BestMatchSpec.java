package org.apache.http.impl.cookie;

import com.google.android.gms.common.api.Api;
import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SM;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
/* loaded from: classes2.dex */
public class BestMatchSpec implements CookieSpec {
    private BrowserCompatSpec compat;
    private final String[] datepatterns;
    private RFC2109Spec obsoleteStrict;
    private final boolean oneHeader;
    private RFC2965Spec strict;

    public BestMatchSpec(String[] strArr, boolean z10) {
        this.datepatterns = strArr == null ? null : (String[]) strArr.clone();
        this.oneHeader = z10;
    }

    private BrowserCompatSpec getCompat() {
        if (this.compat == null) {
            this.compat = new BrowserCompatSpec(this.datepatterns);
        }
        return this.compat;
    }

    private RFC2109Spec getObsoleteStrict() {
        if (this.obsoleteStrict == null) {
            this.obsoleteStrict = new RFC2109Spec(this.datepatterns, this.oneHeader);
        }
        return this.obsoleteStrict;
    }

    private RFC2965Spec getStrict() {
        if (this.strict == null) {
            this.strict = new RFC2965Spec(this.datepatterns, this.oneHeader);
        }
        return this.strict;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        if (list != null) {
            int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            boolean z10 = true;
            for (Cookie cookie : list) {
                if (!(cookie instanceof SetCookie2)) {
                    z10 = false;
                }
                if (cookie.getVersion() < i10) {
                    i10 = cookie.getVersion();
                }
            }
            if (i10 <= 0) {
                return getCompat().formatCookies(list);
            }
            if (z10) {
                return getStrict().formatCookies(list);
            }
            return getObsoleteStrict().formatCookies(list);
        }
        throw new IllegalArgumentException("List of cookies may not be null");
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return getStrict().getVersion();
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        return getStrict().getVersionHeader();
    }

    @Override // org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            if (cookie.getVersion() > 0) {
                if (cookie instanceof SetCookie2) {
                    return getStrict().match(cookie, cookieOrigin);
                }
                return getObsoleteStrict().match(cookie, cookieOrigin);
            }
            return getCompat().match(cookie, cookieOrigin);
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        CharArrayBuffer charArrayBuffer;
        ParserCursor parserCursor;
        if (header == null) {
            throw new IllegalArgumentException("Header may not be null");
        }
        if (cookieOrigin != null) {
            HeaderElement[] elements = header.getElements();
            boolean z10 = false;
            boolean z11 = false;
            for (HeaderElement headerElement : elements) {
                if (headerElement.getParameterByName(ClientCookie.VERSION_ATTR) != null) {
                    z11 = true;
                }
                if (headerElement.getParameterByName(ClientCookie.EXPIRES_ATTR) != null) {
                    z10 = true;
                }
            }
            if (!z10 && z11) {
                if (SM.SET_COOKIE2.equals(header.getName())) {
                    return getStrict().parse(elements, cookieOrigin);
                }
                return getObsoleteStrict().parse(elements, cookieOrigin);
            }
            NetscapeDraftHeaderParser netscapeDraftHeaderParser = NetscapeDraftHeaderParser.DEFAULT;
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                parserCursor = new ParserCursor(formattedHeader.getValuePos(), charArrayBuffer.length());
            } else {
                String value = header.getValue();
                if (value != null) {
                    charArrayBuffer = new CharArrayBuffer(value.length());
                    charArrayBuffer.append(value);
                    parserCursor = new ParserCursor(0, charArrayBuffer.length());
                } else {
                    throw new MalformedCookieException("Header value is null");
                }
            }
            return getCompat().parse(new HeaderElement[]{netscapeDraftHeaderParser.parseHeader(charArrayBuffer, parserCursor)}, cookieOrigin);
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    public String toString() {
        return CookiePolicy.BEST_MATCH;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieOrigin != null) {
            if (cookie.getVersion() > 0) {
                if (cookie instanceof SetCookie2) {
                    getStrict().validate(cookie, cookieOrigin);
                    return;
                } else {
                    getObsoleteStrict().validate(cookie, cookieOrigin);
                    return;
                }
            }
            getCompat().validate(cookie, cookieOrigin);
            return;
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    public BestMatchSpec() {
        this(null, false);
    }
}
