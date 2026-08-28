package ac;

import ac.g;
import ic.p;
import java.io.Serializable;
import jc.l;
import jc.m;

/* compiled from: CoroutineContextImpl.kt */
/* loaded from: classes2.dex */
public final class c implements g, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public final g f537f;

    /* renamed from: g, reason: collision with root package name */
    public final g.b f538g;

    /* compiled from: CoroutineContextImpl.kt */
    /* loaded from: classes2.dex */
    public static final class a extends m implements p<String, g.b, String> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f539f = new a();

        public a() {
            super(2);
        }

        @Override // ic.p
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str, g.b bVar) {
            l.f(str, "acc");
            l.f(bVar, "element");
            if (str.length() == 0) {
                return bVar.toString();
            }
            return str + ", " + bVar;
        }
    }

    public c(g gVar, g.b bVar) {
        l.f(gVar, "left");
        l.f(bVar, "element");
        this.f537f = gVar;
        this.f538g = bVar;
    }

    public final boolean a(g.b bVar) {
        return l.a(get(bVar.getKey()), bVar);
    }

    public final boolean c(c cVar) {
        while (a(cVar.f538g)) {
            g gVar = cVar.f537f;
            if (gVar instanceof c) {
                cVar = (c) gVar;
            } else {
                l.d(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return a((g.b) gVar);
            }
        }
        return false;
    }

    public final int e() {
        int i10 = 2;
        c cVar = this;
        while (true) {
            g gVar = cVar.f537f;
            cVar = gVar instanceof c ? (c) gVar : null;
            if (cVar == null) {
                return i10;
            }
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.e() != e() || !cVar.c(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // ac.g
    public <R> R fold(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        l.f(pVar, "operation");
        return pVar.invoke((Object) this.f537f.fold(r10, pVar), this.f538g);
    }

    @Override // ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        l.f(cVar, "key");
        c cVar2 = this;
        while (true) {
            E e10 = (E) cVar2.f538g.get(cVar);
            if (e10 != null) {
                return e10;
            }
            g gVar = cVar2.f537f;
            if (gVar instanceof c) {
                cVar2 = (c) gVar;
            } else {
                return (E) gVar.get(cVar);
            }
        }
    }

    public int hashCode() {
        return this.f537f.hashCode() + this.f538g.hashCode();
    }

    @Override // ac.g
    public g minusKey(g.c<?> cVar) {
        l.f(cVar, "key");
        if (this.f538g.get(cVar) != null) {
            return this.f537f;
        }
        g minusKey = this.f537f.minusKey(cVar);
        return minusKey == this.f537f ? this : minusKey == h.f543f ? this.f538g : new c(minusKey, this.f538g);
    }

    @Override // ac.g
    public g plus(g gVar) {
        return g.a.a(this, gVar);
    }

    public String toString() {
        return '[' + ((String) fold("", a.f539f)) + ']';
    }
}
