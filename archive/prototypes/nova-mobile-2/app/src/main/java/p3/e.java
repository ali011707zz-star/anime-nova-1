package p3;

import cd.f;
import cd.h;
import cd.i;
import java.io.EOFException;
import java.io.IOException;
import org.apache.http.message.BasicHeaderValueFormatter;
import p3.c;

/* compiled from: JsonUtf8Reader.java */
/* loaded from: classes.dex */
public final class e extends c {

    /* renamed from: s, reason: collision with root package name */
    public static final i f12023s = i.g("'\\");

    /* renamed from: t, reason: collision with root package name */
    public static final i f12024t = i.g(BasicHeaderValueFormatter.UNSAFE_CHARS);

    /* renamed from: u, reason: collision with root package name */
    public static final i f12025u = i.g("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: v, reason: collision with root package name */
    public static final i f12026v = i.g("\n\r");

    /* renamed from: w, reason: collision with root package name */
    public static final i f12027w = i.g("*/");

    /* renamed from: m, reason: collision with root package name */
    public final h f12028m;

    /* renamed from: n, reason: collision with root package name */
    public final f f12029n;

    /* renamed from: o, reason: collision with root package name */
    public int f12030o = 0;

    /* renamed from: p, reason: collision with root package name */
    public long f12031p;

    /* renamed from: q, reason: collision with root package name */
    public int f12032q;

    /* renamed from: r, reason: collision with root package name */
    public String f12033r;

    public e(h hVar) {
        if (hVar != null) {
            this.f12028m = hVar;
            this.f12029n = hVar.c();
            a0(6);
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // p3.c
    public boolean F() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 5) {
            this.f12030o = 0;
            int[] iArr = this.f12007i;
            int i11 = this.f12004f - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        }
        if (i10 == 6) {
            this.f12030o = 0;
            int[] iArr2 = this.f12007i;
            int i12 = this.f12004f - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        }
        throw new a("Expected a boolean but was " + V() + " at path " + getPath());
    }

    @Override // p3.c
    public double G() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 16) {
            this.f12030o = 0;
            int[] iArr = this.f12007i;
            int i11 = this.f12004f - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f12031p;
        }
        if (i10 == 17) {
            this.f12033r = this.f12029n.K0(this.f12032q);
        } else if (i10 == 9) {
            this.f12033r = M0(f12024t);
        } else if (i10 == 8) {
            this.f12033r = M0(f12023s);
        } else if (i10 == 10) {
            this.f12033r = N0();
        } else if (i10 != 11) {
            throw new a("Expected a double but was " + V() + " at path " + getPath());
        }
        this.f12030o = 11;
        try {
            double parseDouble = Double.parseDouble(this.f12033r);
            if (!this.f12008j && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                throw new b("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f12033r = null;
            this.f12030o = 0;
            int[] iArr2 = this.f12007i;
            int i12 = this.f12004f - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.f12033r + " at path " + getPath());
        }
    }

