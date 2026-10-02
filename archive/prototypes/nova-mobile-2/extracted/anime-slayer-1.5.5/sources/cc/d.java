package cc;

import ac.g;
import jc.l;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public abstract class d extends a {
    private final ac.g _context;
    private transient ac.d<Object> intercepted;

    public d(ac.d<Object> dVar, ac.g gVar) {
        super(dVar);
        this._context = gVar;
    }

    @Override // ac.d
    public ac.g getContext() {
        ac.g gVar = this._context;
        l.c(gVar);
        return gVar;
    }

    public final ac.d<Object> intercepted() {
        ac.d<Object> dVar = this.intercepted;
        if (dVar == null) {
            ac.e eVar = (ac.e) getContext().get(ac.e.f540a);
            if (eVar == null || (dVar = eVar.c0(this)) == null) {
                dVar = this;
            }
            this.intercepted = dVar;
        }
        return dVar;
    }

    @Override // cc.a
    public void releaseIntercepted() {
        ac.d<?> dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            g.b bVar = getContext().get(ac.e.f540a);
            l.c(bVar);
            ((ac.e) bVar).F(dVar);
        }
        this.intercepted = c.f3892f;
    }

    public d(ac.d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }
}
