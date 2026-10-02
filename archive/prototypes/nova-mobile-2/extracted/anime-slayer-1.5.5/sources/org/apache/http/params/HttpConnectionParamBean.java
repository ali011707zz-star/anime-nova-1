package org.apache.http.params;

/* loaded from: classes2.dex */
public class HttpConnectionParamBean extends HttpAbstractParamBean {
    public HttpConnectionParamBean(HttpParams httpParams) {
        super(httpParams);
    }

    public void setConnectionTimeout(int i10) {
        HttpConnectionParams.setConnectionTimeout(this.params, i10);
    }

    public void setLinger(int i10) {
        HttpConnectionParams.setLinger(this.params, i10);
    }

    public void setSoTimeout(int i10) {
        HttpConnectionParams.setSoTimeout(this.params, i10);
    }

    public void setSocketBufferSize(int i10) {
        HttpConnectionParams.setSocketBufferSize(this.params, i10);
    }

    public void setStaleCheckingEnabled(boolean z10) {
        HttpConnectionParams.setStaleCheckingEnabled(this.params, z10);
    }

    public void setTcpNoDelay(boolean z10) {
        HttpConnectionParams.setTcpNoDelay(this.params, z10);
    }
}
