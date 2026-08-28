package cc;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes2.dex */
public abstract class j extends a {
    public j(ac.d<Object> dVar) {
        super(dVar);
        if (dVar != null) {
            if (!(dVar.getContext() == ac.h.f543f)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // ac.d
    public ac.g getContext() {
        return ac.h.f543f;
    }
}
