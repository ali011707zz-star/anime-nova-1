package org.ocpsoft.prettytime.i18n;

import androidx.recyclerview.widget.RecyclerView;
import id.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListResourceBundle;
import java.util.ResourceBundle;
import jd.a;
import kd.d;
import ld.b;
import ld.f;
import ld.h;
import ld.i;
import ld.l;
import ld.m;

/* loaded from: classes2.dex */
public class Resources_hr extends ListResourceBundle implements d {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[][] f11906a = {new Object[]{"CenturyPattern", "%n %u"}, new Object[]{"CenturyFuturePrefix", "za "}, new Object[]{"CenturyFutureSuffix", ""}, new Object[]{"CenturyPastPrefix", ""}, new Object[]{"CenturyPastSuffix", " unatrag"}, new Object[]{"CenturySingularName", "stoljeće"}, new Object[]{"CenturyPluralName", "stoljeća"}, new Object[]{"DayPattern", "%n %u"}, new Object[]{"DayFuturePrefix", "za "}, new Object[]{"DayFutureSuffix", ""}, new Object[]{"DayPastPrefix", "prije "}, new Object[]{"DayPastSuffix", ""}, new Object[]{"DaySingularName", "dan"}, new Object[]{"DayPluralName", "dana"}, new Object[]{"DecadePattern", "%n %u"}, new Object[]{"DecadeFuturePrefix", "za "}, new Object[]{"DecadeFutureSuffix", ""}, new Object[]{"DecadePastPrefix", "prije "}, new Object[]{"DecadePastSuffix", ""}, new Object[]{"DecadeSingularName", "desetljeće"}, new Object[]{"DecadePluralName", "desetljeća"}, new Object[]{"HourPattern", "%n %u"}, new Object[]{"HourFuturePrefix", "za "}, new Object[]{"HourFutureSuffix", ""}, new Object[]{"HourPastPrefix", "prije "}, new Object[]{"HourPastSuffix", ""}, new Object[]{"HourSingularName", "sat"}, new Object[]{"HourPluralName", "sati"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", "za nekoliko trenutaka"}, new Object[]{"JustNowFutureSuffix", ""}, new Object[]{"JustNowPastPrefix", "prije nekoliko trenutaka"}, new Object[]{"JustNowPastSuffix", ""}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n %u"}, new Object[]{"MillenniumFuturePrefix", "za "}, new Object[]{"MillenniumFutureSuffix", ""}, new Object[]{"MillenniumPastPrefix", "prije "}, new Object[]{"MillenniumPastSuffix", ""}, new Object[]{"MillenniumSingularName", "tisućljeće"}, new Object[]{"MillenniumPluralName", "tisućljeća"}, new Object[]{"MillisecondPattern", "%n %u"}, new Object[]{"MillisecondFuturePrefix", "za "}, new Object[]{"MillisecondFutureSuffix", ""}, new Object[]{"MillisecondPastPrefix", "prije "}, new Object[]{"MillisecondPastSuffix", ""}, new Object[]{"MillisecondSingularName", "milisekunda"}, new Object[]{"MillisecondPluralName", "milisekunda"}, new Object[]{"MinutePattern", "%n %u"}, new Object[]{"MinuteFuturePrefix", "za "}, new Object[]{"MinuteFutureSuffix", ""}, new Object[]{"MinutePastPrefix", "prije "}, new Object[]{"MinutePastSuffix", ""}, new Object[]{"MinuteSingularName", "minuta"}, new Object[]{"MinutePluralName", "minuta"}, new Object[]{"MonthPattern", "%n %u"}, new Object[]{"MonthFuturePrefix", "za "}, new Object[]{"MonthFutureSuffix", ""}, new Object[]{"MonthPastPrefix", "prije "}, new Object[]{"MonthPastSuffix", ""}, new Object[]{"MonthSingularName", "mjesec"}, new Object[]{"MonthPluralName", "mjeseca"}, new Object[]{"SecondPattern", "%n %u"}, new Object[]{"SecondFuturePrefix", "za "}, new Object[]{"SecondFutureSuffix", ""}, new Object[]{"SecondPastPrefix", "prije "}, new Object[]{"SecondPastSuffix", ""}, new Object[]{"SecondSingularName", "sekunda"}, new Object[]{"SecondPluralName", "sekundi"}, new Object[]{"WeekPattern", "%n %u"}, new Object[]{"WeekFuturePrefix", "za "}, new Object[]{"WeekFutureSuffix", ""}, new Object[]{"WeekPastPrefix", "prije "}, new Object[]{"WeekPastSuffix", ""}, new Object[]{"WeekSingularName", "tjedan"}, new Object[]{"WeekPluralName", "tjedna"}, new Object[]{"YearPattern", "%n %u"}, new Object[]{"YearFuturePrefix", "za "}, new Object[]{"YearFutureSuffix", ""}, new Object[]{"YearPastPrefix", "prije "}, new Object[]{"YearPastSuffix", ""}, new Object[]{"YearSingularName", "godina"}, new Object[]{"YearPluralName", "godina"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    /* loaded from: classes2.dex */
    public static class HrName implements Comparable<HrName> {

