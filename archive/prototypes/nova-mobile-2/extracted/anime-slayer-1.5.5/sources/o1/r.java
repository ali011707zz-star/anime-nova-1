package o1;

/* compiled from: EntityDeletionOrUpdateAdapter.java */
/* loaded from: classes.dex */
public abstract class r<T> extends v0 {
    public r(p0 p0Var) {
        super(p0Var);
    }

    public abstract void g(r1.k kVar, T t10);

    public final int h(T t10) {
        r1.k a10 = a();
        try {
            g(a10, t10);
            return a10.A();
        } finally {
            f(a10);
        }
    }
}
