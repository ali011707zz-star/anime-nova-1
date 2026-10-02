package okhttp3.internal.tls;

import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    public DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
    
        return new java.lang.String(r1, r2, r8.cur - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String escapedAV() {
        char[] cArr;
        int i10;
        int i11;
        int i12 = this.pos;
        this.beg = i12;
        this.end = i12;
        while (true) {
            int i13 = this.pos;
            if (i13 >= this.length) {
                char[] cArr2 = this.chars;
                int i14 = this.beg;
                return new String(cArr2, i14, this.end - i14);
            }
            cArr = this.chars;
            char c10 = cArr[i13];
            if (c10 == ' ') {
                int i15 = this.end;
                this.cur = i15;
                this.pos = i13 + 1;
                this.end = i15 + 1;
                cArr[i15] = ' ';
                while (true) {
                    i10 = this.pos;
                    i11 = this.length;
                    if (i10 >= i11) {
                        break;
                    }
                    char[] cArr3 = this.chars;
                    if (cArr3[i10] != ' ') {
                        break;
                    }
                    int i16 = this.end;
                    this.end = i16 + 1;
                    cArr3[i16] = ' ';
                    this.pos = i10 + 1;
                }
                if (i10 == i11) {
                    break;
                }
                char[] cArr4 = this.chars;
                if (cArr4[i10] == ',' || cArr4[i10] == '+' || cArr4[i10] == ';') {
                    break;
                }
            } else {
                if (c10 == ';') {
                    break;
                }
                if (c10 == '\\') {
                    int i17 = this.end;
                    this.end = i17 + 1;
                    cArr[i17] = getEscaped();
                    this.pos++;
                } else {
                    if (c10 == '+' || c10 == ',') {
                        break;
                    }
                    int i18 = this.end;
                    this.end = i18 + 1;
                    cArr[i18] = cArr[i13];
                    this.pos = i13 + 1;
                }
            }
        }
        int i19 = this.beg;
        return new String(cArr, i19, this.end - i19);
    }

    private int getByte(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 < this.length) {
            char[] cArr = this.chars;
            char c10 = cArr[i10];
            if (c10 >= '0' && c10 <= '9') {
                i11 = c10 - '0';
            } else if (c10 >= 'a' && c10 <= 'f') {
                i11 = c10 - 'W';
            } else {
                if (c10 < 'A' || c10 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.dn);
                }
                i11 = c10 - '7';
            }
            char c11 = cArr[i13];
            if (c11 >= '0' && c11 <= '9') {
                i12 = c11 - '0';
            } else if (c11 >= 'a' && c11 <= 'f') {
                i12 = c11 - 'W';
            } else {
                if (c11 < 'A' || c11 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.dn);
                }
                i12 = c11 - '7';
            }
            return (i11 << 4) + i12;
        }
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }

    private char getEscaped() {
        int i10 = this.pos + 1;
        this.pos = i10;
        if (i10 != this.length) {
            char[] cArr = this.chars;
            char c10 = cArr[i10];
            if (c10 != ' ' && c10 != '%' && c10 != '\\' && c10 != '_' && c10 != '\"' && c10 != '#') {
                switch (c10) {
                    case '*':
                    case '+':
                    case ',':
                        break;
                    default:
                        switch (c10) {
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                                break;
                            default:
                                return getUTF8();
                        }
                }
            }
            return cArr[i10];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private char getUTF8() {
        int i10;
        int i11;
        int i12 = getByte(this.pos);
        this.pos++;
        if (i12 < 128) {
            return (char) i12;
        }
        if (i12 < 192 || i12 > 247) {
            return '?';
        }
        if (i12 <= 223) {
            i11 = i12 & 31;
            i10 = 1;
        } else if (i12 <= 239) {
            i10 = 2;
            i11 = i12 & 15;
        } else {
            i10 = 3;
            i11 = i12 & 7;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.pos + 1;
            this.pos = i14;
            if (i14 == this.length || this.chars[i14] != '\\') {
                return '?';
            }
            int i15 = i14 + 1;
            this.pos = i15;
            int i16 = getByte(i15);
            this.pos++;
            if ((i16 & 192) != 128) {
                return '?';
            }
            i11 = (i11 << 6) + (i16 & 63);
        }
        return (char) i11;
    }

    private String hexAV() {
        int i10;
        int i11 = this.pos;
        if (i11 + 4 < this.length) {
            this.beg = i11;
            this.pos = i11 + 1;
            while (true) {
                i10 = this.pos;
                if (i10 == this.length) {
                    break;
                }
                char[] cArr = this.chars;
                if (cArr[i10] == '+' || cArr[i10] == ',' || cArr[i10] == ';') {
                    break;
                }
                if (cArr[i10] == ' ') {
                    this.end = i10;
                    this.pos = i10 + 1;
                    while (true) {
                        int i12 = this.pos;
                        if (i12 >= this.length || this.chars[i12] != ' ') {
                            break;
                        }
                        this.pos = i12 + 1;
                    }
                } else {
                    if (cArr[i10] >= 'A' && cArr[i10] <= 'F') {
                        cArr[i10] = (char) (cArr[i10] + ' ');
                    }
                    this.pos = i10 + 1;
                }
            }
            this.end = i10;
            int i13 = this.end;
            int i14 = this.beg;
            int i15 = i13 - i14;
            if (i15 >= 5 && (i15 & 1) != 0) {
                int i16 = i15 / 2;
                byte[] bArr = new byte[i16];
                int i17 = i14 + 1;
                for (int i18 = 0; i18 < i16; i18++) {
                    bArr[i18] = (byte) getByte(i17);
                    i17 += 2;
                }
                return new String(this.chars, this.beg, i15);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private String nextAT() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        while (true) {
            i10 = this.pos;
            i11 = this.length;
            if (i10 >= i11 || this.chars[i10] != ' ') {
                break;
            }
            this.pos = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.beg = i10;
        this.pos = i10 + 1;
        while (true) {
            i12 = this.pos;
            i13 = this.length;
            if (i12 >= i13) {
                break;
            }
            char[] cArr = this.chars;
            if (cArr[i12] == '=' || cArr[i12] == ' ') {
                break;
            }
            this.pos = i12 + 1;
        }
        if (i12 < i13) {
            this.end = i12;
            if (this.chars[i12] == ' ') {
                while (true) {
                    i14 = this.pos;
                    i15 = this.length;
                    if (i14 >= i15) {
                        break;
                    }
                    char[] cArr2 = this.chars;
                    if (cArr2[i14] == '=' || cArr2[i14] != ' ') {
                        break;
                    }
                    this.pos = i14 + 1;
                }
                if (this.chars[i14] != '=' || i14 == i15) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.dn);
                }
            }
            this.pos++;
            while (true) {
                int i16 = this.pos;
                if (i16 >= this.length || this.chars[i16] != ' ') {
                    break;
                }
                this.pos = i16 + 1;
            }
            int i17 = this.end;
            int i18 = this.beg;
            if (i17 - i18 > 4) {
                char[] cArr3 = this.chars;
                if (cArr3[i18 + 3] == '.' && ((cArr3[i18] == 'O' || cArr3[i18] == 'o') && ((cArr3[i18 + 1] == 'I' || cArr3[i18 + 1] == 'i') && (cArr3[i18 + 2] == 'D' || cArr3[i18 + 2] == 'd')))) {
                    this.beg = i18 + 4;
                }
            }
            char[] cArr4 = this.chars;
            int i19 = this.beg;
            return new String(cArr4, i19, i17 - i19);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private String quotedAV() {
        int i10 = this.pos + 1;
        this.pos = i10;
        this.beg = i10;
        this.end = i10;
        while (true) {
            int i11 = this.pos;
            if (i11 != this.length) {
                char[] cArr = this.chars;
                if (cArr[i11] == '\"') {
                    this.pos = i11 + 1;
                    while (true) {
                        int i12 = this.pos;
                        if (i12 >= this.length || this.chars[i12] != ' ') {
                            break;
                        }
                        this.pos = i12 + 1;
                    }
                    char[] cArr2 = this.chars;
                    int i13 = this.beg;
                    return new String(cArr2, i13, this.end - i13);
                }
                if (cArr[i11] == '\\') {
                    cArr[this.end] = getEscaped();
                } else {
                    cArr[this.end] = cArr[i11];
                }
                this.pos++;
                this.end++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
        }
    }

    public String findMostSpecific(String str) {
        String quotedAV;
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String nextAT = nextAT();
        if (nextAT == null) {
            return null;
        }
        do {
            int i10 = this.pos;
            if (i10 == this.length) {
                return null;
            }
            char c10 = this.chars[i10];
            if (c10 == '\"') {
                quotedAV = quotedAV();
            } else if (c10 != '#') {
                quotedAV = (c10 == '+' || c10 == ',' || c10 == ';') ? "" : escapedAV();
            } else {
                quotedAV = hexAV();
            }
            if (str.equalsIgnoreCase(nextAT)) {
                return quotedAV;
            }
            int i11 = this.pos;
            if (i11 >= this.length) {
                return null;
            }
            char[] cArr = this.chars;
            if (cArr[i11] != ',' && cArr[i11] != ';' && cArr[i11] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i11 + 1;
            nextAT = nextAT();
        } while (nextAT != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }
}
