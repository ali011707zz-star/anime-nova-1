package ac;

import ac.g;
import ic.p;
import java.io.Serializable;
import jc.l;

/* compiled from: CoroutineContextImpl.kt */
/* loaded from: classes2.dex */
public final class h implements g, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public static final h f543f = new h();

    @Override // ac.g
    public <R> R fold(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        l.f(pVar, "operation");
        return r10;
    }

    @Override // ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        l.f(cVar, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // ac.g
    public g minusKey(g.c<?> cVar) {
        l.f(cVar, "key");
        return this;
    }

    @Override // ac.g
    public g plus(g gVar) {
        l.f(gVar, "context");
        return gVar;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
