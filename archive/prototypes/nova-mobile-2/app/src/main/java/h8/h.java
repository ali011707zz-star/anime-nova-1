package h8;

/* compiled from: RequestOptions.java */
/* loaded from: classes.dex */
public class h extends a<h> {
    public static h F;
    public static h G;
    public static h H;
    public static h I;

    public static h j0() {
        if (H == null) {
            H = new h().c().b();
        }
        return H;
    }

    public static h k0() {
        if (I == null) {
            I = new h().d().b();
        }
        return I;
    }

    public static h l0(Class<?> cls) {
        return new h().f(cls);
    }

    public static h m0(r7.j jVar) {
        return new h().g(jVar);
    }

    public static h n0(int i10) {
        return new h().T(i10);
    }

    public static h o0(p7.e eVar) {
        return new h().Z(eVar);
    }

    public static h p0(boolean z10) {
        if (z10) {
            if (F == null) {
                F = new h().b0(true).b();
            }
            return F;
        }
        if (G == null) {
            G = new h().b0(false).b();
        }
        return G;
    }
}
