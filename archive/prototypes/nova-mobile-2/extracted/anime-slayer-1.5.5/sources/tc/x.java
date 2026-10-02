package tc;

/* compiled from: Channel.kt */
/* loaded from: classes2.dex */
public interface x<E> {

    /* compiled from: Channel.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ boolean a(x xVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return xVar.g(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <E> boolean b(x<? super E> xVar, E e10) {
            Object m10 = xVar.m(e10);
            if (j.i(m10)) {
                return true;
            }
            Throwable e11 = j.e(m10);
            if (e11 == null) {
                return false;
            }
            throw wc.z.k(e11);
        }
    }

    void e(ic.l<? super Throwable, vb.p> lVar);

    boolean f(E e10);

    boolean g(Throwable th);

    Object m(E e10);

    boolean o();

    Object p(E e10, ac.d<? super vb.p> dVar);
}
