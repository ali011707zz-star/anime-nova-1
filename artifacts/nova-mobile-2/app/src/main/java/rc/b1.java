package rc;

import ac.g;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: Delay.kt */
/* loaded from: classes2.dex */
public final class b1 {
    public static final Object a(long j10, ac.d<? super vb.p> dVar) {
        if (j10 <= 0) {
            return vb.p.f15031a;
        }
        p pVar = new p(bc.b.c(dVar), 1);
        pVar.z();
        if (j10 < RecyclerView.FOREVER_NS) {
            b(pVar.getContext()).L(j10, pVar);
        }
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10 == bc.c.d() ? v10 : vb.p.f15031a;
    }

    public static final a1 b(ac.g gVar) {
        g.b bVar = gVar.get(ac.e.f540a);
        a1 a1Var = bVar instanceof a1 ? (a1) bVar : null;
        return a1Var == null ? x0.a() : a1Var;
    }
}
