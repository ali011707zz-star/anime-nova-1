package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class DateParseException extends Exception {
    private static final long serialVersionUID = 4417696455000643370L;

    public DateParseException() {
    }

    public DateParseException(String str) {
        super(str);
    }
}
