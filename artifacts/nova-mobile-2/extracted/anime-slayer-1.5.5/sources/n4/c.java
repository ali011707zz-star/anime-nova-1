package n4;

import jc.g;
import jc.l;

/* compiled from: Container.kt */
/* loaded from: classes.dex */
public final class c<T> {
    private final T response;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public c() {
        this(r0, 1, r0);
        g gVar = null;
    }

    public c(T t10) {
        this.response = t10;
    }

    public final T a() {
        return this.response;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && l.a(this.response, ((c) obj).response);
    }

    public int hashCode() {
        T t10 = this.response;
        if (t10 == null) {
            return 0;
        }
        return t10.hashCode();
    }

    public String toString() {
        return "Container(response=" + this.response + ')';
    }

    public /* synthetic */ c(Object obj, int i10, g gVar) {
        this((i10 & 1) != 0 ? null : obj);
    }
}