    public final void H0() throws IOException {
        if (!this.f12008j) {
            throw B0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    public final int I0() throws IOException {
        int[] iArr = this.f12005g;
        int i10 = this.f12004f;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int L0 = L0(true);
            this.f12029n.readByte();
            if (L0 != 44) {
                if (L0 != 59) {
                    if (L0 == 93) {
                        this.f12030o = 4;
                        return 4;
                    }
                    throw B0("Unterminated array");
                }
                H0();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5) {
                    int L02 = L0(true);
                    this.f12029n.readByte();
                    if (L02 != 44) {
                        if (L02 != 59) {
                            if (L02 == 125) {
                                this.f12030o = 2;
                                return 2;
                            }
                            throw B0("Unterminated object");
                        }
                        H0();
                    }
                }
                int L03 = L0(true);
                if (L03 == 34) {
                    this.f12029n.readByte();
                    this.f12030o = 13;
                    return 13;
                }
                if (L03 == 39) {
                    this.f12029n.readByte();
                    H0();
                    this.f12030o = 12;
                    return 12;
                }
                if (L03 != 125) {
                    H0();
                    if (K0((char) L03)) {
                        this.f12030o = 14;
                        return 14;
                    }
                    throw B0("Expected name");
                }
                if (i11 != 5) {
                    this.f12029n.readByte();
                    this.f12030o = 2;
                    return 2;
                }
                throw B0("Expected name");
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int L04 = L0(true);
                this.f12029n.readByte();
                if (L04 != 58) {
                    if (L04 == 61) {
                        H0();
                        if (this.f12028m.y(1L) && this.f12029n.G(0L) == 62) {
                            this.f12029n.readByte();
                        }
                    } else {
                        throw B0("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                iArr[i10 - 1] = 7;
            } else if (i11 == 7) {
                if (L0(false) == -1) {
                    this.f12030o = 18;
                    return 18;
                }
                H0();
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int L05 = L0(true);
        if (L05 == 34) {
            this.f12029n.readByte();
            this.f12030o = 9;
            return 9;
        }
        if (L05 == 39) {
            H0();
            this.f12029n.readByte();
            this.f12030o = 8;
            return 8;
        }
        if (L05 != 44 && L05 != 59) {
            if (L05 == 91) {
                this.f12029n.readByte();
                this.f12030o = 3;
                return 3;
            }
            if (L05 != 93) {
                if (L05 != 123) {
                    int O0 = O0();
                    if (O0 != 0) {
                        return O0;
                    }
                    int P0 = P0();
                    if (P0 != 0) {
                        return P0;
                    }
                    if (K0(this.f12029n.G(0L))) {
                        H0();
                        this.f12030o = 10;
                        return 10;
                    }
                    throw B0("Expected value");
                }
                this.f12029n.readByte();
                this.f12030o = 1;
                return 1;
            }
            if (i11 == 1) {
                this.f12029n.readByte();
                this.f12030o = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw B0("Unexpected value");
        }
        H0();
        this.f12030o = 7;
        return 7;
    }

    public final int J0(String str, c.a aVar) {
        int length = aVar.f12010a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f12010a[i10])) {
                this.f12030o = 0;
                this.f12006h[this.f12004f - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    public final boolean K0(int i10) throws IOException {
        if (i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 32) {
            return false;
        }
        if (i10 != 35) {
            if (i10 == 44) {
                return false;
            }
            if (i10 != 47 && i10 != 61) {
                if (i10 == 123 || i10 == 125 || i10 == 58) {
                    return false;
                }
                if (i10 != 59) {
                    switch (i10) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        H0();
        return false;
    }

    @Override // p3.c
    public int L() throws IOException {
        String M0;
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 16) {
            long j10 = this.f12031p;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.f12030o = 0;
                int[] iArr = this.f12007i;
                int i12 = this.f12004f - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new a("Expected an int but was " + this.f12031p + " at path " + getPath());
        }
        if (i10 == 17) {
            this.f12033r = this.f12029n.K0(this.f12032q);
        } else if (i10 == 9 || i10 == 8) {
            if (i10 == 9) {
                M0 = M0(f12024t);
            } else {
                M0 = M0(f12023s);
            }
            this.f12033r = M0;
            try {
                int parseInt = Integer.parseInt(M0);
                this.f12030o = 0;
                int[] iArr2 = this.f12007i;
                int i13 = this.f12004f - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i10 != 11) {
            throw new a("Expected an int but was " + V() + " at path " + getPath());
        }
        this.f12030o = 11;
        try {
            double parseDouble = Double.parseDouble(this.f12033r);
            int i14 = (int) parseDouble;
            if (i14 == parseDouble) {
                this.f12033r = null;
                this.f12030o = 0;
                int[] iArr3 = this.f12007i;
                int i15 = this.f12004f - 1;
                iArr3[i15] = iArr3[i15] + 1;
                return i14;
            }
            throw new a("Expected an int but was " + this.f12033r + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.f12033r + " at path " + getPath());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        r6.f12029n.a(r3 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        if (r1 != 47) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
    
        if (r1 != 35) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        H0();
        T0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0039, code lost:
    
        if (r6.f12028m.y(2) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
    
        H0();
        r3 = r6.f12029n.G(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        if (r3 == 42) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005c, code lost:
    
        r6.f12029n.readByte();
        r6.f12029n.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (S0() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        throw B0("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004b, code lost:
    
        if (r3 == 47) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004e, code lost:
    
        r6.f12029n.readByte();
        r6.f12029n.readByte();
        T0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x003b, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int L0(boolean z10) throws IOException {
        while (true) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (!this.f12028m.y(i11)) {
                    if (z10) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                byte G = this.f12029n.G(i10);
                if (G != 10 && G != 32 && G != 13 && G != 9) {
                    break;
                }
                i10 = i11;
            }
        }
    }

    public final String M0(i iVar) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long q02 = this.f12028m.q0(iVar);
            if (q02 != -1) {
                if (this.f12029n.G(q02) != 92) {
                    if (sb2 == null) {
                        String K0 = this.f12029n.K0(q02);
                        this.f12029n.readByte();
                        return K0;
                    }
                    sb2.append(this.f12029n.K0(q02));
                    this.f12029n.readByte();
                    return sb2.toString();
                }
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.f12029n.K0(q02));
                this.f12029n.readByte();
                sb2.append(Q0());
            } else {
                throw B0("Unterminated string");
            }
        }
    }

    @Override // p3.c
    public String N() throws IOException {
        String str;
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 14) {
            str = N0();
        } else if (i10 == 13) {
            str = M0(f12024t);
        } else if (i10 == 12) {
            str = M0(f12023s);
        } else if (i10 == 15) {
            str = this.f12033r;
        } else {
            throw new a("Expected a name but was " + V() + " at path " + getPath());
        }
        this.f12030o = 0;
        this.f12006h[this.f12004f - 1] = str;
        return str;
    }

    public final String N0() throws IOException {
        long q02 = this.f12028m.q0(f12025u);
        return q02 != -1 ? this.f12029n.K0(q02) : this.f12029n.J0();
    }

    public final int O0() throws IOException {
        int i10;
        String str;
        String str2;
        byte G = this.f12029n.G(0L);
        if (G == 116 || G == 84) {
            i10 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (G == 102 || G == 70) {
            i10 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (G != 110 && G != 78) {
                return 0;
            }
            i10 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        int i11 = 1;
        while (i11 < length) {
            int i12 = i11 + 1;
            if (!this.f12028m.y(i12)) {
                return 0;
            }
            byte G2 = this.f12029n.G(i11);
            if (G2 != str.charAt(i11) && G2 != str2.charAt(i11)) {
                return 0;
            }
            i11 = i12;
        }
        if (this.f12028m.y(length + 1) && K0(this.f12029n.G(length))) {
            return 0;
        }
        this.f12029n.a(length);
        this.f12030o = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0089, code lost:
    
        if (K0(r11) != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008b, code lost:
    
        if (r6 != 2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008d, code lost:
    
        if (r7 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
    
        if (r10 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0099, code lost:
    
        if (r8 != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009b, code lost:
    
        if (r10 != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009d, code lost:
    
        if (r10 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a0, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a1, code lost:
    
        r16.f12031p = r8;
        r16.f12029n.a(r5);
        r16.f12030o = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ad, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ae, code lost:
    
        if (r6 == 2) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b1, code lost:
    
        if (r6 == 4) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b4, code lost:
    
        if (r6 != 7) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b7, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b9, code lost:
    
        r16.f12032q = r5;
        r16.f12030o = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bf, code lost:
    
        return 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c0, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int P0() throws IOException {
        boolean z10 = true;
        int i10 = 0;
        long j10 = 0;
        int i11 = 0;
        char c10 = 0;
        boolean z11 = true;
        boolean z12 = false;
        while (true) {
            int i12 = i11 + 1;
            if (!this.f12028m.y(i12)) {
                break;
            }
            byte G = this.f12029n.G(i11);
            if (G != 43) {
                if (G == 69 || G == 101) {
                    if (c10 != 2 && c10 != 4) {
                        return i10;
                    }
                    c10 = 5;
                } else if (G != 45) {
                    if (G != 46) {
                        if (G < 48 || G > 57) {
                            break;
                        }
                        if (c10 == z10 || c10 == 0) {
                            j10 = -(G - 48);
                            i10 = 0;
                            c10 = 2;
                        } else {
                            if (c10 == 2) {
                                if (j10 == 0) {
                                    return i10;
                                }
                                long j11 = (10 * j10) - (G - 48);
                                z11 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                                j10 = j11;
                            } else if (c10 == 3) {
                                i10 = 0;
                                c10 = 4;
                            } else if (c10 == 5 || c10 == 6) {
                                i10 = 0;
                                c10 = 7;
                            }
                            i10 = 0;
                        }
                    } else {
                        if (c10 != 2) {
                            return i10;
                        }
                        c10 = 3;
                    }
                } else if (c10 == 0) {
                    c10 = 1;
                    z12 = true;
                } else if (c10 != 5) {
                    return i10;
                }
                i11 = i12;
                z10 = true;
            } else if (c10 != 5) {
                return i10;
            }
            c10 = 6;
            i11 = i12;
            z10 = true;
        }
    }

    public final char Q0() throws IOException {
        int i10;
        int i11;
        if (this.f12028m.y(1L)) {
            byte readByte = this.f12029n.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte == 98) {
                return '\b';
            }
            if (readByte == 102) {
                return '\f';
            }
            if (readByte == 110) {
                return '\n';
            }
            if (readByte == 114) {
                return '\r';
            }
            if (readByte == 116) {
                return '\t';
            }
            if (readByte != 117) {
                if (this.f12008j) {
                    return (char) readByte;
                }
                throw B0("Invalid escape sequence: \\" + ((char) readByte));
            }
            if (this.f12028m.y(4L)) {
                char c10 = 0;
                for (int i12 = 0; i12 < 4; i12++) {
                    byte G = this.f12029n.G(i12);
                    char c11 = (char) (c10 << 4);
                    if (G < 48 || G > 57) {
                        if (G >= 97 && G <= 102) {
                            i10 = G - 97;
                        } else {
                            if (G < 65 || G > 70) {
                                throw B0("\\u" + this.f12029n.K0(4L));
                            }
                            i10 = G - 65;
                        }
                        i11 = i10 + 10;
                    } else {
                        i11 = G - 48;
                    }
                    c10 = (char) (c11 + i11);
                }
                this.f12029n.a(4L);
                return c10;
            }
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        throw B0("Unterminated escape sequence");
    }

    @Override // p3.c
    public String R() throws IOException {
        String K0;
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 10) {
            K0 = N0();
        } else if (i10 == 9) {
            K0 = M0(f12024t);
        } else if (i10 == 8) {
            K0 = M0(f12023s);
        } else if (i10 == 11) {
            K0 = this.f12033r;
            this.f12033r = null;
        } else if (i10 == 16) {
            K0 = Long.toString(this.f12031p);
        } else if (i10 == 17) {
            K0 = this.f12029n.K0(this.f12032q);
        } else {
            throw new a("Expected a string but was " + V() + " at path " + getPath());
        }
        this.f12030o = 0;
        int[] iArr = this.f12007i;
        int i11 = this.f12004f - 1;
        iArr[i11] = iArr[i11] + 1;
        return K0;
    }

    public final void R0(i iVar) throws IOException {
        while (true) {
            long q02 = this.f12028m.q0(iVar);
            if (q02 != -1) {
                if (this.f12029n.G(q02) == 92) {
                    this.f12029n.a(q02 + 1);
                    Q0();
                } else {
                    this.f12029n.a(q02 + 1);
                    return;
                }
            } else {
                throw B0("Unterminated string");
            }
        }
    }

    public final boolean S0() throws IOException {
        long E = this.f12028m.E(f12027w);
        boolean z10 = E != -1;
        f fVar = this.f12029n;
        fVar.a(z10 ? E + r1.y() : fVar.N0());
        return z10;
    }

    public final void T0() throws IOException {
        long q02 = this.f12028m.q0(f12026v);
        f fVar = this.f12029n;
        fVar.a(q02 != -1 ? q02 + 1 : fVar.N0());
    }

    public final void U0() throws IOException {
        long q02 = this.f12028m.q0(f12025u);
        f fVar = this.f12029n;
        if (q02 == -1) {
            q02 = fVar.N0();
        }
        fVar.a(q02);
    }

    @Override // p3.c
    public c.b V() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        switch (i10) {
            case 1:
                return c.b.BEGIN_OBJECT;
            case 2:
                return c.b.END_OBJECT;
            case 3:
                return c.b.BEGIN_ARRAY;
            case 4:
                return c.b.END_ARRAY;
            case 5:
            case 6:
                return c.b.BOOLEAN;
            case 7:
                return c.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return c.b.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return c.b.NAME;
            case 16:
            case 17:
                return c.b.NUMBER;
            case 18:
                return c.b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // p3.c
    public int c0(c.a aVar) throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 < 12 || i10 > 15) {
            return -1;
        }
        if (i10 == 15) {
            return J0(this.f12033r, aVar);
        }
        int t10 = this.f12028m.t(aVar.f12011b);
        if (t10 != -1) {
            this.f12030o = 0;
            this.f12006h[this.f12004f - 1] = aVar.f12010a[t10];
            return t10;
        }
        String str = this.f12006h[this.f12004f - 1];
        String N = N();
        int J0 = J0(N, aVar);
        if (J0 == -1) {
            this.f12030o = 15;
            this.f12033r = N;
            this.f12006h[this.f12004f - 1] = str;
        }
        return J0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12030o = 0;
        this.f12005g[0] = 8;
        this.f12004f = 1;
        this.f12029n.b();
        this.f12028m.close();
    }

    @Override // p3.c
    public void d() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 3) {
            a0(1);
            this.f12007i[this.f12004f - 1] = 0;
            this.f12030o = 0;
        } else {
            throw new a("Expected BEGIN_ARRAY but was " + V() + " at path " + getPath());
        }
    }

    @Override // p3.c
    public void h() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 1) {
            a0(3);
            this.f12030o = 0;
            return;
        }
        throw new a("Expected BEGIN_OBJECT but was " + V() + " at path " + getPath());
    }

    @Override // p3.c
    public void h0() throws IOException {
        if (!this.f12009k) {
            int i10 = this.f12030o;
            if (i10 == 0) {
                i10 = I0();
            }
            if (i10 == 14) {
                U0();
            } else if (i10 == 13) {
                R0(f12024t);
            } else if (i10 == 12) {
                R0(f12023s);
            } else if (i10 != 15) {
                throw new a("Expected a name but was " + V() + " at path " + getPath());
            }
            this.f12030o = 0;
            this.f12006h[this.f12004f - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + V() + " at " + getPath());
    }

    @Override // p3.c
    public void k() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 4) {
            int i11 = this.f12004f - 1;
            this.f12004f = i11;
            int[] iArr = this.f12007i;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f12030o = 0;
            return;
        }
        throw new a("Expected END_ARRAY but was " + V() + " at path " + getPath());
    }

    @Override // p3.c
    public void k0() throws IOException {
        if (!this.f12009k) {
            int i10 = 0;
            do {
                int i11 = this.f12030o;
                if (i11 == 0) {
                    i11 = I0();
                }
                if (i11 == 3) {
                    a0(1);
                } else if (i11 == 1) {
                    a0(3);
                } else {
                    if (i11 == 4) {
                        i10--;
                        if (i10 >= 0) {
                            this.f12004f--;
                        } else {
                            throw new a("Expected a value but was " + V() + " at path " + getPath());
                        }
                    } else if (i11 == 2) {
                        i10--;
                        if (i10 >= 0) {
                            this.f12004f--;
                        } else {
                            throw new a("Expected a value but was " + V() + " at path " + getPath());
                        }
                    } else if (i11 == 14 || i11 == 10) {
                        U0();
                    } else if (i11 == 9 || i11 == 13) {
                        R0(f12024t);
                    } else if (i11 == 8 || i11 == 12) {
                        R0(f12023s);
                    } else if (i11 == 17) {
                        this.f12029n.a(this.f12032q);
                    } else if (i11 == 18) {
                        throw new a("Expected a value but was " + V() + " at path " + getPath());
                    }
                    this.f12030o = 0;
                }
                i10++;
                this.f12030o = 0;
            } while (i10 != 0);
            int[] iArr = this.f12007i;
            int i12 = this.f12004f;
            int i13 = i12 - 1;
            iArr[i13] = iArr[i13] + 1;
            this.f12006h[i12 - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + V() + " at " + getPath());
    }

    public String toString() {
        return "JsonReader(" + this.f12028m + ")";
    }

    @Override // p3.c
    public void x() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        if (i10 == 2) {
            int i11 = this.f12004f - 1;
            this.f12004f = i11;
            this.f12006h[i11] = null;
            int[] iArr = this.f12007i;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f12030o = 0;
            return;
        }
        throw new a("Expected END_OBJECT but was " + V() + " at path " + getPath());
    }

    @Override // p3.c
    public boolean z() throws IOException {
        int i10 = this.f12030o;
        if (i10 == 0) {
            i10 = I0();
        }
        return (i10 == 2 || i10 == 4 || i10 == 18) ? false : true;
    }
}
