package org.ocpsoft.prettytime.i18n;

import id.e;
import java.util.ListResourceBundle;
import java.util.ResourceBundle;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import jd.a;
import kd.d;
import ld.b;

/* loaded from: classes2.dex */
public class Resources_fi extends ListResourceBundle implements d {

    /* renamed from: b, reason: collision with root package name */
    public static Object[][] f11894b = {new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowPastSingularName", "hetki"}, new Object[]{"JustNowFutureSingularName", "hetken"}, new Object[]{"JustNowPastSuffix", "sitten"}, new Object[]{"JustNowFutureSuffix", "päästä"}, new Object[]{"MillisecondPattern", "%u"}, new Object[]{"MillisecondPluralPattern", "%n %u"}, new Object[]{"MillisecondPastSingularName", "millisekunti"}, new Object[]{"MillisecondPastPluralName", "millisekuntia"}, new Object[]{"MillisecondFutureSingularName", "millisekunnin"}, new Object[]{"MillisecondPastSuffix", "sitten"}, new Object[]{"MillisecondFutureSuffix", "päästä"}, new Object[]{"SecondPattern", "%u"}, new Object[]{"SecondPluralPattern", "%n %u"}, new Object[]{"SecondPastSingularName", "sekunti"}, new Object[]{"SecondPastPluralName", "sekuntia"}, new Object[]{"SecondFutureSingularName", "sekunnin"}, new Object[]{"SecondPastSuffix", "sitten"}, new Object[]{"SecondFutureSuffix", "päästä"}, new Object[]{"MinutePattern", "%u"}, new Object[]{"MinutePluralPattern", "%n %u"}, new Object[]{"MinutePastSingularName", "minuutti"}, new Object[]{"MinutePastPluralName", "minuuttia"}, new Object[]{"MinuteFutureSingularName", "minuutin"}, new Object[]{"MinutePastSuffix", "sitten"}, new Object[]{"MinuteFutureSuffix", "päästä"}, new Object[]{"HourPattern", "%u"}, new Object[]{"HourPluralPattern", "%n %u"}, new Object[]{"HourPastSingularName", "tunti"}, new Object[]{"HourPastPluralName", "tuntia"}, new Object[]{"HourFutureSingularName", "tunnin"}, new Object[]{"HourPastSuffix", "sitten"}, new Object[]{"HourFutureSuffix", "päästä"}, new Object[]{"DayPattern", "%u"}, new Object[]{"DayPluralPattern", "%n %u"}, new Object[]{"DayPastSingularName", "eilen"}, new Object[]{"DayPastPluralName", "päivää"}, new Object[]{"DayFutureSingularName", "huomenna"}, new Object[]{"DayFuturePluralName", "päivän"}, new Object[]{"DayPastSuffix", "sitten"}, new Object[]{"DayFutureSuffix", "päästä"}, new Object[]{"WeekPattern", "%u"}, new Object[]{"WeekPluralPattern", "%n %u"}, new Object[]{"WeekPastSingularName", "viikko"}, new Object[]{"WeekPastPluralName", "viikkoa"}, new Object[]{"WeekFutureSingularName", "viikon"}, new Object[]{"WeekFuturePluralName", "viikon"}, new Object[]{"WeekPastSuffix", "sitten"}, new Object[]{"WeekFutureSuffix", "päästä"}, new Object[]{"MonthPattern", "%u"}, new Object[]{"MonthPluralPattern", "%n %u"}, new Object[]{"MonthPastSingularName", "kuukausi"}, new Object[]{"MonthPastPluralName", "kuukautta"}, new Object[]{"MonthFutureSingularName", "kuukauden"}, new Object[]{"MonthPastSuffix", "sitten"}, new Object[]{"MonthFutureSuffix", "päästä"}, new Object[]{"YearPattern", "%u"}, new Object[]{"YearPluralPattern", "%n %u"}, new Object[]{"YearPastSingularName", "vuosi"}, new Object[]{"YearPastPluralName", "vuotta"}, new Object[]{"YearFutureSingularName", "vuoden"}, new Object[]{"YearPastSuffix", "sitten"}, new Object[]{"YearFutureSuffix", "päästä"}, new Object[]{"DecadePattern", "%u"}, new Object[]{"DecadePluralPattern", "%n %u"}, new Object[]{"DecadePastSingularName", "vuosikymmen"}, new Object[]{"DecadePastPluralName", "vuosikymmentä"}, new Object[]{"DecadeFutureSingularName", "vuosikymmenen"}, new Object[]{"DecadePastSuffix", "sitten"}, new Object[]{"DecadeFutureSuffix", "päästä"}, new Object[]{"CenturyPattern", "%u"}, new Object[]{"CenturyPluralPattern", "%n %u"}, new Object[]{"CenturyPastSingularName", "vuosisata"}, new Object[]{"CenturyPastPluralName", "vuosisataa"}, new Object[]{"CenturyFutureSingularName", "vuosisadan"}, new Object[]{"CenturyPastSuffix", "sitten"}, new Object[]{"CenturyFutureSuffix", "päästä"}, new Object[]{"MillenniumPattern", "%u"}, new Object[]{"MillenniumPluralPattern", "%n %u"}, new Object[]{"MillenniumPastSingularName", "vuosituhat"}, new Object[]{"MillenniumPastPluralName", "vuosituhatta"}, new Object[]{"MillenniumFutureSingularName", "vuosituhannen"}, new Object[]{"MillenniumPastSuffix", "sitten"}, new Object[]{"MillenniumFutureSuffix", "päästä"}};

    /* renamed from: a, reason: collision with root package name */
    public volatile ConcurrentMap<e, id.d> f11895a = new ConcurrentHashMap();

    /* loaded from: classes2.dex */
    public static class FiTimeFormat extends a {

        /* renamed from: m, reason: collision with root package name */
        public final ResourceBundle f11896m;

        /* renamed from: n, reason: collision with root package name */
        public String f11897n = "";

        /* renamed from: o, reason: collision with root package name */
        public String f11898o = "";

        /* renamed from: p, reason: collision with root package name */
        public String f11899p = "";

        /* renamed from: q, reason: collision with root package name */
        public String f11900q = "";

        /* renamed from: r, reason: collision with root package name */
        public String f11901r = "";

        public FiTimeFormat(ResourceBundle resourceBundle, e eVar) {
            this.f11896m = resourceBundle;
            if (resourceBundle.containsKey(B(eVar) + "PastSingularName")) {
                E(resourceBundle.getString(B(eVar) + "PastSingularName")).C(resourceBundle.getString(B(eVar) + "FutureSingularName")).F(resourceBundle.getString(B(eVar) + "PastSingularName")).D(resourceBundle.getString(B(eVar) + "FutureSingularName")).G(resourceBundle.getString(B(eVar) + "Pattern"));
                if (resourceBundle.containsKey(B(eVar) + "PastPluralName")) {
                    F(resourceBundle.getString(B(eVar) + "PastPluralName"));
                }
                if (resourceBundle.containsKey(B(eVar) + "FuturePluralName")) {
                    D(resourceBundle.getString(B(eVar) + "FuturePluralName"));
                }
                if (resourceBundle.containsKey(B(eVar) + "PluralPattern")) {
                    G(resourceBundle.getString(B(eVar) + "PluralPattern"));
                }
                t(resourceBundle.getString(B(eVar) + "Pattern")).s(resourceBundle.getString(B(eVar) + "PastSuffix")).o(resourceBundle.getString(B(eVar) + "FutureSuffix")).m("").q("").v("").u("");
            }
        }

        public String A() {
            return this.f11901r;
        }

        public final String B(e eVar) {
            return eVar.getClass().getSimpleName();
        }

        public FiTimeFormat C(String str) {
            this.f11898o = str;
            return this;
        }

        public FiTimeFormat D(String str) {
            this.f11900q = str;
            return this;
        }

        public FiTimeFormat E(String str) {
            this.f11897n = str;
            return this;
        }

        public FiTimeFormat F(String str) {
            this.f11899p = str;
            return this;
        }

        public FiTimeFormat G(String str) {
            this.f11901r = str;
            return this;
        }

        @Override // jd.a, id.d
        public String b(id.a aVar, String str) {
            return ((aVar.b() instanceof b) && Math.abs(aVar.c(50)) == 1) ? str : super.b(aVar, str);
        }

        @Override // jd.a
        public String e(id.a aVar, boolean z10) {
            String y10 = aVar.d() ? y() : w();
            if (Math.abs(i(aVar, z10)) == 0 || Math.abs(i(aVar, z10)) > 1) {
                return aVar.d() ? z() : x();
            }
            return y10;
        }

        @Override // jd.a
        public String g(long j10) {
            if (Math.abs(j10) == 1) {
                return f();
            }
            return A();
        }

        public String w() {
            return this.f11898o;
        }

        public String x() {
            return this.f11900q;
        }

        public String y() {
            return this.f11897n;
        }

        public String z() {
            return this.f11899p;
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (!this.f11895a.containsKey(eVar)) {
            this.f11895a.putIfAbsent(eVar, new FiTimeFormat(this, eVar));
        }
        return this.f11895a.get(eVar);
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11894b;
    }
}
