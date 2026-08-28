package org.apache.http.cookie;

import java.util.Locale;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public final class CookieOrigin {
    private final String host;
    private final String path;
    private final int port;
    private final boolean secure;

    public CookieOrigin(String str, int i10, String str2, boolean z10) {
        if (str != null) {
            if (str.trim().length() == 0) {
                throw new IllegalArgumentException("Host of origin may not be blank");
            }
            if (i10 < 0) {
                throw new IllegalArgumentException("Invalid port: " + i10);
            }
            if (str2 != null) {
                this.host = str.toLowerCase(Locale.ENGLISH);
                this.port = i10;
                if (str2.trim().length() != 0) {
                    this.path = str2;
                } else {
                    this.path = "/";
                }
                this.secure = z10;
                return;
            }
            throw new IllegalArgumentException("Path of origin may not be null.");
        }
        throw new IllegalArgumentException("Host of origin may not be null");
    }

    public String getHost() {
        return this.host;
    }

    public String getPath() {
        return this.path;
    }

    public int getPort() {
        return this.port;
    }

    public boolean isSecure() {
        return this.secure;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        if (this.secure) {
            sb2.append("(secure)");
        }
        sb2.append(this.host);
        sb2.append(':');
        sb2.append(Integer.toString(this.port));
        sb2.append(this.path);
        sb2.append(']');
        return sb2.toString();
    }
}
