package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public class HttpRequestWriter extends AbstractMessageWriter {
    public HttpRequestWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        super(sessionOutputBuffer, lineFormatter, httpParams);
    }

    @Override // org.apache.http.impl.io.AbstractMessageWriter
    public void writeHeadLine(HttpMessage httpMessage) throws IOException {
        this.lineFormatter.formatRequestLine(this.lineBuf, ((HttpRequest) httpMessage).getRequestLine());
        this.sessionBuffer.writeLine(this.lineBuf);
    }
}
