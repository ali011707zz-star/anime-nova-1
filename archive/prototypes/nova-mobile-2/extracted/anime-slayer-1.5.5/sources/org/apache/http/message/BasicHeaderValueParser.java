package org.apache.http.message;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class BasicHeaderValueParser implements HeaderValueParser {
    public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
    private static final char PARAM_DELIMITER = ';';
    private static final char ELEM_DELIMITER = ',';
    private static final char[] ALL_DELIMITERS = {PARAM_DELIMITER, ELEM_DELIMITER};

    private static boolean isOneOf(char c10, char[] cArr) {
        if (cArr != null) {
            for (char c11 : cArr) {
                if (c10 == c11) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final HeaderElement[] parseElements(String str, HeaderValueParser headerValueParser) throws ParseException {
        if (str != null) {
            if (headerValueParser == null) {
                headerValueParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return headerValueParser.parseElements(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null");
    }

    public static final HeaderElement parseHeaderElement(String str, HeaderValueParser headerValueParser) throws ParseException {
        if (str != null) {
            if (headerValueParser == null) {
                headerValueParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return headerValueParser.parseHeaderElement(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null");
    }

    public static final NameValuePair parseNameValuePair(String str, HeaderValueParser headerValueParser) throws ParseException {
        if (str != null) {
            if (headerValueParser == null) {
                headerValueParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return headerValueParser.parseNameValuePair(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null");
    }

    public static final NameValuePair[] parseParameters(String str, HeaderValueParser headerValueParser) throws ParseException {
        if (str != null) {
            if (headerValueParser == null) {
                headerValueParser = DEFAULT;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
            charArrayBuffer.append(str);
            return headerValueParser.parseParameters(charArrayBuffer, new ParserCursor(0, str.length()));
        }
        throw new IllegalArgumentException("Value to parse may not be null");
    }

    public HeaderElement createHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        return new BasicHeaderElement(str, str2, nameValuePairArr);
    }

    public NameValuePair createNameValuePair(String str, String str2) {
        return new BasicNameValuePair(str, str2);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement[] parseElements(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            ArrayList arrayList = new ArrayList();
            while (!parserCursor.atEnd()) {
                HeaderElement parseHeaderElement = parseHeaderElement(charArrayBuffer, parserCursor);
                if (parseHeaderElement.getName().length() != 0 || parseHeaderElement.getValue() != null) {
                    arrayList.add(parseHeaderElement);
                }
            }
            return (HeaderElement[]) arrayList.toArray(new HeaderElement[arrayList.size()]);
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement parseHeaderElement(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
            NameValuePair[] nameValuePairArr = null;
            if (!parserCursor.atEnd() && charArrayBuffer.charAt(parserCursor.getPos() - 1) != ',') {
                nameValuePairArr = parseParameters(charArrayBuffer, parserCursor);
            }
            return createHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), nameValuePairArr);
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        return parseNameValuePair(charArrayBuffer, parserCursor, ALL_DELIMITERS);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair[] parseParameters(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                pos++;
            }
            parserCursor.updatePos(pos);
            if (parserCursor.atEnd()) {
                return new NameValuePair[0];
            }
            ArrayList arrayList = new ArrayList();
            while (!parserCursor.atEnd()) {
                arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
                if (charArrayBuffer.charAt(parserCursor.getPos() - 1) == ',') {
                    break;
                }
            }
            return (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]);
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, char[] cArr) {
        boolean z10;
        boolean z11;
        String substringTrimmed;
        char charAt;
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            int pos = parserCursor.getPos();
            int pos2 = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            while (true) {
                z10 = true;
                if (pos >= upperBound || (charAt = charArrayBuffer.charAt(pos)) == '=') {
                    break;
                }
                if (isOneOf(charAt, cArr)) {
                    z11 = true;
                    break;
                }
                pos++;
            }
            z11 = false;
            if (pos == upperBound) {
                substringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
                z11 = true;
            } else {
                substringTrimmed = charArrayBuffer.substringTrimmed(pos2, pos);
                pos++;
            }
            if (z11) {
                parserCursor.updatePos(pos);
                return createNameValuePair(substringTrimmed, null);
            }
            int i10 = pos;
            boolean z12 = false;
            boolean z13 = false;
            while (true) {
                if (i10 >= upperBound) {
                    z10 = z11;
                    break;
                }
                char charAt2 = charArrayBuffer.charAt(i10);
                if (charAt2 == '\"' && !z12) {
                    z13 = !z13;
                }
                if (!z13 && !z12 && isOneOf(charAt2, cArr)) {
                    break;
                }
                z12 = !z12 && z13 && charAt2 == '\\';
                i10++;
            }
            while (pos < i10 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                pos++;
            }
            int i11 = i10;
            while (i11 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i11 - 1))) {
                i11--;
            }
            if (i11 - pos >= 2 && charArrayBuffer.charAt(pos) == '\"' && charArrayBuffer.charAt(i11 - 1) == '\"') {
                pos++;
                i11--;
            }
            String substring = charArrayBuffer.substring(pos, i11);
            if (z10) {
                i10++;
            }
            parserCursor.updatePos(i10);
            return createNameValuePair(substringTrimmed, substring);
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }
}
