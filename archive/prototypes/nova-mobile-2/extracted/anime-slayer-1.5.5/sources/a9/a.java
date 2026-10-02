package a9;

/* compiled from: BarHighlighter.java */
/* loaded from: classes.dex */
public class a extends b<b9.a> {
    public a(b9.a aVar) {
        super(aVar);
    }

    @Override // a9.b, a9.e
    public c a(float f10, float f11) {
        c a10 = super.a(f10, f11);
        if (a10 == null) {
            return null;
        }
        g9.d j10 = j(f10, f11);
        c9.a aVar = (c9.a) ((b9.a) this.f514a).getBarData().e(a10.c());
        if (aVar.T()) {
            return l(a10, aVar, (float) j10.f7051c, (float) j10.f7052d);
        }
        g9.d.c(j10);
        return a10;
    }

    @Override // a9.b
    public y8.d d() {
        return ((b9.a) this.f514a).getBarData();
    }

    @Override // a9.b
    public float e(float f10, float f11, float f12, float f13) {
        return Math.abs(f10 - f12);
    }

    public int k(i[] iVarArr, float f10) {
        if (iVarArr == null || iVarArr.length == 0) {
            return 0;
        }
        if (iVarArr.length > 0) {
            i iVar = iVarArr[0];
            throw null;
        }
        i iVar2 = iVarArr[Math.max(iVarArr.length - 1, 0)];
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c l(c cVar, c9.a aVar, float f10, float f11) {
        y8.c cVar2 = (y8.c) aVar.A(f10, f11);
        if (cVar2 == null) {
            return null;
        }
        if (cVar2.n() == null) {
            return cVar;
        }
        i[] m10 = cVar2.m();
        if (m10.length <= 0) {
            return null;
        }
        int k10 = k(m10, f11);
        ((b9.a) this.f514a).b(aVar.a0());
        cVar.g();
        i iVar = m10[k10];
        throw null;
    }
}
