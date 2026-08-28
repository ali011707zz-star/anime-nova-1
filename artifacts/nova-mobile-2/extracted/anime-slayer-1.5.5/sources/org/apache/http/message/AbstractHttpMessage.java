package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpMessage;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public abstract class AbstractHttpMessage implements HttpMessage {
    public HeaderGroup headergroup;
    public HttpParams params;

    public AbstractHttpMessage(HttpParams httpParams) {
        this.headergroup = new HeaderGroup();
        this.params = httpParams;
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(Header header) {
        this.headergroup.addHeader(header);
    }

    @Override // org.apache.http.HttpMessage
    public boolean containsHeader(String str) {
        return this.headergroup.containsHeader(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getAllHeaders() {
        return this.headergroup.getAllHeaders();
    }

    @Override // org.apache.http.HttpMessage
    public Header getFirstHeader(String str) {
        return this.headergroup.getFirstHeader(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getHeaders(String str) {
        return this.headergroup.getHeaders(str);
    }

    @Override // org.apache.http.HttpMessage
    public Header getLastHeader(String str) {
        return this.headergroup.getLastHeader(str);
    }

    @Override // org.apache.http.HttpMessage
    public HttpParams getParams() {
        if (this.params == null) {
            this.params = new BasicHttpParams();
        }
        return this.params;
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator() {
        return this.headergroup.iterator();
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeader(Header header) {
        this.headergroup.removeHeader(header);
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeaders(String str) {
        if (str == null) {
            return;
        }
        HeaderIterator it2 = this.headergroup.iterator();
        while (it2.hasNext()) {
            if (str.equalsIgnoreCase(((Header) it2.next()).getName())) {
                it2.remove();
            }
        }
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(Header header) {
        this.headergroup.updateHeader(header);
    }

    @Override // org.apache.http.HttpMessage
    public void setHeaders(Header[] headerArr) {
        this.headergroup.setHeaders(headerArr);
    }

    @Override // org.apache.http.HttpMessage
    public void setParams(HttpParams httpParams) {
        if (httpParams != null) {
            this.params = httpParams;
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(String str, String str2) {
        if (str != null) {
            this.headergroup.addHeader(new BasicHeader(str, str2));
            return;
        }
        throw new IllegalArgumentException("Header name may not be null");
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator(String str) {
        return this.headergroup.iterator(str);
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(String str, String str2) {
        if (str != null) {
            this.headergroup.updateHeader(new BasicHeader(str, str2));
            return;
        }
        throw new IllegalArgumentException("Header name may not be null");
    }

    public AbstractHttpMessage() {
        this(null);
    }
}
