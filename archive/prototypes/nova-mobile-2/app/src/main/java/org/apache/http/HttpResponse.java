package org.apache.http;

import java.util.Locale;

/* loaded from: classes2.dex */
public interface HttpResponse extends HttpMessage {
    HttpEntity getEntity();

    Locale getLocale();

    StatusLine getStatusLine();

    void setEntity(HttpEntity httpEntity);

    void setLocale(Locale locale);

    void setReasonPhrase(String str) throws IllegalStateException;

    void setStatusCode(int i10) throws IllegalStateException;

    void setStatusLine(ProtocolVersion protocolVersion, int i10);

    void setStatusLine(ProtocolVersion protocolVersion, int i10, String str);

    void setStatusLine(StatusLine statusLine);
}
