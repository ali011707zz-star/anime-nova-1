package org.apache.http.impl.auth;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
/* loaded from: classes2.dex */
public abstract class AuthSchemeBase implements ContextAwareAuthScheme {
    private boolean proxy;

    @Override // org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        return authenticate(credentials, httpRequest);
    }

    public boolean isProxy() {
        return this.proxy;
    }

    public abstract void parseChallenge(CharArrayBuffer charArrayBuffer, int i10, int i11) throws MalformedChallengeException;

    @Override // org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        CharArrayBuffer charArrayBuffer;
        if (header != null) {
            String name = header.getName();
            int i10 = 0;
            if (name.equalsIgnoreCase("WWW-Authenticate")) {
                this.proxy = false;
            } else if (name.equalsIgnoreCase("Proxy-Authenticate")) {
                this.proxy = true;
            } else {
                throw new MalformedChallengeException("Unexpected header name: " + name);
            }
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                i10 = formattedHeader.getValuePos();
            } else {
                String value = header.getValue();
                if (value != null) {
                    charArrayBuffer = new CharArrayBuffer(value.length());
                    charArrayBuffer.append(value);
                } else {
                    throw new MalformedChallengeException("Header value is null");
                }
            }
            while (i10 < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(i10))) {
                i10++;
            }
            int i11 = i10;
            while (i11 < charArrayBuffer.length() && !HTTP.isWhitespace(charArrayBuffer.charAt(i11))) {
                i11++;
            }
            String substring = charArrayBuffer.substring(i10, i11);
            if (substring.equalsIgnoreCase(getSchemeName())) {
                parseChallenge(charArrayBuffer, i11, charArrayBuffer.length());
                return;
            }
            throw new MalformedChallengeException("Invalid scheme identifier: " + substring);
        }
        throw new IllegalArgumentException("Header may not be null");
    }

    public String toString() {
        return getSchemeName();
    }
}
