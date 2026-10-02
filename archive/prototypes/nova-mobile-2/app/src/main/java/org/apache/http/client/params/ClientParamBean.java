package org.apache.http.client.params;

import java.util.Collection;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@NotThreadSafe
/* loaded from: classes2.dex */
public class ClientParamBean extends HttpAbstractParamBean {
    public ClientParamBean(HttpParams httpParams) {
        super(httpParams);
    }

    public void setAllowCircularRedirects(boolean z10) {
        this.params.setBooleanParameter(ClientPNames.ALLOW_CIRCULAR_REDIRECTS, z10);
    }

    @Deprecated
    public void setConnectionManagerFactory(ClientConnectionManagerFactory clientConnectionManagerFactory) {
        this.params.setParameter(ClientPNames.CONNECTION_MANAGER_FACTORY, clientConnectionManagerFactory);
    }

    public void setConnectionManagerFactoryClassName(String str) {
        this.params.setParameter(ClientPNames.CONNECTION_MANAGER_FACTORY_CLASS_NAME, str);
    }

    public void setCookiePolicy(String str) {
        this.params.setParameter(ClientPNames.COOKIE_POLICY, str);
    }

    public void setDefaultHeaders(Collection<Header> collection) {
        this.params.setParameter(ClientPNames.DEFAULT_HEADERS, collection);
    }

    public void setDefaultHost(HttpHost httpHost) {
        this.params.setParameter(ClientPNames.DEFAULT_HOST, httpHost);
    }

    public void setHandleAuthentication(boolean z10) {
        this.params.setBooleanParameter(ClientPNames.HANDLE_AUTHENTICATION, z10);
    }

    public void setHandleRedirects(boolean z10) {
        this.params.setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, z10);
    }

    public void setMaxRedirects(int i10) {
        this.params.setIntParameter(ClientPNames.MAX_REDIRECTS, i10);
    }

    public void setRejectRelativeRedirect(boolean z10) {
        this.params.setBooleanParameter(ClientPNames.REJECT_RELATIVE_REDIRECT, z10);
    }

    public void setVirtualHost(HttpHost httpHost) {
        this.params.setParameter(ClientPNames.VIRTUAL_HOST, httpHost);
    }
}
