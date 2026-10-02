package x;

/* compiled from: GuidelineReference.java */
/* loaded from: classes.dex */
public class j extends p {
    public j(w.e eVar) {
        super(eVar);
        eVar.f15165e.f();
        eVar.f15167f.f();
        this.f15633f = ((w.g) eVar).j1();
    }

    @Override // x.p, x.d
    public void a(d dVar) {
        f fVar = this.f15635h;
        if (fVar.f15577c && !fVar.f15584j) {
            this.f15635h.d((int) ((fVar.f15586l.get(0).f15581g * ((w.g) this.f15629b).m1()) + 0.5f));
        }
    }

    @Override // x.p
    public void d() {
        w.g gVar = (w.g) this.f15629b;
        int k12 = gVar.k1();
        int l12 = gVar.l1();
        gVar.m1();
        if (gVar.j1() == 1) {
            if (k12 != -1) {
                this.f15635h.f15586l.add(this.f15629b.Z.f15165e.f15635h);
                this.f15629b.Z.f15165e.f15635h.f15585k.add(this.f15635h);
                this.f15635h.f15580f = k12;
            } else if (l12 != -1) {
                this.f15635h.f15586l.add(this.f15629b.Z.f15165e.f15636i);
                this.f15629b.Z.f15165e.f15636i.f15585k.add(this.f15635h);
                this.f15635h.f15580f = -l12;
            } else {
                f fVar = this.f15635h;
                fVar.f15576b = true;
                fVar.f15586l.add(this.f15629b.Z.f15165e.f15636i);
                this.f15629b.Z.f15165e.f15636i.f15585k.add(this.f15635h);
            }
            q(this.f15629b.f15165e.f15635h);
            q(this.f15629b.f15165e.f15636i);
            return;
        }
        if (k12 != -1) {
            this.f15635h.f15586l.add(this.f15629b.Z.f15167f.f15635h);
            this.f15629b.Z.f15167f.f15635h.f15585k.add(this.f15635h);
            this.f15635h.f15580f = k12;
        } else if (l12 != -1) {
            this.f15635h.f15586l.add(this.f15629b.Z.f15167f.f15636i);
            this.f15629b.Z.f15167f.f15636i.f15585k.add(this.f15635h);
            this.f15635h.f15580f = -l12;
        } else {
            f fVar2 = this.f15635h;
            fVar2.f15576b = true;
            fVar2.f15586l.add(this.f15629b.Z.f15167f.f15636i);
            this.f15629b.Z.f15167f.f15636i.f15585k.add(this.f15635h);
        }
        q(this.f15629b.f15167f.f15635h);
        q(this.f15629b.f15167f.f15636i);
    }

    @Override // x.p
    public void e() {
        if (((w.g) this.f15629b).j1() == 1) {
            this.f15629b.d1(this.f15635h.f15581g);
        } else {
            this.f15629b.e1(this.f15635h.f15581g);
        }
    }

    @Override // x.p
    public void f() {
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
