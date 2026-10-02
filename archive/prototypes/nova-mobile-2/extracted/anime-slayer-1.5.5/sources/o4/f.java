package o4;

import jc.l;

/* compiled from: SeasonInfo.kt */
/* loaded from: classes.dex */
public final class f {
    private final e current;
    private final e next;
    private final e previous;

    public final e a() {
        return this.current;
    }

    public final e b() {
        return this.next;
    }

    public final e c() {
        return this.previous;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return l.a(this.current, fVar.current) && l.a(this.next, fVar.next) && l.a(this.previous, fVar.previous);
    }

    public int hashCode() {
        return (((this.current.hashCode() * 31) + this.next.hashCode()) * 31) + this.previous.hashCode();
    }

    public String toString() {
        return "SeasonInfo(current=" + this.current + ", next=" + this.next + ", previous=" + this.previous + ')';
    }
}
