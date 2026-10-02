package org.apache.http.impl.auth;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
/* loaded from: classes2.dex */
public abstract class RFC2617Scheme extends AuthSchemeBase {
    private Map<String, String> params;

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        if (str != null) {
            Map<String, String> map = this.params;
            if (map == null) {
                return null;
            }
            return map.get(str.toLowerCase(Locale.ENGLISH));
        }
        throw new IllegalArgumentException("Parameter name may not be null");
    }

    public Map<String, String> getParameters() {
        if (this.params == null) {
            this.params = new HashMap();
        }
        return this.params;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return getParameter("realm");
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i10, int i11) throws MalformedChallengeException {
        HeaderElement[] parseElements = BasicHeaderValueParser.DEFAULT.parseElements(charArrayBuffer, new ParserCursor(i10, charArrayBuffer.length()));
        if (parseElements.length != 0) {
            this.params = new HashMap(parseElements.length);
            for (HeaderElement headerElement : parseElements) {
                this.params.put(headerElement.getName(), headerElement.getValue());
            }
            return;
        }
        throw new MalformedChallengeException("Authentication challenge is empty");
    }
}
