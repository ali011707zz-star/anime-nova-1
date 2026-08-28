package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class BasicLineParser implements LineParser {
    public static final BasicLineParser DEFAULT = new BasicLineParser();
    public final ProtocolVersion protocol;

    public BasicLineParser(ProtocolVersion protocolVersion) {
        this.protocol = protocolVersion == null ? HttpVersion.HTTP_1_1 : protocolVersion;
    }

    public static final Header parseHeader(String str, LineParser lineParser) throws ParseException {
        if (str != null) {
            if (lineParser == null) {
                lineParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return lineParser.parseHeader(charArrayBuffer);
        }
        throw new IllegalArgumentException("Value to parse may not be null");
    }

    public static final ProtocolVersion parseProtocolVersion(String str, LineParser lineParser) throws ParseException {
        if (str != null) {
            if (lineParser == null) {
                lineParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return lineParser.parseProtocolVersion(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null.");
    }

    public static final RequestLine parseRequestLine(String str, LineParser lineParser) throws ParseException {
        if (str != null) {
            if (lineParser == null) {
                lineParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return lineParser.parseRequestLine(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null.");
    }

    public static final StatusLine parseStatusLine(String str, LineParser lineParser) throws ParseException {
        if (str != null) {
            if (lineParser == null) {
                lineParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return lineParser.parseStatusLine(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null.");
    }

    public ProtocolVersion createProtocolVersion(int i10, int i11) {
        return this.protocol.forVersion(i10, i11);
    }

    public RequestLine createRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        return new BasicRequestLine(str, str2, protocolVersion);
    }

    public StatusLine createStatusLine(ProtocolVersion protocolVersion, int i10, String str) {
        return new BasicStatusLine(protocolVersion, i10, str);
    }

    @Override // org.apache.http.message.LineParser
    public boolean hasProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            int pos = parserCursor.getPos();
            String protocol = this.protocol.getProtocol();
            int length = protocol.length();
            if (charArrayBuffer.length() < length + 4) {
                return false;
            }
            if (pos < 0) {
                pos = (charArrayBuffer.length() - 4) - length;
            } else if (pos == 0) {
                while (pos < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                    pos++;
                }
            }
            int i10 = pos + length;
            if (i10 + 4 > charArrayBuffer.length()) {
                return false;
            }
            boolean z10 = true;
            for (int i11 = 0; z10 && i11 < length; i11++) {
                z10 = charArrayBuffer.charAt(pos + i11) == protocol.charAt(i11);
            }
            if (z10) {
                return charArrayBuffer.charAt(i10) == '/';
            }
            return z10;
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    public void skipWhitespace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }

    public BasicLineParser() {
        this(null);
    }

    @Override // org.apache.http.message.LineParser
    public Header parseHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // org.apache.http.message.LineParser
    public ProtocolVersion parseProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            String protocol = this.protocol.getProtocol();
            int length = protocol.length();
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            int i10 = pos2 + length;
            if (i10 + 4 > upperBound) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Not a valid protocol version: ");
                stringBuffer.append(charArrayBuffer.substring(pos, upperBound));
                throw new ParseException(stringBuffer.toString());
            }
            boolean z10 = true;
            for (int i11 = 0; z10 && i11 < length; i11++) {
                z10 = charArrayBuffer.charAt(pos2 + i11) == protocol.charAt(i11);
            }
            if (z10) {
                z10 = charArrayBuffer.charAt(i10) == '/';
            }
            if (z10) {
                int i12 = pos2 + length + 1;
                int indexOf = charArrayBuffer.indexOf(46, i12, upperBound);
                if (indexOf != -1) {
                    try {
                        int parseInt = Integer.parseInt(charArrayBuffer.substringTrimmed(i12, indexOf));
                        int i13 = indexOf + 1;
                        int indexOf2 = charArrayBuffer.indexOf(32, i13, upperBound);
                        if (indexOf2 == -1) {
                            indexOf2 = upperBound;
                        }
                        try {
                            int parseInt2 = Integer.parseInt(charArrayBuffer.substringTrimmed(i13, indexOf2));
                            parserCursor.updatePos(indexOf2);
                            return createProtocolVersion(parseInt, parseInt2);
                        } catch (NumberFormatException unused) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Invalid protocol minor version number: ");
                            stringBuffer2.append(charArrayBuffer.substring(pos, upperBound));
                            throw new ParseException(stringBuffer2.toString());
                        }
                    } catch (NumberFormatException unused2) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append("Invalid protocol major version number: ");
                        stringBuffer3.append(charArrayBuffer.substring(pos, upperBound));
                        throw new ParseException(stringBuffer3.toString());
                    }
                }
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Invalid protocol version number: ");
                stringBuffer4.append(charArrayBuffer.substring(pos, upperBound));
                throw new ParseException(stringBuffer4.toString());
            }
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("Not a valid protocol version: ");
            stringBuffer5.append(charArrayBuffer.substring(pos, upperBound));
            throw new ParseException(stringBuffer5.toString());
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    @Override // org.apache.http.message.LineParser
    public RequestLine parseRequestLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            try {
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos2 = parserCursor.getPos();
                int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
                if (indexOf >= 0) {
                    String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, indexOf);
                    parserCursor.updatePos(indexOf);
                    skipWhitespace(charArrayBuffer, parserCursor);
                    int pos3 = parserCursor.getPos();
                    int indexOf2 = charArrayBuffer.indexOf(32, pos3, upperBound);
                    if (indexOf2 >= 0) {
                        String substringTrimmed2 = charArrayBuffer.substringTrimmed(pos3, indexOf2);
                        parserCursor.updatePos(indexOf2);
                        ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                        skipWhitespace(charArrayBuffer, parserCursor);
                        if (parserCursor.atEnd()) {
                            return createRequestLine(substringTrimmed, substringTrimmed2, parseProtocolVersion);
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Invalid request line: ");
                        stringBuffer.append(charArrayBuffer.substring(pos, upperBound));
                        throw new ParseException(stringBuffer.toString());
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Invalid request line: ");
                    stringBuffer2.append(charArrayBuffer.substring(pos, upperBound));
                    throw new ParseException(stringBuffer2.toString());
                }
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Invalid request line: ");
                stringBuffer3.append(charArrayBuffer.substring(pos, upperBound));
                throw new ParseException(stringBuffer3.toString());
            } catch (IndexOutOfBoundsException unused) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Invalid request line: ");
                stringBuffer4.append(charArrayBuffer.substring(pos, upperBound));
                throw new ParseException(stringBuffer4.toString());
            }
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    @Override // org.apache.http.message.LineParser
    public StatusLine parseStatusLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            try {
                ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos2 = parserCursor.getPos();
                int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
                if (indexOf < 0) {
                    indexOf = upperBound;
                }
                String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, indexOf);
                for (int i10 = 0; i10 < substringTrimmed.length(); i10++) {
                    if (!Character.isDigit(substringTrimmed.charAt(i10))) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Status line contains invalid status code: ");
                        stringBuffer.append(charArrayBuffer.substring(pos, upperBound));
                        throw new ParseException(stringBuffer.toString());
                    }
                }
                try {
                    return createStatusLine(parseProtocolVersion, Integer.parseInt(substringTrimmed), indexOf < upperBound ? charArrayBuffer.substringTrimmed(indexOf, upperBound) : "");
                } catch (NumberFormatException unused) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Status line contains invalid status code: ");
                    stringBuffer2.append(charArrayBuffer.substring(pos, upperBound));
                    throw new ParseException(stringBuffer2.toString());
                }
            } catch (IndexOutOfBoundsException unused2) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Invalid status line: ");
                stringBuffer3.append(charArrayBuffer.substring(pos, upperBound));
                throw new ParseException(stringBuffer3.toString());
            }
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }
}
