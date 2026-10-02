package org.apache.http.conn.ssl;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
class TrustManagerDecorator implements X509TrustManager {
    private final X509TrustManager trustManager;
    private final TrustStrategy trustStrategy;

    public TrustManagerDecorator(X509TrustManager x509TrustManager, TrustStrategy trustStrategy) {
        this.trustManager = x509TrustManager;
        this.trustStrategy = trustStrategy;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        this.trustManager.checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        if (this.trustStrategy.isTrusted(x509CertificateArr, str)) {
            return;
        }
        this.trustManager.checkServerTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return this.trustManager.getAcceptedIssuers();
    }
}
