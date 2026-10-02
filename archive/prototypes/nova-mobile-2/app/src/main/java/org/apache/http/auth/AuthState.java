package org.apache.http.auth;

import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
/* loaded from: classes2.dex */
public class AuthState {
    private AuthScheme authScheme;
    private AuthScope authScope;
    private Credentials credentials;

    public AuthScheme getAuthScheme() {
        return this.authScheme;
    }

    public AuthScope getAuthScope() {
        return this.authScope;
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public void invalidate() {
        this.authScheme = null;
        this.authScope = null;
        this.credentials = null;
    }

    public boolean isValid() {
        return this.authScheme != null;
    }

    public void setAuthScheme(AuthScheme authScheme) {
        if (authScheme == null) {
            invalidate();
        } else {
            this.authScheme = authScheme;
        }
    }

    public void setAuthScope(AuthScope authScope) {
        this.authScope = authScope;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("auth scope [");
        sb2.append(this.authScope);
        sb2.append("]; credentials set [");
        sb2.append(this.credentials != null ? "true" : "false");
        sb2.append("]");
        return sb2.toString();
    }
}
