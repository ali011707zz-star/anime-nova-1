package rc;

import ac.g;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes2.dex */
public final class g3 implements g.b, g.c<g3> {

    /* renamed from: f, reason: collision with root package name */
    public static final g3 f13266f = new g3();

    @Override // ac.g
    public <R> R fold(R r10, ic.p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r10, pVar);
    }

    @Override // ac.g.b, ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // ac.g.b
    public g.c<?> getKey() {
        return this;
    }

    @Override // ac.g
    public ac.g minusKey(g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // ac.g
    public ac.g plus(ac.g gVar) {
        return g.b.a.d(this, gVar);
    }
}
