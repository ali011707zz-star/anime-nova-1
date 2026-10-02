package org.apache.http.conn.ssl;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

/* loaded from: classes2.dex */
public class TrustSelfSignedStrategy implements TrustStrategy {
    @Override // org.apache.http.conn.ssl.TrustStrategy
    public boolean isTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        return x509CertificateArr.length == 1;
    }
}
