package r4;

/* compiled from: Meta.kt */
/* loaded from: classes.dex */
public final class g {
    private final int _limit;
    private final int _offset;
    private final String _order_by;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this._limit == gVar._limit && this._offset == gVar._offset && jc.l.a(this._order_by, gVar._order_by);
    }

    public int hashCode() {
        return (((this._limit * 31) + this._offset) * 31) + this._order_by.hashCode();
    }

    public String toString() {
        return "Meta(_limit=" + this._limit + ", _offset=" + this._offset + ", _order_by=" + this._order_by + ')';
    }
}
