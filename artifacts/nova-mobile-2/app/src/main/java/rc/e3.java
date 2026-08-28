package rc;

/* compiled from: Unconfined.kt */
/* loaded from: classes2.dex */
public final class e3 extends l0 {

    /* renamed from: g, reason: collision with root package name */
    public static final e3 f13252g = new e3();

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        h3 h3Var = (h3) gVar.get(h3.f13269g);
        if (h3Var != null) {
            h3Var.f13270f = true;
            return;
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // rc.l0
    public boolean J0(ac.g gVar) {
        return false;
    }

    @Override // rc.l0
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
