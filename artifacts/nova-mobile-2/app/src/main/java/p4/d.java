package p4;

import java.util.List;

/* compiled from: AnimeCharactersStaff.kt */
/* loaded from: classes.dex */
public final class d {
    private final List<e> main;
    private final List<q> staff;
    private final List<e> supporting;

    public final List<e> a() {
        return this.main;
    }

    public final List<q> b() {
        return this.staff;
    }

    public final List<e> c() {
        return this.supporting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return jc.l.a(this.main, dVar.main) && jc.l.a(this.supporting, dVar.supporting) && jc.l.a(this.staff, dVar.staff);
    }

    public int hashCode() {
        List<e> list = this.main;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<e> list2 = this.supporting;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<q> list3 = this.staff;
        return hashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    public String toString() {
        return "AnimeCharactersStaff(main=" + this.main + ", supporting=" + this.supporting + ", staff=" + this.staff + ')';
    }
}
