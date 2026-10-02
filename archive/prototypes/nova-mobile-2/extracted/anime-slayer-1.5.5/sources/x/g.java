package x;

import x.f;

/* compiled from: DimensionDependency.java */
/* loaded from: classes.dex */
public class g extends f {

    /* renamed from: m, reason: collision with root package name */
    public int f15596m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.f15579e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.f15579e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // x.f
    public void d(int i10) {
        if (this.f15584j) {
            return;
        }
        this.f15584j = true;
        this.f15581g = i10;
        for (d dVar : this.f15585k) {
            dVar.a(dVar);
        }
    }
}
