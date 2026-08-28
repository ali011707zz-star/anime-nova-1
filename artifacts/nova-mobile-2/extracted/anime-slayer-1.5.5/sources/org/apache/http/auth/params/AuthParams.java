package org.apache.http.auth.params;

import org.apache.http.annotation.Immutable;
import org.apache.http.params.HttpParams;

@Immutable
/* loaded from: classes2.dex */
public final class AuthParams {
    private AuthParams() {
    }

    public static String getCredentialCharset(HttpParams httpParams) {
        if (httpParams != null) {
            String str = (String) httpParams.getParameter(AuthPNames.CREDENTIAL_CHARSET);
            return str == null ? "US-ASCII" : str;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static void setCredentialCharset(HttpParams httpParams, String str) {
        if (httpParams != null) {
            httpParams.setParameter(AuthPNames.CREDENTIAL_CHARSET, str);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }
}
