package ac;

import ac.e;
import ic.p;
import jc.l;
import jc.m;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes.dex */
public interface g {

    /* compiled from: CoroutineContext.kt */
    /* loaded from: classes2.dex */
    public static final class a {

        /* compiled from: CoroutineContext.kt */
        /* renamed from: ac.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0015a extends m implements p<g, b, g> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0015a f542f = new C0015a();

            public C0015a() {
                super(2);
            }

            @Override // ic.p
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final g invoke(g gVar, b bVar) {
                ac.c cVar;
                l.f(gVar, "acc");
                l.f(bVar, "element");
                g minusKey = gVar.minusKey(bVar.getKey());
                h hVar = h.f543f;
                if (minusKey == hVar) {
                    return bVar;
                }
                e.b bVar2 = e.f540a;
                e eVar = (e) minusKey.get(bVar2);
                if (eVar == null) {
                    cVar = new ac.c(minusKey, bVar);
                } else {
                    g minusKey2 = minusKey.minusKey(bVar2);
                    if (minusKey2 == hVar) {
                        return new ac.c(bVar, eVar);
                    }
                    cVar = new ac.c(new ac.c(minusKey2, bVar), eVar);
                }
                return cVar;
            }
        }

        public static g a(g gVar, g gVar2) {
            l.f(gVar2, "context");
            return gVar2 == h.f543f ? gVar : (g) gVar2.fold(gVar, C0015a.f542f);
        }
    }

    /* compiled from: CoroutineContext.kt */
    /* loaded from: classes.dex */
    public interface b extends g {

        /* compiled from: CoroutineContext.kt */
        /* loaded from: classes2.dex */
        public static final class a {
            public static <R> R a(b bVar, R r10, p<? super R, ? super b, ? extends R> pVar) {
                l.f(pVar, "operation");
                return pVar.invoke(r10, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends b> E b(b bVar, c<E> cVar) {
                l.f(cVar, "key");
                if (!l.a(bVar.getKey(), cVar)) {
                    return null;
                }
                l.d(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static g c(b bVar, c<?> cVar) {
                l.f(cVar, "key");
                return l.a(bVar.getKey(), cVar) ? h.f543f : bVar;
            }

            public static g d(b bVar, g gVar) {
                l.f(gVar, "context");
                return a.a(bVar, gVar);
            }
        }

        @Override // ac.g
        <E extends b> E get(c<E> cVar);

        c<?> getKey();
    }

    /* compiled from: CoroutineContext.kt */
    /* loaded from: classes2.dex */
    public interface c<E extends b> {
    }

    <R> R fold(R r10, p<? super R, ? super b, ? extends R> pVar);

    <E extends b> E get(c<E> cVar);

    g minusKey(c<?> cVar);

    g plus(g gVar);
}
