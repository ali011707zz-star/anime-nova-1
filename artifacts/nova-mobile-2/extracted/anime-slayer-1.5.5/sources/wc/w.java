package wc;

import rc.v0;

/* compiled from: Atomic.kt */
/* loaded from: classes2.dex */
public abstract class w {
    public abstract d<?> a();

    public final boolean b(w wVar) {
        d<?> a10;
        d<?> a11 = a();
        return (a11 == null || (a10 = wVar.a()) == null || a11.g() >= a10.g()) ? false : true;
    }

    public abstract Object c(Object obj);

    public String toString() {
        return v0.a(this) + '@' + v0.b(this);
    }
}