        /* renamed from: f, reason: collision with root package name */
        public final boolean f11907f;

        /* renamed from: g, reason: collision with root package name */
        public final Long f11908g;

        /* renamed from: h, reason: collision with root package name */
        public final String f11909h;

        public HrName(boolean z10, String str, Long l10) {
            this.f11907f = z10;
            this.f11909h = str;
            this.f11908g = l10;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(HrName hrName) {
            return this.f11908g.compareTo(Long.valueOf(hrName.c()));
        }

        public String b() {
            return this.f11909h;
        }

        public long c() {
            return this.f11908g.longValue();
        }

        public boolean d() {
            return this.f11907f;
        }
    }

    /* loaded from: classes2.dex */
    public static class HrTimeFormat extends a {

        /* renamed from: m, reason: collision with root package name */
        public final List<HrName> f11910m = new ArrayList();

        /* renamed from: n, reason: collision with root package name */
        public final List<HrName> f11911n = new ArrayList();

        public HrTimeFormat(String str, ResourceBundle resourceBundle, Collection<HrName> collection) {
            t(resourceBundle.getString(str + "Pattern"));
            m(resourceBundle.getString(str + "FuturePrefix"));
            o(resourceBundle.getString(str + "FutureSuffix"));
            q(resourceBundle.getString(str + "PastPrefix"));
            s(resourceBundle.getString(str + "PastSuffix"));
            v(resourceBundle.getString(str + "SingularName"));
            u(resourceBundle.getString(str + "PluralName"));
            try {
                l(resourceBundle.getString(str + "FuturePluralName"));
            } catch (Exception unused) {
            }
            try {
                n(resourceBundle.getString(str + "FutureSingularName"));
            } catch (Exception unused2) {
            }
            try {
                p(resourceBundle.getString(str + "PastPluralName"));
            } catch (Exception unused3) {
            }
            try {
                r(resourceBundle.getString(str + "PastSingularName"));
            } catch (Exception unused4) {
            }
            for (HrName hrName : collection) {
                if (hrName.d()) {
                    this.f11910m.add(hrName);
                } else {
                    this.f11911n.add(hrName);
                }
            }
            Collections.sort(this.f11910m);
            Collections.sort(this.f11911n);
        }

        @Override // jd.a
        public String e(id.a aVar, boolean z10) {
            long abs = Math.abs(i(aVar, z10));
            if (aVar.e()) {
                return w(abs, this.f11910m);
            }
            return w(abs, this.f11911n);
        }

        public final String w(long j10, List<HrName> list) {
            for (HrName hrName : list) {
                if (hrName.c() >= j10) {
                    return hrName.b();
                }
            }
            throw new IllegalStateException("Invalid resource bundle configuration");
        }
    }

    /* loaded from: classes2.dex */
    public static class HrTimeFormatBuilder {

        /* renamed from: a, reason: collision with root package name */
        public final List<HrName> f11912a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final String f11913b;

        public HrTimeFormatBuilder(String str) {
            this.f11913b = str;
        }

        public final HrTimeFormatBuilder a(boolean z10, String str, long j10) {
            if (str != null) {
                this.f11912a.add(new HrName(z10, str, Long.valueOf(j10)));
                return this;
            }
            throw new IllegalArgumentException();
        }

        public HrTimeFormatBuilder b(String str, long j10) {
            return a(true, str, j10).a(false, str, j10);
        }

        public HrTimeFormat c(ResourceBundle resourceBundle) {
            return new HrTimeFormat(this.f11913b, resourceBundle, this.f11912a);
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (eVar instanceof h) {
            return new HrTimeFormatBuilder("Minute").b("minutu", 1L).b("minute", 4L).b("minuta", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof ld.d) {
            return new HrTimeFormatBuilder("Hour").b("sat", 1L).b("sata", 4L).b("sati", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof b) {
            return new HrTimeFormatBuilder("Day").b("dan", 1L).b("dana", 4L).b("dana", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof l) {
            return new HrTimeFormatBuilder("Week").b("tjedan", 1L).b("tjedna", 4L).b("tjedana", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof i) {
            return new HrTimeFormatBuilder("Month").b("mjesec", 1L).b("mjeseca", 4L).b("mjeseci", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof m) {
            return new HrTimeFormatBuilder("Year").b("godinu", 1L).b("godine", 4L).b("godina", RecyclerView.FOREVER_NS).c(this);
        }
        if (eVar instanceof f) {
            return new HrTimeFormatBuilder("Millennium").b("tisućljeće", 1L).b("tisućljeća", RecyclerView.FOREVER_NS).c(this);
        }
        return null;
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11906a;
    }
}
