package w;

import java.util.HashSet;
import x.b;

/* compiled from: VirtualLayout.java */
/* loaded from: classes.dex */
public class k extends i {
    public int L0 = 0;
    public int M0 = 0;
    public int N0 = 0;
    public int O0 = 0;
    public int P0 = 0;
    public int Q0 = 0;
    public int R0 = 0;
    public int S0 = 0;
    public boolean T0 = false;
    public int U0 = 0;
    public int V0 = 0;
    public b.a W0 = new b.a();
    public b.InterfaceC0402b X0 = null;

    @Override // w.i, w.h
    public void a(f fVar) {
        k1();
    }

    public void k1() {
        for (int i10 = 0; i10 < this.K0; i10++) {
            e eVar = this.J0[i10];
            if (eVar != null) {
                eVar.L0(true);
            }
        }
    }

    public boolean l1(HashSet<e> hashSet) {
        for (int i10 = 0; i10 < this.K0; i10++) {
            if (hashSet.contains(this.J0[i10])) {
                return true;
            }
        }
        return false;
    }

    public boolean m1() {
        return this.T0;
    }
}
