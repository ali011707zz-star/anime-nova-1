package cb;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;

/* compiled from: FormatUtils.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final char[][] f3814a = {"0.".toCharArray(), "0.0".toCharArray(), "0.00".toCharArray(), "0.000".toCharArray(), "0.0000".toCharArray(), "0.00000".toCharArray(), "0.000000".toCharArray(), "0.0000000".toCharArray(), "0.00000000".toCharArray(), "0.000000000".toCharArray(), "0.0000000000".toCharArray(), "0.00000000000".toCharArray(), "0.000000000000".toCharArray(), "0.0000000000000".toCharArray(), "0.00000000000000".toCharArray(), "0.000000000000000".toCharArray()};

    public static String a(double d10, int i10) {
        String bigDecimal = new BigDecimal(Double.toString(d10)).setScale(Math.abs(i10), RoundingMode.HALF_UP).toString();
        if (i10 == 0) {
            return bigDecimal;
        }
        int length = bigDecimal.length() - 1;
        while (length >= 0 && bigDecimal.charAt(length) == '0') {
            length--;
        }
        String substring = bigDecimal.substring(0, length + 1);
        return substring.charAt(substring.length() + (-1)) == '.' ? substring.substring(0, substring.length() - 1) : substring;
    }

    public static String b(double d10, int i10) {
        char[] cArr;
        int abs = Math.abs(i10);
        double abs2 = (Math.abs(d10) * Math.pow(10.0d, abs)) + 0.5d;
        if (abs2 <= 9.99999999999999E14d && abs <= 16) {
            long nextUp = (long) Math.nextUp(abs2);
            if (nextUp < 1) {
                return "0";
            }
            char[] charArray = Long.toString(nextUp).toCharArray();
            if (charArray.length > abs) {
                int length = charArray.length - 1;
                int length2 = charArray.length - abs;
                while (length >= length2 && charArray[length] == '0') {
                    length--;
                }
                if (length >= length2) {
                    cArr = new char[length + 2];
                    System.arraycopy(charArray, 0, cArr, 0, length2);
                    cArr[length2] = '.';
                    System.arraycopy(charArray, length2, cArr, length2 + 1, (length - length2) + 1);
                } else {
                    cArr = new char[length2];
                    System.arraycopy(charArray, 0, cArr, 0, length2);
                }
            } else {
                int length3 = charArray.length - 1;
                while (length3 >= 0 && charArray[length3] == '0') {
                    length3--;
                }
                char[] cArr2 = f3814a[abs - charArray.length];
                char[] copyOf = Arrays.copyOf(cArr2, cArr2.length + length3 + 1);
                System.arraycopy(charArray, 0, copyOf, cArr2.length, length3 + 1);
                cArr = copyOf;
            }
            if (Math.signum(d10) > ShadowDrawableWrapper.COS_45) {
                return new String(cArr);
            }
            return "-" + new String(cArr);
        }
        return a(d10, abs);
    }
}
