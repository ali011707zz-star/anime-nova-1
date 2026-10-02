package x;

import java.util.Iterator;
import x.f;

/* compiled from: HelperReferences.java */
/* loaded from: classes.dex */
public class k extends p {
    public k(w.e eVar) {
        super(eVar);
    }

    @Override // x.p, x.d
    public void a(d dVar) {
        w.a aVar = (w.a) this.f15629b;
        int m12 = aVar.m1();
        Iterator<f> it2 = this.f15635h.f15586l.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it2.hasNext()) {
            int i12 = it2.next().f15581g;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (m12 != 0 && m12 != 2) {
            this.f15635h.d(i10 + aVar.n1());
        } else {
            this.f15635h.d(i11 + aVar.n1());
        }
    }

    @Override // x.p
    public void d() {
        w.e eVar = this.f15629b;
        if (eVar instanceof w.a) {
            this.f15635h.f15576b = true;
            w.a aVar = (w.a) eVar;
            int m12 = aVar.m1();
            boolean l12 = aVar.l1();
            int i10 = 0;
            if (m12 == 0) {
                this.f15635h.f15579e = f.a.LEFT;
                while (i10 < aVar.K0) {
                    w.e eVar2 = aVar.J0[i10];
                    if (l12 || eVar2.Q() != 8) {
                        f fVar = eVar2.f15165e.f15635h;
                        fVar.f15585k.add(this.f15635h);
                        this.f15635h.f15586l.add(fVar);
                    }
                    i10++;
                }
                q(this.f15629b.f15165e.f15635h);
                q(this.f15629b.f15165e.f15636i);
                return;
            }
            if (m12 == 1) {
                this.f15635h.f15579e = f.a.RIGHT;
                while (i10 < aVar.K0) {
                    w.e eVar3 = aVar.J0[i10];
                    if (l12 || eVar3.Q() != 8) {
                        f fVar2 = eVar3.f15165e.f15636i;
                        fVar2.f15585k.add(this.f15635h);
                        this.f15635h.f15586l.add(fVar2);
                    }
                    i10++;
                }
                q(this.f15629b.f15165e.f15635h);
                q(this.f15629b.f15165e.f15636i);
                return;
            }
            if (m12 == 2) {
                this.f15635h.f15579e = f.a.TOP;
                while (i10 < aVar.K0) {
                    w.e eVar4 = aVar.J0[i10];
                    if (l12 || eVar4.Q() != 8) {
                        f fVar3 = eVar4.f15167f.f15635h;
                        fVar3.f15585k.add(this.f15635h);
                        this.f15635h.f15586l.add(fVar3);
                    }
                    i10++;
                }
                q(this.f15629b.f15167f.f15635h);
                q(this.f15629b.f15167f.f15636i);
                return;
            }
            if (m12 != 3) {
                return;
            }
            this.f15635h.f15579e = f.a.BOTTOM;
            while (i10 < aVar.K0) {
                w.e eVar5 = aVar.J0[i10];
                if (l12 || eVar5.Q() != 8) {
                    f fVar4 = eVar5.f15167f.f15636i;
                    fVar4.f15585k.add(this.f15635h);
                    this.f15635h.f15586l.add(fVar4);
                }
                i10++;
            }
            q(this.f15629b.f15167f.f15635h);
            q(this.f15629b.f15167f.f15636i);
        }
    }

    @Override // x.p
    public void e() {
        w.e eVar = this.f15629b;
        if (eVar instanceof w.a) {
            int m12 = ((w.a) eVar).m1();
            if (m12 != 0 && m12 != 1) {
                this.f15629b.e1(this.f15635h.f15581g);
            } else {
                this.f15629b.d1(this.f15635h.f15581g);
            }
        }
    }

    @Override // x.p
    public void f() {
        this.f15630c = null;
        this.f15635h.c();
    }

    @Override // x.p
    public boolean m() {
        return false;
    }

    public final void q(f fVar) {
        this.f15635h.f15585k.add(fVar);
        fVar.f15586l.add(this.f15635h);
    }
}
