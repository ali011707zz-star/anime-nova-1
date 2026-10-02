package org.ocpsoft.prettytime.i18n;

import id.a;
import id.e;
import java.util.ListResourceBundle;
import java.util.ResourceBundle;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kd.d;
import ld.c;
import ld.f;

/* loaded from: classes2.dex */
public class Resources_ja extends ListResourceBundle implements d {

    /* renamed from: b, reason: collision with root package name */
    public static final Object[][] f11918b = {new Object[]{"CenturyPattern", "%n%u"}, new Object[]{"CenturyFuturePrefix", "今から"}, new Object[]{"CenturyFutureSuffix", "後"}, new Object[]{"CenturyPastPrefix", ""}, new Object[]{"CenturyPastSuffix", "前"}, new Object[]{"CenturySingularName", "世紀"}, new Object[]{"CenturyPluralName", "世紀"}, new Object[]{"DayPattern", "%n%u"}, new Object[]{"DayFuturePrefix", "今から"}, new Object[]{"DayFutureSuffix", "後"}, new Object[]{"DayPastPrefix", ""}, new Object[]{"DayPastSuffix", "前"}, new Object[]{"DaySingularName", "日"}, new Object[]{"DayPluralName", "日"}, new Object[]{"DecadePattern", "%n%u"}, new Object[]{"DecadeFuturePrefix", "今から"}, new Object[]{"DecadeFutureSuffix", "後"}, new Object[]{"DecadePastPrefix", ""}, new Object[]{"DecadePastSuffix", "前"}, new Object[]{"DecadeSingularName", "年"}, new Object[]{"DecadePluralName", "年"}, new Object[]{"HourPattern", "%n%u"}, new Object[]{"HourFuturePrefix", "今から"}, new Object[]{"HourFutureSuffix", "後"}, new Object[]{"HourPastPrefix", ""}, new Object[]{"HourPastSuffix", "前"}, new Object[]{"HourSingularName", "時間"}, new Object[]{"HourPluralName", "時間"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", "今から"}, new Object[]{"JustNowFutureSuffix", "すぐ"}, new Object[]{"JustNowPastPrefix", ""}, new Object[]{"JustNowPastSuffix", "たった今"}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n%u"}, new Object[]{"MillenniumFuturePrefix", "今から"}, new Object[]{"MillenniumFutureSuffix", "後"}, new Object[]{"MillenniumPastPrefix", ""}, new Object[]{"MillenniumPastSuffix", "前"}, new Object[]{"MillenniumSingularName", "年"}, new Object[]{"MillenniumPluralName", "年"}, new Object[]{"MillisecondPattern", "%n%u"}, new Object[]{"MillisecondFuturePrefix", "今から"}, new Object[]{"MillisecondFutureSuffix", "後"}, new Object[]{"MillisecondPastPrefix", ""}, new Object[]{"MillisecondPastSuffix", "前"}, new Object[]{"MillisecondSingularName", "ミリ秒"}, new Object[]{"MillisecondPluralName", "ミリ秒"}, new Object[]{"MinutePattern", "%n%u"}, new Object[]{"MinuteFuturePrefix", "今から"}, new Object[]{"MinuteFutureSuffix", "後"}, new Object[]{"MinutePastPrefix", ""}, new Object[]{"MinutePastSuffix", "前"}, new Object[]{"MinuteSingularName", "分"}, new Object[]{"MinutePluralName", "分"}, new Object[]{"MonthPattern", "%n%u"}, new Object[]{"MonthFuturePrefix", "今から"}, new Object[]{"MonthFutureSuffix", "後"}, new Object[]{"MonthPastPrefix", ""}, new Object[]{"MonthPastSuffix", "前"}, new Object[]{"MonthSingularName", "ヶ月"}, new Object[]{"MonthPluralName", "ヶ月"}, new Object[]{"SecondPattern", "%n%u"}, new Object[]{"SecondFuturePrefix", "今から"}, new Object[]{"SecondFutureSuffix", "後"}, new Object[]{"SecondPastPrefix", ""}, new Object[]{"SecondPastSuffix", "前"}, new Object[]{"SecondSingularName", "秒"}, new Object[]{"SecondPluralName", "秒"}, new Object[]{"WeekPattern", "%n%u"}, new Object[]{"WeekFuturePrefix", "今から"}, new Object[]{"WeekFutureSuffix", "後"}, new Object[]{"WeekPastPrefix", ""}, new Object[]{"WeekPastSuffix", "前"}, new Object[]{"WeekSingularName", "週間"}, new Object[]{"WeekPluralName", "週間"}, new Object[]{"YearPattern", "%n%u"}, new Object[]{"YearFuturePrefix", "今から"}, new Object[]{"YearFutureSuffix", "後"}, new Object[]{"YearPastPrefix", ""}, new Object[]{"YearPastSuffix", "前"}, new Object[]{"YearSingularName", "年"}, new Object[]{"YearPluralName", "年"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    /* renamed from: a, reason: collision with root package name */
    public volatile ConcurrentMap<e, id.d> f11919a = new ConcurrentHashMap();

    /* loaded from: classes2.dex */
    public static class JaTimeFormat implements id.d {

        /* renamed from: a, reason: collision with root package name */
        public final ResourceBundle f11920a;

        /* renamed from: b, reason: collision with root package name */
        public String f11921b = "";

        /* renamed from: c, reason: collision with root package name */
        public String f11922c = "";

        /* renamed from: d, reason: collision with root package name */
        public String f11923d = "";

        /* renamed from: e, reason: collision with root package name */
        public String f11924e = "";

        /* renamed from: f, reason: collision with root package name */
        public String f11925f = "";

        /* renamed from: g, reason: collision with root package name */
        public String f11926g = "";

        /* renamed from: h, reason: collision with root package name */
        public String f11927h = "";

        /* renamed from: i, reason: collision with root package name */
        public String f11928i = "";

        /* renamed from: j, reason: collision with root package name */
        public String f11929j = "";

        /* renamed from: k, reason: collision with root package name */
        public String f11930k = "";

        /* renamed from: l, reason: collision with root package name */
        public String f11931l = "";

        /* renamed from: m, reason: collision with root package name */
        public int f11932m = 50;

        public JaTimeFormat(ResourceBundle resourceBundle, e eVar) {
            this.f11920a = resourceBundle;
            t(resourceBundle.getString(k(eVar) + "Pattern"));
            m(resourceBundle.getString(k(eVar) + "FuturePrefix"));
            o(resourceBundle.getString(k(eVar) + "FutureSuffix"));
            q(resourceBundle.getString(k(eVar) + "PastPrefix"));
            s(resourceBundle.getString(k(eVar) + "PastSuffix"));
            v(resourceBundle.getString(k(eVar) + "SingularName"));
            u(resourceBundle.getString(k(eVar) + "PluralName"));
            try {
                l(resourceBundle.getString(k(eVar) + "FuturePluralName"));
            } catch (Exception unused) {
            }
            try {
                n(resourceBundle.getString(k(eVar) + "FutureSingularName"));
            } catch (Exception unused2) {
            }
            try {
                p(resourceBundle.getString(k(eVar) + "PastPluralName"));
            } catch (Exception unused3) {
            }
            try {
                r(resourceBundle.getString(k(eVar) + "PastSingularName"));
            } catch (Exception unused4) {
            }
        }

        @Override // id.d
        public String a(a aVar) {
            return d(aVar, true);
        }

        @Override // id.d
        public String b(a aVar, String str) {
            StringBuilder sb2 = new StringBuilder();
            if (aVar.d()) {
                sb2.append(this.f11930k);
                sb2.append(str);
                sb2.append(this.f11931l);
            } else {
                sb2.append(this.f11928i);
                sb2.append(str);
                sb2.append(this.f11929j);
            }
            return sb2.toString().replaceAll("\\s+", " ").trim();
        }

        public final String c(String str, String str2, long j10) {
            return f(j10).replaceAll("%s", str).replaceAll("%n", String.valueOf(j10)).replaceAll("%u", str2);
        }

        public final String d(a aVar, boolean z10) {
            String i10 = i(aVar);
            String e10 = e(aVar, z10);
            long h10 = h(aVar, z10);
            if (aVar.b() instanceof c) {
                h10 *= 10;
            }
            if (aVar.b() instanceof f) {
                h10 *= 1000;
            }
            return c(i10, e10, h10);
        }

        public String e(a aVar, boolean z10) {
            return (Math.abs(h(aVar, z10)) == 0 || Math.abs(h(aVar, z10)) > 1) ? g(aVar) : j(aVar);
        }

        public String f(long j10) {
            return this.f11927h;
        }

        public final String g(a aVar) {
            if (aVar.e() && this.f11924e != null && this.f11923d.length() > 0) {
                return this.f11924e;
            }
            if (aVar.d() && this.f11926g != null && this.f11925f.length() > 0) {
                return this.f11926g;
            }
            return this.f11922c;
        }

        public long h(a aVar, boolean z10) {
            return Math.abs(z10 ? aVar.c(this.f11932m) : aVar.a());
        }

        public final String i(a aVar) {
            return aVar.a() < 0 ? "-" : "";
        }

        public final String j(a aVar) {
            String str;
            String str2;
            if (aVar.e() && (str2 = this.f11923d) != null && str2.length() > 0) {
                return this.f11923d;
            }
            if (aVar.d() && (str = this.f11925f) != null && str.length() > 0) {
                return this.f11925f;
            }
            return this.f11921b;
        }

        public final String k(e eVar) {
            return eVar.getClass().getSimpleName();
        }

        public JaTimeFormat l(String str) {
            this.f11924e = str;
            return this;
        }

        public JaTimeFormat m(String str) {
            this.f11928i = str.trim();
            return this;
        }

        public JaTimeFormat n(String str) {
            this.f11923d = str;
            return this;
        }

        public JaTimeFormat o(String str) {
            this.f11929j = str.trim();
            return this;
        }

        public JaTimeFormat p(String str) {
            this.f11926g = str;
            return this;
        }

        public JaTimeFormat q(String str) {
            this.f11930k = str.trim();
            return this;
        }

        public JaTimeFormat r(String str) {
            this.f11925f = str;
            return this;
        }

        public JaTimeFormat s(String str) {
            this.f11931l = str.trim();
            return this;
        }

        public JaTimeFormat t(String str) {
            this.f11927h = str;
            return this;
        }

        public String toString() {
            return "JaTimeFormat [pattern=" + this.f11927h + ", futurePrefix=" + this.f11928i + ", futureSuffix=" + this.f11929j + ", pastPrefix=" + this.f11930k + ", pastSuffix=" + this.f11931l + ", roundingTolerance=" + this.f11932m + "]";
        }

        public JaTimeFormat u(String str) {
            this.f11922c = str;
            return this;
        }

        public JaTimeFormat v(String str) {
            this.f11921b = str;
            return this;
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (!this.f11919a.containsKey(eVar)) {
            this.f11919a.putIfAbsent(eVar, new JaTimeFormat(this, eVar));
        }
        return this.f11919a.get(eVar);
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11918b;
    }
}
