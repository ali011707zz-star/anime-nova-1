package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

@Immutable
/* loaded from: classes2.dex */
public class NetscapeDraftHeaderParser {
    public static final NetscapeDraftHeaderParser DEFAULT = new NetscapeDraftHeaderParser();

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        boolean z10;
        boolean z11;
        String substringTrimmed;
        char charAt;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z10 = true;
            if (pos >= upperBound || (charAt = charArrayBuffer.charAt(pos)) == '=') {
                break;
            }
            if (charAt == ';') {
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
            return new BasicNameValuePair(substringTrimmed, null);
        }
        int i10 = pos;
        while (true) {
            if (i10 >= upperBound) {
                z10 = z11;
                break;
            }
            if (charArrayBuffer.charAt(i10) == ';') {
                break;
            }
            i10++;
        }
        while (pos < i10 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i11 = i10;
        while (i11 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i11 - 1))) {
            i11--;
        }
        String substring = charArrayBuffer.substring(pos, i11);
        if (z10) {
            i10++;
        }
        parserCursor.updatePos(i10);
        return new BasicNameValuePair(substringTrimmed, substring);
    }

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parserCursor != null) {
            NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
            ArrayList arrayList = new ArrayList();
            while (!parserCursor.atEnd()) {
                arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
            }
            return new BasicHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
        }
        throw new IllegalArgumentException("Parser cursor may not be null");
    }
}
