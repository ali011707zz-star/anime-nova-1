package rc;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes2.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f13283a;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0027, code lost:
    
        if (r0.equals("on") != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        if (r0.equals("") != false) goto L21;
     */
    static {
        boolean z10;
        String d10 = wc.b0.d("kotlinx.coroutines.scheduler");
        if (d10 != null) {
            int hashCode = d10.hashCode();
            if (hashCode != 0) {
                if (hashCode != 3551) {
                    z10 = (hashCode == 109935 && d10.equals("off")) ? false : true;
                }
                throw new IllegalStateException(("System property 'kotlinx.coroutines.scheduler' has unrecognized value '" + ((Object) d10) + '\'').toString());
            }
            f13283a = z10;
        }
        f13283a = z10;
    }

    public static final l0 a() {
        return f13283a ? yc.b.f16825m : z.f13355h;
    }

    public static final String b(ac.g gVar) {
        o0 o0Var;
        String H0;
        if (!u0.c() || (o0Var = (o0) gVar.get(o0.f13311g)) == null) {
            return null;
        }
        p0 p0Var = (p0) gVar.get(p0.f13318g);
        String str = "coroutine";
        if (p0Var != null && (H0 = p0Var.H0()) != null) {
            str = H0;
        }
        return str + '#' + o0Var.H0();
    }

    public static final ac.g c(q0 q0Var, ac.g gVar) {
        ac.g plus = q0Var.getCoroutineContext().plus(gVar);
        ac.g plus2 = u0.c() ? plus.plus(new o0(u0.b().incrementAndGet())) : plus;
        return (plus == g1.a() || plus.get(ac.e.f540a) != null) ? plus2 : plus2.plus(g1.a());
    }

    public static final f3<?> d(cc.e eVar) {
        while (!(eVar instanceof c1) && (eVar = eVar.getCallerFrame()) != null) {
            if (eVar instanceof f3) {
                return (f3) eVar;
            }
        }
        return null;
    }

    public static final f3<?> e(ac.d<?> dVar, ac.g gVar, Object obj) {
        if (!(dVar instanceof cc.e)) {
            return null;
        }
        if (!(gVar.get(g3.f13266f) != null)) {
            return null;
        }
        f3<?> d10 = d((cc.e) dVar);
        if (d10 != null) {
            d10.T0(gVar, obj);
        }
        return d10;
    }
}
