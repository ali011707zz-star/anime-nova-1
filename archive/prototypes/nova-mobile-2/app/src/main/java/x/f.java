package x;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DependencyNode.java */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: d, reason: collision with root package name */
    public p f15578d;

    /* renamed from: f, reason: collision with root package name */
    public int f15580f;

    /* renamed from: g, reason: collision with root package name */
    public int f15581g;

    /* renamed from: a, reason: collision with root package name */
    public d f15575a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15576b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15577c = false;

    /* renamed from: e, reason: collision with root package name */
    public a f15579e = a.UNKNOWN;

    /* renamed from: h, reason: collision with root package name */
    public int f15582h = 1;

    /* renamed from: i, reason: collision with root package name */
    public g f15583i = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f15584j = false;

    /* renamed from: k, reason: collision with root package name */
    public List<d> f15585k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public List<f> f15586l = new ArrayList();

    /* compiled from: DependencyNode.java */
    /* loaded from: classes.dex */
    public enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.f15578d = pVar;
    }

    @Override // x.d
    public void a(d dVar) {
        Iterator<f> it2 = this.f15586l.iterator();
        while (it2.hasNext()) {
            if (!it2.next().f15584j) {
                return;
            }
        }
        this.f15577c = true;
        d dVar2 = this.f15575a;
        if (dVar2 != null) {
            dVar2.a(this);
        }
        if (this.f15576b) {
            this.f15578d.a(this);
            return;
        }
        f fVar = null;
        int i10 = 0;
        for (f fVar2 : this.f15586l) {
            if (!(fVar2 instanceof g)) {
                i10++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i10 == 1 && fVar.f15584j) {
            g gVar = this.f15583i;
            if (gVar != null) {
                if (!gVar.f15584j) {
                    return;
                } else {
                    this.f15580f = this.f15582h * gVar.f15581g;
                }
            }
            d(fVar.f15581g + this.f15580f);
        }
        d dVar3 = this.f15575a;
        if (dVar3 != null) {
            dVar3.a(this);
        }
    }

    public void b(d dVar) {
        this.f15585k.add(dVar);
        if (this.f15584j) {
            dVar.a(dVar);
        }
    }

    public void c() {
        this.f15586l.clear();
        this.f15585k.clear();
        this.f15584j = false;
        this.f15581g = 0;
        this.f15577c = false;
        this.f15576b = false;
    }

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

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f15578d.f15629b.r());
        sb2.append(":");
        sb2.append(this.f15579e);
        sb2.append("(");
        sb2.append(this.f15584j ? Integer.valueOf(this.f15581g) : "unresolved");
        sb2.append(") <t=");
        sb2.append(this.f15586l.size());
        sb2.append(":d=");
        sb2.append(this.f15585k.size());
        sb2.append(">");
        return sb2.toString();
    }
}
