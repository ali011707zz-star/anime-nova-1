package w;

import java.util.ArrayList;

/* compiled from: WidgetContainer.java */
/* loaded from: classes.dex */
public class l extends e {
    public ArrayList<e> J0 = new ArrayList<>();

    public void c(e eVar) {
        this.J0.add(eVar);
        if (eVar.I() != null) {
            ((l) eVar.I()).k1(eVar);
        }
        eVar.T0(this);
    }

    public ArrayList<e> i1() {
        return this.J0;
    }

    public void j1() {
        ArrayList<e> arrayList = this.J0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.J0.get(i10);
            if (eVar instanceof l) {
                ((l) eVar).j1();
            }
        }
    }

    public void k1(e eVar) {
        this.J0.remove(eVar);
        eVar.o0();
    }

    public void l1() {
        this.J0.clear();
    }

    @Override // w.e
    public void o0() {
        this.J0.clear();
        super.o0();
    }

    @Override // w.e
    public void q0(t.c cVar) {
        super.q0(cVar);
        int size = this.J0.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.J0.get(i10).q0(cVar);
        }
    }
}
