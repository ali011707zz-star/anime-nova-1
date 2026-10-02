package a9;

import java.util.ArrayList;
import java.util.List;
import y8.i;
import y8.j;

/* compiled from: HorizontalBarHighlighter.java */
/* loaded from: classes.dex */
public class d extends a {
    public d(b9.a aVar) {
        super(aVar);
    }

    @Override // a9.a, a9.b, a9.e
    public c a(float f10, float f11) {
        y8.a barData = ((b9.a) this.f514a).getBarData();
        g9.d j10 = j(f11, f10);
        c f12 = f((float) j10.f7052d, f11, f10);
        if (f12 == null) {
            return null;
        }
        c9.a aVar = (c9.a) barData.e(f12.c());
        if (aVar.T()) {
            return l(f12, aVar, (float) j10.f7052d, (float) j10.f7051c);
        }
        g9.d.c(j10);
        return f12;
    }

    @Override // a9.b
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
            g9.d a10 = ((b9.a) this.f514a).b(dVar.a0()).a(jVar.e(), jVar.i());
            arrayList.add(new c(jVar.i(), jVar.e(), (float) a10.f7051c, (float) a10.f7052d, i10, dVar.a0()));
        }
        return arrayList;
    }

    @Override // a9.a, a9.b
    public float e(float f10, float f11, float f12, float f13) {
        return Math.abs(f11 - f13);
    }
}
