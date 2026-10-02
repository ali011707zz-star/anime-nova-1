package cd;

import cd.i;
import java.util.Arrays;

/* compiled from: -Base64.kt */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f3899a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f3900b;

    static {
        i.a aVar = i.f3918j;
        f3899a = aVar.d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").i();
        f3900b = aVar.d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").i();
    }

    public static final byte[] a(String str) {
        int i10;
        char charAt;
        jc.l.f(str, "$this$decodeBase64ToArray");
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i11 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i11];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            char charAt2 = str.charAt(i15);
            if ('A' <= charAt2 && 'Z' >= charAt2) {
                i10 = charAt2 - 'A';
            } else if ('a' <= charAt2 && 'z' >= charAt2) {
                i10 = charAt2 - 'G';
            } else if ('0' <= charAt2 && '9' >= charAt2) {
                i10 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i10 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i10 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i13 = (i13 << 6) | i10;
            i12++;
            if (i12 % 4 == 0) {
                int i16 = i14 + 1;
                bArr[i14] = (byte) (i13 >> 16);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (i13 >> 8);
                bArr[i17] = (byte) i13;
                i14 = i17 + 1;
            }
        }
        int i18 = i12 % 4;
        if (i18 == 1) {
            return null;
        }
        if (i18 == 2) {
            bArr[i14] = (byte) ((i13 << 12) >> 16);
            i14++;
        } else if (i18 == 3) {
            int i19 = i13 << 6;
            int i20 = i14 + 1;
            bArr[i14] = (byte) (i19 >> 16);
            i14 = i20 + 1;
            bArr[i20] = (byte) (i19 >> 8);
        }
        if (i14 == i11) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, i14);
        jc.l.e(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf;
    }

    public static final String b(byte[] bArr, byte[] bArr2) {
        jc.l.f(bArr, "$this$encodeBase64");
        jc.l.f(bArr2, "map");
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            int i13 = i12 + 1;
            byte b11 = bArr[i12];
            int i14 = i13 + 1;
            byte b12 = bArr[i13];
            int i15 = i11 + 1;
            bArr3[i11] = bArr2[(b10 & 255) >> 2];
            int i16 = i15 + 1;
            bArr3[i15] = bArr2[((b10 & 3) << 4) | ((b11 & 255) >> 4)];
            int i17 = i16 + 1;
            bArr3[i16] = bArr2[((b11 & 15) << 2) | ((b12 & 255) >> 6)];
            i11 = i17 + 1;
            bArr3[i17] = bArr2[b12 & 63];
            i10 = i14;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b13 = bArr[i10];
            int i18 = i11 + 1;
            bArr3[i11] = bArr2[(b13 & 255) >> 2];
            int i19 = i18 + 1;
            bArr3[i18] = bArr2[(b13 & 3) << 4];
            byte b14 = (byte) 61;
            bArr3[i19] = b14;
            bArr3[i19 + 1] = b14;
        } else if (length2 == 2) {
            int i20 = i10 + 1;
            byte b15 = bArr[i10];
            byte b16 = bArr[i20];
            int i21 = i11 + 1;
            bArr3[i11] = bArr2[(b15 & 255) >> 2];
            int i22 = i21 + 1;
            bArr3[i21] = bArr2[((b15 & 3) << 4) | ((b16 & 255) >> 4)];
            bArr3[i22] = bArr2[(b16 & 15) << 2];
            bArr3[i22 + 1] = (byte) 61;
        }
        return b.b(bArr3);
    }

    public static /* synthetic */ String c(byte[] bArr, byte[] bArr2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bArr2 = f3899a;
        }
        return b(bArr, bArr2);
    }
}
