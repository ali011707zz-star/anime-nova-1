package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SM;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
/* loaded from: classes2.dex */
public class NetscapeDraftSpec extends CookieSpecBase {
    public static final String EXPIRES_PATTERN = "EEE, dd-MMM-yy HH:mm:ss z";
    private final String[] datepatterns;

    public NetscapeDraftSpec(String[] strArr) {
        if (strArr != null) {
            this.datepatterns = (String[]) strArr.clone();
        } else {
            this.datepatterns = new String[]{EXPIRES_PATTERN};
        }
        registerAttribHandler(ClientCookie.PATH_ATTR, new BasicPathHandler());
        registerAttribHandler(ClientCookie.DOMAIN_ATTR, new NetscapeDomainHandler());
        registerAttribHandler(ClientCookie.MAX_AGE_ATTR, new BasicMaxAgeHandler());
        registerAttribHandler(ClientCookie.SECURE_ATTR, new BasicSecureHandler());
        registerAttribHandler(ClientCookie.COMMENT_ATTR, new BasicCommentHandler());
        registerAttribHandler(ClientCookie.EXPIRES_ATTR, new BasicExpiresHandler(this.datepatterns));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(list.size() * 20);
                charArrayBuffer.append(SM.COOKIE);
                charArrayBuffer.append(": ");
                for (int i10 = 0; i10 < list.size(); i10++) {
                    Cookie cookie = list.get(i10);
                    if (i10 > 0) {
                        charArrayBuffer.append("; ");
                    }
                    charArrayBuffer.append(cookie.getName());
                    String value = cookie.getValue();
                    if (value != null) {
                        charArrayBuffer.append("=");
                        charArrayBuffer.append(value);
                    }
                }
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new BufferedHeader(charArrayBuffer));
                return arrayList;
            }
            throw new IllegalArgumentException("List of cookies may not be empty");
        }
        throw new IllegalArgumentException("List of cookies may not be null");
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return 0;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        return null;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        CharArrayBuffer charArrayBuffer;
        ParserCursor parserCursor;
        if (header == null) {
            throw new IllegalArgumentException("Header may not be null");
        }
        if (cookieOrigin != null) {
            if (header.getName().equalsIgnoreCase(SM.SET_COOKIE)) {
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
                return parse(new HeaderElement[]{netscapeDraftHeaderParser.parseHeader(charArrayBuffer, parserCursor)}, cookieOrigin);
            }
            throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
        }
        throw new IllegalArgumentException("Cookie origin may not be null");
    }

    public String toString() {
        return CookiePolicy.NETSCAPE;
    }

    public NetscapeDraftSpec() {
        this(null);
    }
}
