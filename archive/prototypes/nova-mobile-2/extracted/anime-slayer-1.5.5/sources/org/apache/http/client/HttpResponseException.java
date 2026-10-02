package org.apache.http.client;

import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class HttpResponseException extends ClientProtocolException {
    private static final long serialVersionUID = -7186627969477257933L;
    private final int statusCode;

    public HttpResponseException(int i10, String str) {
        super(str);
        this.statusCode = i10;
    }

    public int getStatusCode() {
        return this.statusCode;
    }
}
