package org.apache.http.conn;

import java.io.InterruptedIOException;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class ConnectTimeoutException extends InterruptedIOException {
    private static final long serialVersionUID = -4816682903149535989L;

    public ConnectTimeoutException() {
    }

    public ConnectTimeoutException(String str) {
        super(str);
    }
}
