package org.apache.http.conn.ssl;

import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class AllowAllHostnameVerifier extends AbstractVerifier {
    public final String toString() {
        return "ALLOW_ALL";
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, String[] strArr, String[] strArr2) {
    }
}
