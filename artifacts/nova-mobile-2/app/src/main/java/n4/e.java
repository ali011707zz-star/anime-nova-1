package n4;

import java.util.List;
import jc.l;
import p4.q;

/* compiled from: CharactersContainer.kt */
/* loaded from: classes.dex */
public final class e {
    private final List<q> data;

    public final List<q> a() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && l.a(this.data, ((e) obj).data);
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "StaffMoreDataContainer(data=" + this.data + ')';
    }
}
