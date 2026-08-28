package dd;

import cd.f;
import cd.i;
import jc.l;
import vb.p;

/* compiled from: ByteString.kt */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5802a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Code restructure failed: missing block: B:232:0x0068, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int c(byte[] bArr, int i10) {
        int i11;
        int length = bArr.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        loop0: while (i12 < length) {
            byte b10 = bArr[i12];
            if (b10 >= 0) {
                int i15 = i14 + 1;
                if (i14 == i10) {
                    return i13;
                }
                if (b10 != 10 && b10 != 13) {
                    if ((b10 >= 0 && 31 >= b10) || (Byte.MAX_VALUE <= b10 && 159 >= b10)) {
                        return -1;
                    }
                }
                if (b10 == 65533) {
                    return -1;
                }
                i13 += b10 < 65536 ? 1 : 2;
                i12++;
                while (true) {
                    i14 = i15;
                    if (i12 < length && bArr[i12] >= 0) {
                        int i16 = i12 + 1;
                        byte b11 = bArr[i12];
                        i15 = i14 + 1;
                        if (i14 == i10) {
                            return i13;
                        }
                        if (b11 != 10 && b11 != 13) {
                            if ((b11 >= 0 && 31 >= b11) || (Byte.MAX_VALUE <= b11 && 159 >= b11)) {
                                break loop0;
                            }
                        }
                        if (b11 == 65533) {
                            break loop0;
                        }
                        i13 += b11 < 65536 ? 1 : 2;
                        i12 = i16;
                    }
                }
            } else {
                if ((b10 >> 5) == -2) {
                    int i17 = i12 + 1;
                    if (length <= i17) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b12 = bArr[i12];
                    byte b13 = bArr[i17];
                    if (!((b13 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i18 = (b13 ^ 3968) ^ (b12 << 6);
                    if (i18 < 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if (i18 != 10 && i18 != 13) {
                        if ((i18 >= 0 && 31 >= i18) || (127 <= i18 && 159 >= i18)) {
                            return -1;
                        }
                    }
                    if (i18 == 65533) {
                        return -1;
                    }
                    i13 += i18 < 65536 ? 1 : 2;
                    p pVar = p.f15031a;
                    i12 += 2;
                } else if ((b10 >> 4) == -2) {
                    int i19 = i12 + 2;
                    if (length <= i19) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b14 = bArr[i12];
                    byte b15 = bArr[i12 + 1];
                    if (!((b15 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b16 = bArr[i19];
                    if (!((b16 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i20 = ((b16 ^ (-123008)) ^ (b15 << 6)) ^ (b14 << 12);
                    if (i20 < 2048) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i20 && 57343 >= i20) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if (i20 != 10 && i20 != 13) {
                        if ((i20 >= 0 && 31 >= i20) || (127 <= i20 && 159 >= i20)) {
                            return -1;
                        }
                    }
                    if (i20 == 65533) {
                        return -1;
                    }
                    i13 += i20 < 65536 ? 1 : 2;
                    p pVar2 = p.f15031a;
                    i12 += 3;
                } else {
                    if ((b10 >> 3) != -2) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i21 = i12 + 3;
                    if (length <= i21) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b17 = bArr[i12];
                    byte b18 = bArr[i12 + 1];
                    if (!((b18 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b19 = bArr[i12 + 2];
                    if (!((b19 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b20 = bArr[i21];
                    if (!((b20 & 192) == 128)) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i22 = (((b20 ^ 3678080) ^ (b19 << 6)) ^ (b18 << 12)) ^ (b17 << 18);
                    if (i22 > 1114111) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i22 && 57343 >= i22) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (i22 < 65536) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if (i22 != 10 && i22 != 13) {
                        if ((i22 >= 0 && 31 >= i22) || (127 <= i22 && 159 >= i22)) {
                            return -1;
                        }
                    }
                    if (i22 == 65533) {
                        return -1;
                    }
                    i13 += i22 < 65536 ? 1 : 2;
                    p pVar3 = p.f15031a;
                    i12 += 4;
                }
                i14 = i11;
            }
        }
        return i13;
    }

    public static final void d(i iVar, f fVar, int i10, int i11) {
        l.f(iVar, "$this$commonWrite");
        l.f(fVar, "buffer");
        fVar.write(iVar.i(), i10, i11);
    }

    public static final int e(char c10) {
        if ('0' <= c10 && '9' >= c10) {
            return c10 - '0';
        }
        char c11 = 'a';
        if ('a' > c10 || 'f' < c10) {
            c11 = 'A';
            if ('A' > c10 || 'F' < c10) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c10);
            }
        }
        return (c10 - c11) + 10;
    }

    public static final char[] f() {
        return f5802a;
    }
}
