package qc;

/* compiled from: _Strings.kt */
/* loaded from: classes2.dex */
public class w extends v {
    public static final String u0(String str, int i10) {
        jc.l.f(str, "<this>");
        if (i10 >= 0) {
            String substring = str.substring(nc.g.c(i10, str.length()));
            jc.l.e(substring, "this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static final Character v0(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(0));
    }

    public static final String w0(String str, int i10) {
        jc.l.f(str, "<this>");
        if (i10 >= 0) {
            String substring = str.substring(0, nc.g.c(i10, str.length()));
            jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static final String x0(String str, int i10) {
        jc.l.f(str, "<this>");
        if (i10 >= 0) {
            int length = str.length();
            String substring = str.substring(length - nc.g.c(i10, length));
            jc.l.e(substring, "this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }
}
