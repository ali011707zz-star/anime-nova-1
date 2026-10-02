package rc;

/* compiled from: MainCoroutineDispatcher.kt */
/* loaded from: classes2.dex */
public abstract class n2 extends l0 {
    public abstract n2 K0();

    public final String L0() {
        n2 n2Var;
        n2 c10 = g1.c();
        if (this == c10) {
            return "Dispatchers.Main";
        }
        try {
            n2Var = c10.K0();
        } catch (UnsupportedOperationException unused) {
            n2Var = null;
        }
        if (this == n2Var) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // rc.l0
    public String toString() {
        String L0 = L0();
        if (L0 != null) {
            return L0;
        }
        return v0.a(this) + '@' + v0.b(this);
    }
}
