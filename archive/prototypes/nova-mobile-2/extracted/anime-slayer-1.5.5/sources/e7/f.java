package e7;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import jc.l;
import qc.i;
import qc.t;
import qc.u;

/* compiled from: TimeUtil.kt */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f6196a = new f();

    public final boolean a(String str) {
        Integer valueOf = Integer.valueOf(new i("[^0-9]").c(str, ""));
        return valueOf != null && valueOf.intValue() == 1;
    }

    public final boolean b(String str) {
        l.f(str, GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);
        Integer valueOf = Integer.valueOf(new i("[^0-9]").c(str, ""));
        l.e(valueOf, GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION);
        int intValue = valueOf.intValue();
        return 3 <= intValue && intValue < 11;
    }

    public final boolean c(String str) {
        Integer valueOf = Integer.valueOf(new i("[^0-9]").c(str, ""));
        return valueOf != null && valueOf.intValue() == 2;
    }

    public final String d(String str, int i10) {
        l.f(str, "input");
        if (str.length() <= i10 || str.length() < 3) {
            return str;
        }
        String substring = str.substring(0, i10 - 3);
        l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return l.m(substring, "...");
    }

    public final String e(String str) {
        Date date;
        String v10;
        id.c cVar = new id.c(new Locale("AR"));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Karachi"));
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException e10) {
            e10.printStackTrace();
            date = null;
        }
        String e11 = cVar.e(date);
        l.e(e11, "p.format(value)");
        if (u.C(e11, "مضت", false, 2, null)) {
            String e12 = cVar.e(date);
            l.e(e12, "p.format(value)");
            v10 = l.m("قبل ", t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(e12, "مضت", "", false, 4, null), "ساعات", "ساعة", false, 4, null), "أيام", "يوم", false, 4, null), "ايام", "يوم", false, 4, null), "دقائق", "دقيقة", false, 4, null), "أشهر", "شهر", false, 4, null), "اشهر", "شهر", false, 4, null), "أسابيع", "أسبوع", false, 4, null), "اسابيع", "أسبوع", false, 4, null), "سنوات", "سنة", false, 4, null));
        } else {
            String e13 = cVar.e(date);
            l.e(e13, "p.format(value)");
            v10 = t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(t.v(e13, "مضت", "", false, 4, null), "ساعات", "ساعة", false, 4, null), "أيام", "يوم", false, 4, null), "ايام", "يوم", false, 4, null), "دقائق", "دقيقة", false, 4, null), "أشهر", "شهر", false, 4, null), "اشهر", "شهر", false, 4, null), "أسابيع", "أسبوع", false, 4, null), "اسابيع", "أسبوع", false, 4, null), "سنوات", "سنة", false, 4, null);
        }
        return h(g(k(i(f(j(v10))))));
    }

    public final String f(String str) {
        if (!u.C(str, "يوم", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "يوم", "أيام", false, 4, null);
        }
        return c(str) ? "قبل يومين" : a(str) ? "قبل يوم" : str;
    }

    public final String g(String str) {
        if (!u.C(str, "ساعة", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "ساعة", "ساعات", false, 4, null);
        }
        return c(str) ? "قبل ساعتين" : a(str) ? "قبل ساعة" : str;
    }

    public final String h(String str) {
        if (!u.C(str, "دقيقة", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "دقيقة", "دقائق", false, 4, null);
        }
        return c(str) ? "قبل دقيقتين" : a(str) ? "قبل دقيقة" : str;
    }

    public final String i(String str) {
        if (!u.C(str, "شهر", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "شهر", "أشهر", false, 4, null);
        }
        return c(str) ? "قبل شهرين" : a(str) ? "قبل شهر" : str;
    }

    public final String j(String str) {
        if (!u.C(str, "أسبوع", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "أسبوع", "أسابيع", false, 4, null);
        }
        return c(str) ? "قبل اسبوعين" : a(str) ? "قبل أسبوع" : str;
    }

    public final String k(String str) {
        if (!u.C(str, "سنة", false, 2, null)) {
            return str;
        }
        if (b(str)) {
            return t.v(str, "سنة", "سنوات", false, 4, null);
        }
        return c(str) ? "قبل سنتين" : a(str) ? "قبل سنة" : str;
    }
}
