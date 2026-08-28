package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;

/* loaded from: classes2.dex */
public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    public String currentHeader;
    public String currentToken;
    public final HeaderIterator headerIt;
    public int searchPos;

    public BasicTokenIterator(HeaderIterator headerIterator) {
        if (headerIterator != null) {
            this.headerIt = headerIterator;
            this.searchPos = findNext(-1);
            return;
        }
        throw new IllegalArgumentException("Header iterator must not be null.");
    }

    public String createToken(String str, int i10, int i11) {
        return str.substring(i10, i11);
    }

    public int findNext(int i10) throws ParseException {
        int findTokenSeparator;
        if (i10 < 0) {
            if (!this.headerIt.hasNext()) {
                return -1;
            }
            this.currentHeader = this.headerIt.nextHeader().getValue();
            findTokenSeparator = 0;
        } else {
            findTokenSeparator = findTokenSeparator(i10);
        }
        int findTokenStart = findTokenStart(findTokenSeparator);
        if (findTokenStart < 0) {
            this.currentToken = null;
            return -1;
        }
        int findTokenEnd = findTokenEnd(findTokenStart);
        this.currentToken = createToken(this.currentHeader, findTokenStart, findTokenEnd);
        return findTokenEnd;
    }

    public int findTokenEnd(int i10) {
        if (i10 >= 0) {
            int length = this.currentHeader.length();
            do {
                i10++;
                if (i10 >= length) {
                    break;
                }
            } while (isTokenChar(this.currentHeader.charAt(i10)));
            return i10;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Token start position must not be negative: ");
        stringBuffer.append(i10);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public int findTokenSeparator(int i10) {
        if (i10 >= 0) {
            boolean z10 = false;
            int length = this.currentHeader.length();
            while (!z10 && i10 < length) {
                char charAt = this.currentHeader.charAt(i10);
                if (isTokenSeparator(charAt)) {
                    z10 = true;
                } else {
                    if (!isWhitespace(charAt)) {
                        if (isTokenChar(charAt)) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Tokens without separator (pos ");
                            stringBuffer.append(i10);
                            stringBuffer.append("): ");
                            stringBuffer.append(this.currentHeader);
                            throw new ParseException(stringBuffer.toString());
                        }
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Invalid character after token (pos ");
                        stringBuffer2.append(i10);
                        stringBuffer2.append("): ");
                        stringBuffer2.append(this.currentHeader);
                        throw new ParseException(stringBuffer2.toString());
                    }
                    i10++;
                }
            }
            return i10;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("Search position must not be negative: ");
        stringBuffer3.append(i10);
        throw new IllegalArgumentException(stringBuffer3.toString());
    }

    public int findTokenStart(int i10) {
        if (i10 < 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Search position must not be negative: ");
            stringBuffer.append(i10);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        boolean z10 = false;
        while (!z10) {
            String str = this.currentHeader;
            if (str == null) {
                break;
            }
            int length = str.length();
            while (!z10 && i10 < length) {
                char charAt = this.currentHeader.charAt(i10);
                if (isTokenSeparator(charAt) || isWhitespace(charAt)) {
                    i10++;
                } else {
                    if (!isTokenChar(this.currentHeader.charAt(i10))) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Invalid character before token (pos ");
                        stringBuffer2.append(i10);
                        stringBuffer2.append("): ");
                        stringBuffer2.append(this.currentHeader);
                        throw new ParseException(stringBuffer2.toString());
                    }
                    z10 = true;
                }
            }
            if (!z10) {
                if (this.headerIt.hasNext()) {
                    this.currentHeader = this.headerIt.nextHeader().getValue();
                    i10 = 0;
                } else {
                    this.currentHeader = null;
                }
            }
        }
        if (z10) {
            return i10;
        }
        return -1;
    }

    @Override // org.apache.http.TokenIterator, java.util.Iterator
    public boolean hasNext() {
        return this.currentToken != null;
    }

    public boolean isHttpSeparator(char c10) {
        return HTTP_SEPARATORS.indexOf(c10) >= 0;
    }

    public boolean isTokenChar(char c10) {
        if (Character.isLetterOrDigit(c10)) {
            return true;
        }
        return (Character.isISOControl(c10) || isHttpSeparator(c10)) ? false : true;
    }

    public boolean isTokenSeparator(char c10) {
        return c10 == ',';
    }

    public boolean isWhitespace(char c10) {
        return c10 == '\t' || Character.isSpaceChar(c10);
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException, ParseException {
        return nextToken();
    }

    @Override // org.apache.http.TokenIterator
    public String nextToken() throws NoSuchElementException, ParseException {
        String str = this.currentToken;
        if (str != null) {
            this.searchPos = findNext(this.searchPos);
            return str;
        }
        throw new NoSuchElementException("Iteration already finished.");
    }

    @Override // java.util.Iterator
    public final void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
