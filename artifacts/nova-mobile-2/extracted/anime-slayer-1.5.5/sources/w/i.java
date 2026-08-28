package w;

import java.util.ArrayList;
import java.util.Arrays;
import x.o;

/* compiled from: HelperWidget.java */
/* loaded from: classes.dex */
public class i extends e implements h {
    public e[] J0 = new e[4];
    public int K0 = 0;

    @Override // w.h
    public void a(f fVar) {
    }

    @Override // w.h
    public void b() {
        this.K0 = 0;
        Arrays.fill(this.J0, (Object) null);
    }

    @Override // w.h
    public void c(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        int i10 = this.K0 + 1;
        e[] eVarArr = this.J0;
        if (i10 > eVarArr.length) {
            this.J0 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        e[] eVarArr2 = this.J0;
        int i11 = this.K0;
        eVarArr2[i11] = eVar;
        this.K0 = i11 + 1;
    }

    public void i1(ArrayList<o> arrayList, int i10, o oVar) {
        for (int i11 = 0; i11 < this.K0; i11++) {
            oVar.a(this.J0[i11]);
        }
        for (int i12 = 0; i12 < this.K0; i12++) {
            x.i.a(this.J0[i12], i10, arrayList, oVar);
        }
    }

    public int j1(int i10) {
        int i11;
        int i12;
        for (int i13 = 0; i13 < this.K0; i13++) {
            e eVar = this.J0[i13];
            if (i10 == 0 && (i12 = eVar.G0) != -1) {
                return i12;
            }
            if (i10 == 1 && (i11 = eVar.H0) != -1) {
                return i11;
            }
        }
        return -1;
    }
}
