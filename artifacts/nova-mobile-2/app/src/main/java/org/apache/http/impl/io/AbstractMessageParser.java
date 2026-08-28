package org.apache.http.impl.io;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public abstract class AbstractMessageParser implements HttpMessageParser {
    private static final int HEADERS = 1;
    private static final int HEAD_LINE = 0;
    private final List headerLines;
    public final LineParser lineParser;
    private final int maxHeaderCount;
    private final int maxLineLen;
    private HttpMessage message;
    private final SessionInputBuffer sessionBuffer;
    private int state;

    public AbstractMessageParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpParams httpParams) {
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        if (httpParams != null) {
            this.sessionBuffer = sessionInputBuffer;
            this.maxHeaderCount = httpParams.getIntParameter(CoreConnectionPNames.MAX_HEADER_COUNT, -1);
            this.maxLineLen = httpParams.getIntParameter(CoreConnectionPNames.MAX_LINE_LENGTH, -1);
            this.lineParser = lineParser == null ? BasicLineParser.DEFAULT : lineParser;
            this.headerLines = new ArrayList();
            this.state = 0;
            return;
        }
        throw new IllegalArgumentException("HTTP parameters may not be null");
    }

    public static Header[] parseHeaders(SessionInputBuffer sessionInputBuffer, int i10, int i11, LineParser lineParser) throws HttpException, IOException {
        if (lineParser == null) {
            lineParser = BasicLineParser.DEFAULT;
        }
        return parseHeaders(sessionInputBuffer, i10, i11, lineParser, new ArrayList());
    }

    @Override // org.apache.http.io.HttpMessageParser
    public HttpMessage parse() throws IOException, HttpException {
        int i10 = this.state;
        if (i10 == 0) {
            try {
                this.message = parseHead(this.sessionBuffer);
                this.state = 1;
            } catch (ParseException e10) {
                throw new ProtocolException(e10.getMessage(), e10);
            }
        } else if (i10 != 1) {
            throw new IllegalStateException("Inconsistent parser state");
        }
        this.message.setHeaders(parseHeaders(this.sessionBuffer, this.maxHeaderCount, this.maxLineLen, this.lineParser, this.headerLines));
        HttpMessage httpMessage = this.message;
        this.message = null;
        this.headerLines.clear();
        this.state = 0;
        return httpMessage;
    }

    public abstract HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) throws IOException, HttpException, ParseException;

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0084, code lost:
    
        r8 = new org.apache.http.Header[r12.size()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008e, code lost:
    
        if (r5 >= r12.size()) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0096, code lost:
    
        r8[r5] = r11.parseHeader((org.apache.http.util.CharArrayBuffer) r12.get(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009c, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009f, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a9, code lost:
    
        throw new org.apache.http.ProtocolException(r8.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00aa, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Header[] parseHeaders(SessionInputBuffer sessionInputBuffer, int i10, int i11, LineParser lineParser, List list) throws HttpException, IOException {
        char charAt;
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        if (lineParser == null) {
            throw new IllegalArgumentException("Line parser may not be null");
        }
        if (list == null) {
            throw new IllegalArgumentException("Header line list may not be null");
        }
        CharArrayBuffer charArrayBuffer = null;
        CharArrayBuffer charArrayBuffer2 = null;
        while (true) {
            if (charArrayBuffer == null) {
                charArrayBuffer = new CharArrayBuffer(64);
            } else {
                charArrayBuffer.clear();
            }
            int i12 = 0;
            if (sessionInputBuffer.readLine(charArrayBuffer) == -1 || charArrayBuffer.length() < 1) {
                break;
            }
            if ((charArrayBuffer.charAt(0) == ' ' || charArrayBuffer.charAt(0) == '\t') && charArrayBuffer2 != null) {
                while (i12 < charArrayBuffer.length() && ((charAt = charArrayBuffer.charAt(i12)) == ' ' || charAt == '\t')) {
                    i12++;
                }
                if (i11 > 0 && ((charArrayBuffer2.length() + 1) + charArrayBuffer.length()) - i12 > i11) {
                    throw new IOException("Maximum line length limit exceeded");
                }
                charArrayBuffer2.append(' ');
                charArrayBuffer2.append(charArrayBuffer, i12, charArrayBuffer.length() - i12);
            } else {
                list.add(charArrayBuffer);
                charArrayBuffer2 = charArrayBuffer;
                charArrayBuffer = null;
            }
            if (i10 > 0 && list.size() >= i10) {
                throw new IOException("Maximum header count exceeded");
            }
        }
    }
}
