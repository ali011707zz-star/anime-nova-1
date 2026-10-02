package rc;

/* compiled from: Yield.kt */
/* loaded from: classes2.dex */
public final class i3 {
    public static final Object a(ac.d<? super vb.p> dVar) {
        Object d10;
        ac.g context = dVar.getContext();
        f2.h(context);
        ac.d c10 = bc.b.c(dVar);
        wc.g gVar = c10 instanceof wc.g ? (wc.g) c10 : null;
        if (gVar == null) {
            d10 = vb.p.f15031a;
        } else {
            if (gVar.f15489i.J0(context)) {
                gVar.k(context, vb.p.f15031a);
            } else {
                h3 h3Var = new h3();
                ac.g plus = context.plus(h3Var);
                vb.p pVar = vb.p.f15031a;
                gVar.k(plus, pVar);
                if (h3Var.f13270f) {
                    d10 = wc.h.d(gVar) ? bc.c.d() : pVar;
                }
            }
            d10 = bc.c.d();
        }
        if (d10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return d10 == bc.c.d() ? d10 : vb.p.f15031a;
    }
}
