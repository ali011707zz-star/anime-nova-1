package org.apache.http.params;

/* loaded from: classes2.dex */
public final class DefaultedHttpParams extends AbstractHttpParams {
    private final HttpParams defaults;
    private final HttpParams local;

    public DefaultedHttpParams(HttpParams httpParams, HttpParams httpParams2) {
        if (httpParams != null) {
            this.local = httpParams;
            this.defaults = httpParams2;
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams copy() {
        return new DefaultedHttpParams(this.local.copy(), this.defaults);
    }

    public HttpParams getDefaults() {
        return this.defaults;
    }

    @Override // org.apache.http.params.HttpParams
    public Object getParameter(String str) {
        HttpParams httpParams;
        Object parameter = this.local.getParameter(str);
        return (parameter != null || (httpParams = this.defaults) == null) ? parameter : httpParams.getParameter(str);
    }

    @Override // org.apache.http.params.HttpParams
    public boolean removeParameter(String str) {
        return this.local.removeParameter(str);
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setParameter(String str, Object obj) {
        return this.local.setParameter(str, obj);
    }
}
