package com.google.gson.stream;

import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.internal.bind.a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import la.e;

/* loaded from: classes.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    public int peeked = 0;

    static {
        e.INSTANCE = new e() { // from class: com.google.gson.stream.JsonReader.1
            @Override // la.e
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof a) {
                    ((a) jsonReader).k();
                    return;
                }
                int i10 = jsonReader.peeked;
                if (i10 == 0) {
                    i10 = jsonReader.doPeek();
                }
                if (i10 == 13) {
                    jsonReader.peeked = 9;
                    return;
                }
                if (i10 == 12) {
                    jsonReader.peeked = 8;
                    return;
                }
                if (i10 == 14) {
                    jsonReader.peeked = 10;
                    return;
                }
                throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        this.stackSize = 0;
        this.stackSize = 0 + 1;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader != null) {
            this.in = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int i10 = this.pos - 1;
        this.pos = i10;
        if (i10 + 5 <= this.limit || fillBuffer(5)) {
            char[] cArr = this.buffer;
            if (cArr[i10] == ')' && cArr[i10 + 1] == ']' && cArr[i10 + 2] == '}' && cArr[i10 + 3] == '\'' && cArr[i10 + 4] == '\n') {
                this.pos += 5;
            }
        }
    }

    private boolean fillBuffer(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.buffer;
        int i13 = this.lineStart;
        int i14 = this.pos;
        this.lineStart = i13 - i14;
        int i15 = this.limit;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.limit = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            int i17 = this.limit;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.limit + read;
            this.limit = i11;
            if (this.lineNumber == 0 && (i12 = this.lineStart) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    private boolean isLiteral(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    private int nextNonWhitespace(boolean z10) throws IOException {
        char[] cArr = this.buffer;
        int i10 = this.pos;
        int i11 = this.limit;
        while (true) {
            if (i10 == i11) {
                this.pos = i10;
                if (!fillBuffer(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + locationString());
                }
                i10 = this.pos;
                i11 = this.limit;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.pos = i12;
                    if (i12 == i11) {
                        this.pos = i12 - 1;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c10;
                        }
                    }
                    checkLenient();
                    int i13 = this.pos;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.pos = i13 + 1;
                        if (skipTo("*/")) {
                            i10 = this.pos + 2;
                            i11 = this.limit;
                        } else {
                            throw syntaxError("Unterminated comment");
                        }
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.pos = i13 + 1;
                        skipToEndOfLine();
                        i10 = this.pos;
                        i11 = this.limit;
                    }
                } else if (c10 == '#') {
                    this.pos = i12;
                    checkLenient();
                    skipToEndOfLine();
                    i10 = this.pos;
                    i11 = this.limit;
                } else {
                    this.pos = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005e, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006c, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r9.pos = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String nextQuotedValue(char c10) throws IOException {
        char[] cArr = this.buffer;
        StringBuilder sb2 = null;
        do {
            int i10 = this.pos;
            int i11 = this.limit;
            while (true) {
                int i12 = i11;
                int i13 = i10;
                while (i10 < i12) {
                    int i14 = i10 + 1;
                    char c11 = cArr[i10];
                    if (c11 == c10) {
                        this.pos = i14;
                        int i15 = (i14 - i13) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i13, i15);
                        }
                        sb2.append(cArr, i13, i15);
                        return sb2.toString();
                    }
                    if (c11 == '\\') {
                        this.pos = i14;
                        int i16 = (i14 - i13) - 1;
                        if (sb2 == null) {
                            sb2 = new StringBuilder(Math.max((i16 + 1) * 2, 16));
                        }
                        sb2.append(cArr, i13, i16);
                        sb2.append(readEscapeCharacter());
                        i10 = this.pos;
                        i11 = this.limit;
                    } else {
                        if (c11 == '\n') {
                            this.lineNumber++;
                            this.lineStart = i14;
                        }
                        i10 = i14;
                    }
                }
                break;
            }
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004a, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String nextUnquotedValue() throws IOException {
        String sb2;
        int i10 = 0;
        StringBuilder sb3 = null;
        do {
            int i11 = 0;
            while (true) {
                int i12 = this.pos;
                if (i12 + i11 < this.limit) {
                    char c10 = this.buffer[i12 + i11];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i11 < this.buffer.length) {
                    if (fillBuffer(i11 + 1)) {
                    }
                } else {
                    if (sb3 == null) {
                        sb3 = new StringBuilder(Math.max(i11, 16));
                    }
                    sb3.append(this.buffer, this.pos, i11);
                    this.pos += i11;
                }
            }
            i10 = i11;
            if (sb3 != null) {
                sb2 = new String(this.buffer, this.pos, i10);
            } else {
                sb3.append(this.buffer, this.pos, i10);
                sb2 = sb3.toString();
            }
            this.pos += i10;
            return sb2;
        } while (fillBuffer(1));
        if (sb3 != null) {
        }
        this.pos += i10;
        return sb2;
    }

    private int peekKeyword() throws IOException {
        int i10;
        String str;
        String str2;
        char c10 = this.buffer[this.pos];
        if (c10 == 't' || c10 == 'T') {
            i10 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c10 == 'f' || c10 == 'F') {
            i10 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            i10 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.pos + i11 >= this.limit && !fillBuffer(i11 + 1)) {
                return 0;
            }
            char c11 = this.buffer[this.pos + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0099, code lost:
    
        if (r9 != 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x009b, code lost:
    
        if (r10 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00a1, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a3, code lost:
    
        if (r13 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a9, code lost:
    
        if (r11 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ab, code lost:
    
        if (r13 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ad, code lost:
    
        if (r13 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b0, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b1, code lost:
    
        r18.peekedLong = r11;
        r18.pos += r8;
        r18.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bd, code lost:
    
        if (r9 == 2) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c0, code lost:
    
        if (r9 == 4) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c3, code lost:
    
        if (r9 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c6, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c8, code lost:
    
        r18.peekedNumberLength = r8;
        r18.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0097, code lost:
    
        if (isLiteral(r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00cf, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int peekNumber() throws IOException {
        char[] cArr = this.buffer;
        int i10 = this.pos;
        int i11 = this.limit;
        int i12 = 0;
        int i13 = 0;
        char c10 = 0;
        boolean z10 = true;
        long j10 = 0;
        boolean z11 = false;
        while (true) {
            if (i10 + i13 == i11) {
                if (i13 == cArr.length) {
                    return i12;
                }
                if (!fillBuffer(i13 + 1)) {
                    break;
                }
                i10 = this.pos;
                i11 = this.limit;
            }
            char c11 = cArr[i10 + i13];
            if (c11 != '+') {
                if (c11 == 'E' || c11 == 'e') {
                    i12 = 0;
                    if (c10 != 2 && c10 != 4) {
                        return 0;
                    }
                    c10 = 5;
                } else if (c11 == '-') {
                    i12 = 0;
                    if (c10 == 0) {
                        c10 = 1;
                        z11 = true;
                    } else if (c10 != 5) {
                        return 0;
                    }
                } else if (c11 == '.') {
                    i12 = 0;
                    if (c10 != 2) {
                        return 0;
                    }
                    c10 = 3;
                } else {
                    if (c11 < '0' || c11 > '9') {
                        break;
                    }
                    if (c10 == 1 || c10 == 0) {
                        j10 = -(c11 - '0');
                        i12 = 0;
                        c10 = 2;
                    } else {
                        if (c10 == 2) {
                            if (j10 == 0) {
                                return 0;
                            }
                            long j11 = (10 * j10) - (c11 - '0');
                            z10 &= j10 > MIN_INCOMPLETE_INTEGER || (j10 == MIN_INCOMPLETE_INTEGER && j11 < j10);
                            j10 = j11;
                        } else if (c10 == 3) {
                            i12 = 0;
                            c10 = 4;
                        } else if (c10 == 5 || c10 == 6) {
                            i12 = 0;
                            c10 = 7;
                        }
                        i12 = 0;
                    }
                }
                i13++;
            } else {
                i12 = 0;
                if (c10 != 5) {
                    return 0;
                }
            }
            c10 = 6;
            i13++;
        }
    }

    private void push(int i10) {
        int i11 = this.stackSize;
        int[] iArr = this.stack;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.stack = Arrays.copyOf(iArr, i12);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i12);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i12);
        }
        int[] iArr2 = this.stack;
        int i13 = this.stackSize;
        this.stackSize = i13 + 1;
        iArr2[i13] = i10;
    }

    private char readEscapeCharacter() throws IOException {
        int i10;
        int i11;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i12 = this.pos;
        int i13 = i12 + 1;
        this.pos = i13;
        char c10 = cArr[i12];
        if (c10 == '\n') {
            this.lineNumber++;
            this.lineStart = i13;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 == 'u') {
                if (i13 + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError("Unterminated escape sequence");
                }
                char c11 = 0;
                int i14 = this.pos;
                int i15 = i14 + 4;
                while (i14 < i15) {
                    char c12 = this.buffer[i14];
                    char c13 = (char) (c11 << 4);
                    if (c12 < '0' || c12 > '9') {
                        if (c12 >= 'a' && c12 <= 'f') {
                            i10 = c12 - 'a';
                        } else {
                            if (c12 < 'A' || c12 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                            }
                            i10 = c12 - 'A';
                        }
                        i11 = i10 + 10;
                    } else {
                        i11 = c12 - '0';
                    }
                    c11 = (char) (c13 + i11);
                    i14++;
                }
                this.pos += 4;
                return c11;
            }
            throw syntaxError("Invalid escape sequence");
        }
        return c10;
    }

    private void skipQuotedValue(char c10) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i10 = this.pos;
            int i11 = this.limit;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.pos = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.pos = i12;
                    readEscapeCharacter();
                    i10 = this.pos;
                    i11 = this.limit;
                } else {
                    if (c11 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i12;
                    }
                    i10 = i12;
                }
            }
            this.pos = i10;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i10 = this.pos;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.buffer[this.pos + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = i10 + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c10;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i10 = this.pos;
            int i11 = i10 + 1;
            this.pos = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = i11;
                return;
            }
        } while (c10 != '\r');
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private void skipUnquotedValue() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.pos
            int r2 = r1 + r0
            int r3 = r4.limit
            if (r2 >= r3) goto L51
            char[] r2 = r4.buffer
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.checkLenient()
        L4b:
            int r1 = r4.pos
            int r1 = r1 + r0
            r4.pos = r1
            return
        L51:
            int r1 = r1 + r0
            r4.pos = r1
            r0 = 1
            boolean r0 = r4.fillBuffer(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.skipUnquotedValue():void");
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + locationString());
    }

    public void beginArray() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
        }
    }

    public void beginObject() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 1) {
            push(3);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public int doPeek() throws IOException {
        int nextNonWhitespace;
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 != 44) {
                if (nextNonWhitespace2 != 59) {
                    if (nextNonWhitespace2 == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    throw syntaxError("Unterminated array");
                }
                checkLenient();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5 && (nextNonWhitespace = nextNonWhitespace(true)) != 44) {
                    if (nextNonWhitespace != 59) {
                        if (nextNonWhitespace == 125) {
                            this.peeked = 2;
                            return 2;
                        }
                        throw syntaxError("Unterminated object");
                    }
                    checkLenient();
                }
                int nextNonWhitespace3 = nextNonWhitespace(true);
                if (nextNonWhitespace3 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (nextNonWhitespace3 == 39) {
                    checkLenient();
                    this.peeked = 12;
                    return 12;
                }
                if (nextNonWhitespace3 == 125) {
                    if (i11 != 5) {
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError("Expected name");
                }
                checkLenient();
                this.pos--;
                if (isLiteral((char) nextNonWhitespace3)) {
                    this.peeked = 14;
                    return 14;
                }
                throw syntaxError("Expected name");
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int nextNonWhitespace4 = nextNonWhitespace(true);
                if (nextNonWhitespace4 != 58) {
                    if (nextNonWhitespace4 == 61) {
                        checkLenient();
                        if (this.pos < this.limit || fillBuffer(1)) {
                            char[] cArr = this.buffer;
                            int i12 = this.pos;
                            if (cArr[i12] == '>') {
                                this.pos = i12 + 1;
                            }
                        }
                    } else {
                        throw syntaxError("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i11 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int nextNonWhitespace5 = nextNonWhitespace(true);
        if (nextNonWhitespace5 == 34) {
            this.peeked = 9;
            return 9;
        }
        if (nextNonWhitespace5 == 39) {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        if (nextNonWhitespace5 != 44 && nextNonWhitespace5 != 59) {
            if (nextNonWhitespace5 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (nextNonWhitespace5 != 93) {
                if (nextNonWhitespace5 != 123) {
                    this.pos--;
                    int peekKeyword = peekKeyword();
                    if (peekKeyword != 0) {
                        return peekKeyword;
                    }
                    int peekNumber = peekNumber();
                    if (peekNumber != 0) {
                        return peekNumber;
                    }
                    if (isLiteral(this.buffer[this.pos])) {
                        checkLenient();
                        this.peeked = 10;
                        return 10;
                    }
                    throw syntaxError("Expected value");
                }
                this.peeked = 1;
                return 1;
            }
            if (i11 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw syntaxError("Unexpected value");
        }
        checkLenient();
        this.pos--;
        this.peeked = 7;
        return 7;
    }

    public void endArray() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 4) {
            int i11 = this.stackSize - 1;
            this.stackSize = i11;
            int[] iArr = this.pathIndices;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
    }

    public void endObject() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 2) {
            int i11 = this.stackSize - 1;
            this.stackSize = i11;
            this.pathNames[i11] = null;
            int[] iArr = this.pathIndices;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
    }

    public String getPath() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = this.stackSize;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.stack[i11];
            if (i12 == 1 || i12 == 2) {
                sb2.append('[');
                sb2.append(this.pathIndices[i11]);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append('.');
                String[] strArr = this.pathNames;
                if (strArr[i11] != null) {
                    sb2.append(strArr[i11]);
                }
            }
        }
        return sb2.toString();
    }

    public boolean hasNext() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        return (i10 == 2 || i10 == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public String locationString() {
        return " at line " + (this.lineNumber + 1) + " column " + ((this.pos - this.lineStart) + 1) + " path " + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        }
        if (i10 == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i12 = this.stackSize - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
    }

    public double nextDouble() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i10 == 8 || i10 == 9) {
            this.peekedString = nextQuotedValue(i10 == 8 ? '\'' : '\"');
        } else if (i10 == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i10 != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + locationString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public int nextInt() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            long j10 = this.peekedLong;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (i10 != 8 && i10 != 9 && i10 != 10) {
                throw new IllegalStateException("Expected an int but was " + peek() + locationString());
            }
            if (i10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i10 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i13 = this.stackSize - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        int i14 = (int) parseDouble;
        if (i14 == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i15 = this.stackSize - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        }
        throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
    }

    public long nextLong() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (i10 != 8 && i10 != 9 && i10 != 10) {
                throw new IllegalStateException("Expected a long but was " + peek() + locationString());
            }
            if (i10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i10 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j10 = (long) parseDouble;
        if (j10 == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i13 = this.stackSize - 1;
            iArr3[i13] = iArr3[i13] + 1;
            return j10;
        }
        throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
    }

    public String nextName() throws IOException {
        String nextQuotedValue;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 14) {
            nextQuotedValue = nextUnquotedValue();
        } else if (i10 == 12) {
            nextQuotedValue = nextQuotedValue('\'');
        } else if (i10 == 13) {
            nextQuotedValue = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + locationString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextQuotedValue;
        return nextQuotedValue;
    }

    public void nextNull() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + locationString());
    }

    public String nextString() throws IOException {
        String str;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 10) {
            str = nextUnquotedValue();
        } else if (i10 == 8) {
            str = nextQuotedValue('\'');
        } else if (i10 == 9) {
            str = nextQuotedValue('\"');
        } else if (i10 == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (i10 == 15) {
            str = Long.toString(this.peekedLong);
        } else if (i10 == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i11 = this.stackSize - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        switch (i10) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z10) {
        this.lenient = z10;
    }

    public void skipValue() throws IOException {
        int i10 = 0;
        do {
            int i11 = this.peeked;
            if (i11 == 0) {
                i11 = doPeek();
            }
            if (i11 == 3) {
                push(1);
            } else if (i11 == 1) {
                push(3);
            } else {
                if (i11 == 4) {
                    this.stackSize--;
                } else if (i11 == 2) {
                    this.stackSize--;
                } else {
                    if (i11 == 14 || i11 == 10) {
                        skipUnquotedValue();
                    } else if (i11 == 8 || i11 == 12) {
                        skipQuotedValue('\'');
                    } else if (i11 == 9 || i11 == 13) {
                        skipQuotedValue('\"');
                    } else if (i11 == 16) {
                        this.pos += this.peekedNumberLength;
                    }
                    this.peeked = 0;
                }
                i10--;
                this.peeked = 0;
            }
            i10++;
            this.peeked = 0;
        } while (i10 != 0);
        int[] iArr = this.pathIndices;
        int i12 = this.stackSize;
        int i13 = i12 - 1;
        iArr[i13] = iArr[i13] + 1;
        this.pathNames[i12 - 1] = "null";
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }
}
