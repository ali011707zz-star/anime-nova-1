package w;

import w.e;

/* compiled from: Optimizer.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static boolean[] f15231a = new boolean[3];

    public static void a(f fVar, t.d dVar, e eVar) {
        eVar.f15193s = -1;
        eVar.f15195t = -1;
        e.b bVar = fVar.Y[0];
        e.b bVar2 = e.b.WRAP_CONTENT;
        if (bVar != bVar2 && eVar.Y[0] == e.b.MATCH_PARENT) {
            int i10 = eVar.N.f15143g;
            int R = fVar.R() - eVar.P.f15143g;
            d dVar2 = eVar.N;
            dVar2.f15145i = dVar.q(dVar2);
            d dVar3 = eVar.P;
            dVar3.f15145i = dVar.q(dVar3);
            dVar.f(eVar.N.f15145i, i10);
            dVar.f(eVar.P.f15145i, R);
            eVar.f15193s = 2;
            eVar.F0(i10, R);
        }
        if (fVar.Y[1] == bVar2 || eVar.Y[1] != e.b.MATCH_PARENT) {
            return;
        }
        int i11 = eVar.O.f15143g;
        int v10 = fVar.v() - eVar.Q.f15143g;
        d dVar4 = eVar.O;
        dVar4.f15145i = dVar.q(dVar4);
        d dVar5 = eVar.Q;
        dVar5.f15145i = dVar.q(dVar5);
        dVar.f(eVar.O.f15145i, i11);
        dVar.f(eVar.Q.f15145i, v10);
        if (eVar.f15178k0 > 0 || eVar.Q() == 8) {
            d dVar6 = eVar.R;
            dVar6.f15145i = dVar.q(dVar6);
            dVar.f(eVar.R.f15145i, eVar.f15178k0 + i11);
        }
        eVar.f15195t = 2;
        eVar.W0(i11, v10);
    }

    public static final boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}
