package org.apache.http;

import java.io.Serializable;
import java.util.Locale;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.LangUtils;

/* loaded from: classes2.dex */
public final class HttpHost implements Cloneable, Serializable {
    public static final String DEFAULT_SCHEME_NAME = "http";
    private static final long serialVersionUID = -7529410654042457626L;
    public final String hostname;
    public final String lcHostname;
    public final int port;
    public final String schemeName;

    public HttpHost(String str, int i10, String str2) {
        if (str != null) {
            this.hostname = str;
            Locale locale = Locale.ENGLISH;
            this.lcHostname = str.toLowerCase(locale);
            if (str2 != null) {
                this.schemeName = str2.toLowerCase(locale);
            } else {
                this.schemeName = DEFAULT_SCHEME_NAME;
            }
            this.port = i10;
            return;
        }
        throw new IllegalArgumentException("Host name may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpHost)) {
            return false;
        }
        HttpHost httpHost = (HttpHost) obj;
        return this.lcHostname.equals(httpHost.lcHostname) && this.port == httpHost.port && this.schemeName.equals(httpHost.schemeName);
    }

    public String getHostName() {
        return this.hostname;
    }

    public int getPort() {
        return this.port;
    }

    public String getSchemeName() {
        return this.schemeName;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.lcHostname), this.port), this.schemeName);
    }

    public String toHostString() {
        if (this.port != -1) {
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(this.hostname.length() + 6);
            charArrayBuffer.append(this.hostname);
            charArrayBuffer.append(":");
            charArrayBuffer.append(Integer.toString(this.port));
            return charArrayBuffer.toString();
        }
        return this.hostname;
    }

    public String toString() {
        return toURI();
    }

    public String toURI() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        charArrayBuffer.append(this.schemeName);
        charArrayBuffer.append("://");
        charArrayBuffer.append(this.hostname);
        if (this.port != -1) {
            charArrayBuffer.append(':');
            charArrayBuffer.append(Integer.toString(this.port));
        }
        return charArrayBuffer.toString();
    }

    public HttpHost(String str, int i10) {
        this(str, i10, null);
    }

    public HttpHost(String str) {
        this(str, -1, null);
    }

    public HttpHost(HttpHost httpHost) {
        this(httpHost.hostname, httpHost.port, httpHost.schemeName);
    }
}
