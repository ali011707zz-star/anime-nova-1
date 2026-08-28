package org.apache.http.client.utils;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i10, int i11, boolean z10) {
        int i12;
        if (z10) {
            i12 = i10 / damp;
        } else {
            i12 = i10 / 2;
        }
        int i13 = i12 + (i12 / i11);
        int i14 = 0;
        while (i13 > 455) {
            i13 /= 35;
            i14 += 36;
        }
        return i14 + ((i13 * 36) / (i13 + 38));
    }

    private int digit(char c10) {
        if (c10 >= 'A' && c10 <= 'Z') {
            return c10 - 'A';
        }
        if (c10 >= 'a' && c10 <= 'z') {
            return c10 - 'a';
        }
        if (c10 >= '0' && c10 <= '9') {
            return (c10 - '0') + 26;
        }
        throw new IllegalArgumentException("illegal digit: " + c10);
    }

    public String decode(String str) {
        StringBuilder sb2 = new StringBuilder(str.length());
        int lastIndexOf = str.lastIndexOf(45);
        int i10 = 128;
        int i11 = 72;
        if (lastIndexOf != -1) {
            sb2.append(str.subSequence(0, lastIndexOf));
            str = str.substring(lastIndexOf + 1);
        }
        int i12 = 0;
        while (str.length() > 0) {
            int i13 = 36;
            int i14 = i12;
            int i15 = 1;
            while (str.length() != 0) {
                char charAt = str.charAt(0);
                str = str.substring(1);
                int digit = digit(charAt);
                i14 += digit * i15;
                int i16 = i13 <= i11 + 1 ? 1 : i13 >= i11 + 26 ? 26 : i13 - i11;
                if (digit < i16) {
                    break;
                }
                i15 *= 36 - i16;
                i13 += 36;
            }
            i11 = adapt(i14 - i12, sb2.length() + 1, i12 == 0);
            i10 += i14 / (sb2.length() + 1);
            int length = i14 % (sb2.length() + 1);
            sb2.insert(length, (char) i10);
            i12 = length + 1;
        }
        return sb2.toString();
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb2 = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (sb2.length() > 0) {
                sb2.append('.');
            }
            if (nextToken.startsWith(ACE_PREFIX)) {
                nextToken = decode(nextToken.substring(4));
            }
            sb2.append(nextToken);
        }
        return sb2.toString();
    }
}
