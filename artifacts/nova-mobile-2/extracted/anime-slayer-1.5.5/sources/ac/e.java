package ac;

import ac.g;
import jc.l;

/* compiled from: ContinuationInterceptor.kt */
/* loaded from: classes2.dex */
public interface e extends g.b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f540a = b.f541f;

    /* compiled from: ContinuationInterceptor.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public static <E extends g.b> E a(e eVar, g.c<E> cVar) {
            l.f(cVar, "key");
            if (cVar instanceof ac.b) {
                ac.b bVar = (ac.b) cVar;
                if (!bVar.a(eVar.getKey())) {
                    return null;
                }
                E e10 = (E) bVar.b(eVar);
                if (e10 instanceof g.b) {
                    return e10;
                }
                return null;
            }
            if (e.f540a != cVar) {
                return null;
            }
            l.d(eVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
            return eVar;
        }

        public static g b(e eVar, g.c<?> cVar) {
            l.f(cVar, "key");
            if (!(cVar instanceof ac.b)) {
                return e.f540a == cVar ? h.f543f : eVar;
            }
            ac.b bVar = (ac.b) cVar;
            return (!bVar.a(eVar.getKey()) || bVar.b(eVar) == null) ? eVar : h.f543f;
        }
    }

    /* compiled from: ContinuationInterceptor.kt */
    /* loaded from: classes2.dex */
    public static final class b implements g.c<e> {

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ b f541f = new b();
    }

    void F(d<?> dVar);

    <T> d<T> c0(d<? super T> dVar);
}
