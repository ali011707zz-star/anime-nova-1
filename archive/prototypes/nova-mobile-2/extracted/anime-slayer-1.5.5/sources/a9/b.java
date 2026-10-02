package a9;

import b9.b;
import java.util.ArrayList;
import java.util.List;
import x8.i;
import y8.i;
import y8.j;

/* compiled from: ChartHighlighter.java */
/* loaded from: classes.dex */
public class b<T extends b9.b> implements e {

    /* renamed from: a, reason: collision with root package name */
    public T f514a;

    /* renamed from: b, reason: collision with root package name */
    public List<c> f515b = new ArrayList();

    public b(T t10) {
        this.f514a = t10;
    }

    @Override // a9.e
    public c a(float f10, float f11) {
        g9.d j10 = j(f10, f11);
        float f12 = (float) j10.f7051c;
        g9.d.c(j10);
        return f(f12, f10, f11);
    }

    public List<c> b(c9.d dVar, int i10, float f10, i.a aVar) {
        j B;
        ArrayList arrayList = new ArrayList();
        List<j> H = dVar.H(f10);
        if (H.size() == 0 && (B = dVar.B(f10, Float.NaN, aVar)) != null) {
            H = dVar.H(B.i());
        }
        if (H.size() == 0) {
            return arrayList;
        }
        for (j jVar : H) {
            g9.d a10 = this.f514a.b(dVar.a0()).a(jVar.i(), jVar.e());
            arrayList.add(new c(jVar.i(), jVar.e(), (float) a10.f7051c, (float) a10.f7052d, i10, dVar.a0()));
        }
        return arrayList;
    }

    public c c(List<c> list, float f10, float f11, i.a aVar, float f12) {
        c cVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar2 = list.get(i10);
            if (aVar == null || cVar2.b() == aVar) {
                float e10 = e(f10, f11, cVar2.h(), cVar2.j());
                if (e10 < f12) {
                    cVar = cVar2;
                    f12 = e10;
                }
            }
        }
        return cVar;
    }

    public y8.d d() {
        return this.f514a.getData();
    }

    public float e(float f10, float f11, float f12, float f13) {
        return (float) Math.hypot(f10 - f12, f11 - f13);
    }

    public c f(float f10, float f11, float f12) {
        List<c> h10 = h(f10, f11, f12);
        if (h10.isEmpty()) {
            return null;
        }
        i.a aVar = i.a.LEFT;
        float i10 = i(h10, f12, aVar);
        i.a aVar2 = i.a.RIGHT;
        return c(h10, f11, f12, i10 < i(h10, f12, aVar2) ? aVar : aVar2, this.f514a.getMaxHighlightDistance());
    }

    public float g(c cVar) {
        return cVar.j();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [c9.d] */
    public List<c> h(float f10, float f11, float f12) {
        this.f515b.clear();
        y8.d d10 = d();
        if (d10 == null) {
            return this.f515b;
        }
        int f13 = d10.f();
        for (int i10 = 0; i10 < f13; i10++) {
            ?? e10 = d10.e(i10);
            if (e10.i0()) {
                this.f515b.addAll(b(e10, i10, f10, i.a.CLOSEST));
            }
        }
        return this.f515b;
    }

    public float i(List<c> list, float f10, i.a aVar) {
        float f11 = Float.MAX_VALUE;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar.b() == aVar) {
                float abs = Math.abs(g(cVar) - f10);
                if (abs < f11) {
                    f11 = abs;
                }
            }
        }
        return f11;
    }

    public g9.d j(float f10, float f11) {
        return this.f514a.b(i.a.LEFT).b(f10, f11);
    }
}
