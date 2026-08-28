package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.BasicLineFormatter;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public abstract class AbstractMessageWriter implements HttpMessageWriter {
    public final CharArrayBuffer lineBuf;
    public final LineFormatter lineFormatter;
    public final SessionOutputBuffer sessionBuffer;

    public AbstractMessageWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        if (sessionOutputBuffer != null) {
            this.sessionBuffer = sessionOutputBuffer;
            this.lineBuf = new CharArrayBuffer(128);
            this.lineFormatter = lineFormatter == null ? BasicLineFormatter.DEFAULT : lineFormatter;
            return;
        }
        throw new IllegalArgumentException("Session input buffer may not be null");
    }

    @Override // org.apache.http.io.HttpMessageWriter
    public void write(HttpMessage httpMessage) throws IOException, HttpException {
        if (httpMessage != null) {
            writeHeadLine(httpMessage);
            HeaderIterator headerIterator = httpMessage.headerIterator();
            while (headerIterator.hasNext()) {
                this.sessionBuffer.writeLine(this.lineFormatter.formatHeader(this.lineBuf, (Header) headerIterator.next()));
            }
            this.lineBuf.clear();
            this.sessionBuffer.writeLine(this.lineBuf);
            return;
        }
        throw new IllegalArgumentException("HTTP message may not be null");
    }

    public abstract void writeHeadLine(HttpMessage httpMessage) throws IOException;
}
