package org.apache.http.impl.auth;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface SpnegoTokenGenerator {
    byte[] generateSpnegoDERObject(byte[] bArr) throws IOException;
}
