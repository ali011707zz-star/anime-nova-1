package n4;

import java.util.List;
import jc.l;

/* compiled from: CharactersContainer.kt */
/* loaded from: classes.dex */
public final class b {

    @ka.c(alternate = {"characters"}, value = "data")
    private final List<p4.e> data;

    public final List<p4.e> a() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && l.a(this.data, ((b) obj).data);
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "CharactersMoreDataContainer(data=" + this.data + ')';
    }
}
