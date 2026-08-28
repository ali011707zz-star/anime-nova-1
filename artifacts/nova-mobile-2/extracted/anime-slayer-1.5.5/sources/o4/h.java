package o4;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import wb.l;

/* compiled from: Year.kt */
/* loaded from: classes.dex */
public final class h {
    public static final a Companion = new a(null);

    /* renamed from: id, reason: collision with root package name */
    @ka.c(AppMeasurementSdk.ConditionalUserProperty.VALUE)
    private final String f11742id;

    @ka.c("option")
    private final String name;

    /* compiled from: Year.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final List<h> a() {
            return l.m(new h("2021", "2021"), new h("2020", "2020"), new h("2019", "2019"), new h("2018", "2018"), new h("2017", "2017"), new h("2016", "2016"), new h("2015", "2015"), new h("2014", "2014"), new h("2013", "2013"), new h("2012", "2012"), new h("2011", "2011"), new h("2010", "2010"), new h("2009", "2009"), new h("2008", "2008"), new h("2007", "2007"), new h("2006", "2006"), new h("2005", "2005"), new h("2004", "2004"), new h("2003", "2003"), new h("2002", "2002"), new h("2001", "2001"), new h("2000", "2000"), new h("1999", "1999"), new h("1998", "1998"), new h("1997", "1997"), new h("1996", "1996"), new h("1995", "1995"), new h("1994", "1994"), new h("1993", "1993"), new h("1992", "1992"), new h("1991", "1991"), new h("1990", "1990"), new h("1989", "1989"), new h("1988", "1988"), new h("1987", "1987"), new h("1986", "1986"), new h("1985", "1985"), new h("1984", "1984"), new h("1983", "1983"), new h("1982", "1982"), new h("1981", "1981"), new h("1980", "1980"), new h("1979", "1979"), new h("1978", "1978"), new h("1977", "1977"), new h("1976", "1976"), new h("1975", "1975"), new h("1974", "1974"), new h("1972", "1972"), new h("1971", "1971"), new h("1970", "1970"), new h("1969", "1969"), new h("1968", "1968"), new h("1966", "1966"), new h("1964", "1964"));
        }
    }

    public h(String str, String str2) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        jc.l.f(str2, "id");
        this.name = str;
        this.f11742id = str2;
    }

    public final String a() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return jc.l.a(this.name, hVar.name) && jc.l.a(this.f11742id, hVar.f11742id);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.f11742id.hashCode();
    }

    public String toString() {
        return "Year(name=\"" + this.name + "\", id=\"" + this.f11742id + "\")";
    }
}
