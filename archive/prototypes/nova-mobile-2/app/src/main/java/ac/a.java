package ac;

import ac.g;
import ic.p;
import jc.l;

/* compiled from: CoroutineContextImpl.kt */
/* loaded from: classes2.dex */
public abstract class a implements g.b {
    private final g.c<?> key;

    public a(g.c<?> cVar) {
        l.f(cVar, "key");
        this.key = cVar;
    }

    @Override // ac.g
    public <R> R fold(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r10, pVar);
    }

    @Override // ac.g.b, ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // ac.g.b
    public g.c<?> getKey() {
        return this.key;
    }

    @Override // ac.g
    public g minusKey(g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // ac.g
    public g plus(g gVar) {
        return g.b.a.d(this, gVar);
    }
}
