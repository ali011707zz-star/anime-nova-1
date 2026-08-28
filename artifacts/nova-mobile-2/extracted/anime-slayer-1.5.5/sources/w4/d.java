package w4;

import java.util.List;
import jc.l;
import p4.p;

/* compiled from: PeopleList.kt */
/* loaded from: classes.dex */
public final class d {
    private final List<p> animes;
    private final int titleRes;

    public d(int i10, List<p> list) {
        l.f(list, "animes");
        this.titleRes = i10;
        this.animes = list;
    }

    public final List<p> a() {
        return this.animes;
    }

    public final int b() {
        return this.titleRes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.titleRes == dVar.titleRes && l.a(this.animes, dVar.animes);
    }

    public int hashCode() {
        return (this.titleRes * 31) + this.animes.hashCode();
    }

    public String toString() {
        return "PeopleSection(titleRes=" + this.titleRes + ", animes=" + this.animes + ')';
    }
}
