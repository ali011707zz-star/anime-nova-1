package e7;

import jc.l;
import qc.w;

/* compiled from: StringExtensions.kt */
/* loaded from: classes.dex */
public final class e {
    public static final boolean a(String str) {
        return l.a(str, "Yes");
    }

    public static final String b(String str) {
        return l.a(str, "Yes") ? "No" : l.a(str, "No") ? "Yes" : str;
    }

    public static final String c(String str, int i10, String str2) {
        l.f(str, "<this>");
        l.f(str2, "replacement");
        if (str.length() <= i10) {
            return str;
        }
        double length = i10 - str2.length();
        Double.isNaN(length);
        int floor = (int) Math.floor(length / 2.0d);
        return w.w0(str, floor) + str2 + w.x0(str, floor);
    }

    public static /* synthetic */ String d(String str, int i10, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "...";
        }
        return c(str, i10, str2);
    }
}
