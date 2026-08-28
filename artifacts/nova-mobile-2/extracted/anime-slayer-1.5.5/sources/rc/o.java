package rc;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
public interface o<T> extends ac.d<T> {

    /* compiled from: CancellableContinuation.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ Object a(o oVar, Object obj, Object obj2, int i10, Object obj3) {
            if (obj3 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
            }
            if ((i10 & 2) != 0) {
                obj2 = null;
            }
            return oVar.c(obj, obj2);
        }
    }

    void A(T t10, ic.l<? super Throwable, vb.p> lVar);

    void B(Object obj);

    boolean b();

    Object c(T t10, Object obj);

    boolean isCancelled();

    void l(l0 l0Var, T t10);

    void n(ic.l<? super Throwable, vb.p> lVar);

    Object r(T t10, Object obj, ic.l<? super Throwable, vb.p> lVar);

    Object y(Throwable th);
}
