package org.apache.http.client.params;

import org.apache.http.annotation.Immutable;
import org.apache.http.params.HttpParams;

@Immutable
/* loaded from: classes2.dex */
public class HttpClientParams {
    private HttpClientParams() {
    }

    public static String getCookiePolicy(HttpParams httpParams) {
        if (httpParams != null) {
            String str = (String) httpParams.getParameter(ClientPNames.COOKIE_POLICY);
            return str == null ? CookiePolicy.BEST_MATCH : str;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static boolean isAuthenticating(HttpParams httpParams) {
        if (httpParams != null) {
            return httpParams.getBooleanParameter(ClientPNames.HANDLE_AUTHENTICATION, true);
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static boolean isRedirecting(HttpParams httpParams) {
        if (httpParams != null) {
            return httpParams.getBooleanParameter(ClientPNames.HANDLE_REDIRECTS, true);
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static void setAuthenticating(HttpParams httpParams, boolean z10) {
        if (httpParams != null) {
            httpParams.setBooleanParameter(ClientPNames.HANDLE_AUTHENTICATION, z10);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static void setCookiePolicy(HttpParams httpParams, String str) {
        if (httpParams != null) {
            httpParams.setParameter(ClientPNames.COOKIE_POLICY, str);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static void setRedirecting(HttpParams httpParams, boolean z10) {
        if (httpParams != null) {
            httpParams.setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, z10);
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }
}
