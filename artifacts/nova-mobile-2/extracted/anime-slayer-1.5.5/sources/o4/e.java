package o4;

import jc.l;

/* compiled from: SeasonInfo.kt */
/* loaded from: classes.dex */
public final class e {
    private final String season;
    private final int year;

    public final String a() {
        return this.season;
    }

    public final int b() {
        return this.year;
    }

    public final String c() {
        String str;
        String str2 = this.season;
        int hashCode = str2.hashCode();
        if (hashCode == -1811812819) {
            if (str2.equals("Spring")) {
                str = "ربيع";
            }
            str = "خريف";
        } else if (hashCode != -1807340593) {
            if (hashCode == -1703869723 && str2.equals("Winter")) {
                str = "شتاء";
            }
            str = "خريف";
        } else {
            if (str2.equals("Summer")) {
                str = "صيف";
            }
            str = "خريف";
        }
        return str + ' ' + this.year;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return l.a(this.season, eVar.season) && this.year == eVar.year;
    }

    public int hashCode() {
        return (this.season.hashCode() * 31) + this.year;
    }

    public String toString() {
        return "SSeason(season=" + this.season + ", year=" + this.year + ')';
    }
}
