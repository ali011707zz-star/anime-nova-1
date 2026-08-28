package e7;

import java.util.List;
import jc.l;
import qc.t;

/* compiled from: ListExtensions.kt */
/* loaded from: classes.dex */
public final class c {
    public static final String a(List<String> list) {
        l.f(list, "<this>");
        String str = "";
        for (String str2 : list) {
            if (!(str.length() == 0)) {
                str2 = l.m(",", str2);
            }
            str = l.m(str, str2);
        }
        if (t.s(str)) {
            return null;
        }
        return str;
    }
}
