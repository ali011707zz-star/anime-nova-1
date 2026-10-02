package org.apache.http.params;

/* loaded from: classes2.dex */
public abstract class HttpAbstractParamBean {
    public final HttpParams params;

    public HttpAbstractParamBean(HttpParams httpParams) {
        if (httpParams != null) {
            this.params = httpParams;
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }
}
