package org.apache.http.auth;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.LangUtils;

@Immutable
/* loaded from: classes2.dex */
public class AuthScope {
    public static final AuthScope ANY = new AuthScope(null, -1, null, null);
    public static final String ANY_HOST = null;
    public static final int ANY_PORT = -1;
    public static final String ANY_REALM = null;
    public static final String ANY_SCHEME = null;
    private final String host;
    private final int port;
    private final String realm;
    private final String scheme;

    public AuthScope(String str, int i10, String str2, String str3) {
        this.host = str == null ? ANY_HOST : str.toLowerCase(Locale.ENGLISH);
        this.port = i10 < 0 ? -1 : i10;
        this.realm = str2 == null ? ANY_REALM : str2;
        this.scheme = str3 == null ? ANY_SCHEME : str3.toUpperCase(Locale.ENGLISH);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthScope)) {
            return super.equals(obj);
        }
        AuthScope authScope = (AuthScope) obj;
        return LangUtils.equals(this.host, authScope.host) && this.port == authScope.port && LangUtils.equals(this.realm, authScope.realm) && LangUtils.equals(this.scheme, authScope.scheme);
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }

    public String getRealm() {
        return this.realm;
    }

    public String getScheme() {
        return this.scheme;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.host), this.port), this.realm), this.scheme);
    }

    public int match(AuthScope authScope) {
        int i10;
        if (LangUtils.equals(this.scheme, authScope.scheme)) {
            i10 = 1;
        } else {
            String str = this.scheme;
            String str2 = ANY_SCHEME;
            if (str != str2 && authScope.scheme != str2) {
                return -1;
            }
            i10 = 0;
        }
        if (LangUtils.equals(this.realm, authScope.realm)) {
            i10 += 2;
        } else {
            String str3 = this.realm;
            String str4 = ANY_REALM;
            if (str3 != str4 && authScope.realm != str4) {
                return -1;
            }
        }
        int i11 = this.port;
        int i12 = authScope.port;
        if (i11 == i12) {
            i10 += 4;
        } else if (i11 != -1 && i12 != -1) {
            return -1;
        }
        if (LangUtils.equals(this.host, authScope.host)) {
            return i10 + 8;
        }
        String str5 = this.host;
        String str6 = ANY_HOST;
        if (str5 == str6 || authScope.host == str6) {
            return i10;
        }
        return -1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        String str = this.scheme;
        if (str != null) {
            sb2.append(str.toUpperCase(Locale.ENGLISH));
            sb2.append(' ');
        }
        if (this.realm != null) {
            sb2.append('\'');
            sb2.append(this.realm);
            sb2.append('\'');
        } else {
            sb2.append("<any realm>");
        }
        if (this.host != null) {
            sb2.append('@');
            sb2.append(this.host);
            if (this.port >= 0) {
                sb2.append(':');
                sb2.append(this.port);
            }
        }
        return sb2.toString();
    }

    public AuthScope(String str, int i10, String str2) {
        this(str, i10, str2, ANY_SCHEME);
    }

    public AuthScope(String str, int i10) {
        this(str, i10, ANY_REALM, ANY_SCHEME);
    }

    public AuthScope(AuthScope authScope) {
        if (authScope != null) {
            this.host = authScope.getHost();
            this.port = authScope.getPort();
            this.realm = authScope.getRealm();
            this.scheme = authScope.getScheme();
            return;
        }
        throw new IllegalArgumentException("Scope may not be null");
    }
}
