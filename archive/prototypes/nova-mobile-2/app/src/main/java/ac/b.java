package ac;

import ac.g;
import ac.g.b;
import ic.l;

/* compiled from: CoroutineContextImpl.kt */
/* loaded from: classes2.dex */
public abstract class b<B extends g.b, E extends B> implements g.c<E> {

    /* renamed from: f, reason: collision with root package name */
    public final l<g.b, E> f535f;

    /* renamed from: g, reason: collision with root package name */
    public final g.c<?> f536g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ac.g$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [ic.l<ac.g$b, E extends B>, java.lang.Object, ic.l<? super ac.g$b, ? extends E extends B>] */
    public b(g.c<B> cVar, l<? super g.b, ? extends E> lVar) {
        jc.l.f(cVar, "baseKey");
        jc.l.f(lVar, "safeCast");
        this.f535f = lVar;
        this.f536g = cVar instanceof b ? (g.c<B>) ((b) cVar).f536g : cVar;
    }

    public final boolean a(g.c<?> cVar) {
        jc.l.f(cVar, "key");
        return cVar == this || this.f536g == cVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lac/g$b;)TE; */
    public final g.b b(g.b bVar) {
        jc.l.f(bVar, "element");
        return (g.b) this.f535f.invoke(bVar);
    }
}
