package qc;

import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import wb.z;

/* compiled from: StringsJVM.kt */
/* loaded from: classes2.dex */
public class t extends s {
    public static final String n(String str) {
        jc.l.f(str, "<this>");
        Locale locale = Locale.getDefault();
        jc.l.e(locale, "getDefault()");
        return o(str, locale);
    }

    public static final String o(String str, Locale locale) {
        jc.l.f(str, "<this>");
        jc.l.f(locale, "locale");
        if (!(str.length() > 0)) {
            return str;
        }
        char charAt = str.charAt(0);
        if (!Character.isLowerCase(charAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char titleCase = Character.toTitleCase(charAt);
        if (titleCase != Character.toUpperCase(charAt)) {
            sb2.append(titleCase);
        } else {
            String substring = str.substring(0, 1);
            jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            jc.l.d(substring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = substring.toUpperCase(locale);
            jc.l.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
            sb2.append(upperCase);
        }
        String substring2 = str.substring(1);
        jc.l.e(substring2, "this as java.lang.String).substring(startIndex)");
        sb2.append(substring2);
        String sb3 = sb2.toString();
        jc.l.e(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    public static final boolean p(String str, String str2, boolean z10) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "suffix");
        if (!z10) {
            return str.endsWith(str2);
        }
        return t(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static /* synthetic */ boolean q(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return p(str, str2, z10);
    }

    public static final boolean r(String str, String str2, boolean z10) {
        if (str == null) {
            return str2 == null;
        }
        if (!z10) {
            return str.equals(str2);
        }
        return str.equalsIgnoreCase(str2);
    }

    public static final boolean s(CharSequence charSequence) {
        boolean z10;
        jc.l.f(charSequence, "<this>");
        if (charSequence.length() != 0) {
            Iterable G = u.G(charSequence);
            if (!(G instanceof Collection) || !((Collection) G).isEmpty()) {
                Iterator it2 = G.iterator();
                while (it2.hasNext()) {
                    if (!a.c(charSequence.charAt(((z) it2).a()))) {
                        z10 = false;
                        break;
                    }
                }
            }
            z10 = true;
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    public static final boolean t(String str, int i10, String str2, int i11, int i12, boolean z10) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "other");
        if (!z10) {
            return str.regionMatches(i10, str2, i11, i12);
        }
        return str.regionMatches(z10, i10, str2, i11, i12);
    }

    public static final String u(String str, String str2, String str3, boolean z10) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "oldValue");
        jc.l.f(str3, "newValue");
        int i10 = 0;
        int J = u.J(str, str2, 0, z10);
        if (J < 0) {
            return str;
        }
        int length = str2.length();
        int a10 = nc.g.a(length, 1);
        int length2 = (str.length() - length) + str3.length();
        if (length2 >= 0) {
            StringBuilder sb2 = new StringBuilder(length2);
            do {
                sb2.append((CharSequence) str, i10, J);
                sb2.append(str3);
                i10 = J + length;
                if (J >= str.length()) {
                    break;
                }
                J = u.J(str, str2, J + a10, z10);
            } while (J > 0);
            sb2.append((CharSequence) str, i10, str.length());
            String sb3 = sb2.toString();
            jc.l.e(sb3, "stringBuilder.append(this, i, length).toString()");
            return sb3;
        }
        throw new OutOfMemoryError();
    }

    public static /* synthetic */ String v(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return u(str, str2, str3, z10);
    }

    public static final boolean w(String str, String str2, int i10, boolean z10) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "prefix");
        if (!z10) {
            return str.startsWith(str2, i10);
        }
        return t(str, i10, str2, 0, str2.length(), z10);
    }

    public static final boolean x(String str, String str2, boolean z10) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "prefix");
        if (!z10) {
            return str.startsWith(str2);
        }
        return t(str, 0, str2, 0, str2.length(), z10);
    }

    public static /* synthetic */ boolean y(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return w(str, str2, i10, z10);
    }

    public static /* synthetic */ boolean z(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return x(str, str2, z10);
    }
}
