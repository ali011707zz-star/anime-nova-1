package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import w.e;

/* compiled from: ChainRun.java */
/* loaded from: classes.dex */
public class c extends p {

    /* renamed from: k, reason: collision with root package name */
    public ArrayList<p> f15564k;

    /* renamed from: l, reason: collision with root package name */
    public int f15565l;

    public c(w.e eVar, int i10) {
        super(eVar);
        this.f15564k = new ArrayList<>();
        this.f15633f = i10;
        q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x0402, code lost:
    
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
    @Override // x.p, x.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(d dVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        boolean z10;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z11;
        int i19;
        int i20;
        float f11;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        if (this.f15635h.f15584j && this.f15636i.f15584j) {
            w.e I = this.f15629b.I();
            boolean G1 = I instanceof w.f ? ((w.f) I).G1() : false;
            int i26 = this.f15636i.f15581g - this.f15635h.f15581g;
            int size = this.f15564k.size();
            int i27 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i27 >= size) {
                    i27 = -1;
                    break;
                } else if (this.f15564k.get(i27).f15629b.Q() != 8) {
                    break;
                } else {
                    i27++;
                }
            }
            int i28 = size - 1;
            int i29 = i28;
            while (true) {
                if (i29 < 0) {
                    break;
                }
                if (this.f15564k.get(i29).f15629b.Q() != 8) {
                    i10 = i29;
                    break;
                }
                i29--;
            }
            int i30 = 0;
            while (i30 < 2) {
                int i31 = 0;
                i13 = 0;
                i14 = 0;
                int i32 = 0;
                f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                while (i31 < size) {
                    p pVar = this.f15564k.get(i31);
                    if (pVar.f15629b.Q() != i11) {
                        i32++;
                        if (i31 > 0 && i31 >= i27) {
                            i13 += pVar.f15635h.f15580f;
                        }
                        g gVar = pVar.f15632e;
                        int i33 = gVar.f15581g;
                        boolean z12 = pVar.f15631d != e.b.MATCH_CONSTRAINT;
                        if (z12) {
                            int i34 = this.f15633f;
                            if (i34 == 0 && !pVar.f15629b.f15165e.f15632e.f15584j) {
                                return;
                            }
                            if (i34 == 1 && !pVar.f15629b.f15167f.f15632e.f15584j) {
                                return;
                            } else {
                                i24 = i33;
                            }
                        } else {
                            i24 = i33;
                            if (pVar.f15628a == 1 && i30 == 0) {
                                i25 = gVar.f15596m;
                                i14++;
                            } else if (gVar.f15584j) {
                                i25 = i24;
                            }
                            z12 = true;
                            if (z12) {
                                i14++;
                                float f12 = pVar.f15629b.B0[this.f15633f];
                                if (f12 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                    f10 += f12;
                                }
                            } else {
                                i13 += i25;
                            }
                            if (i31 < i28 && i31 < i10) {
                                i13 += -pVar.f15636i.f15580f;
                            }
                        }
                        i25 = i24;
                        if (z12) {
                        }
                        if (i31 < i28) {
                            i13 += -pVar.f15636i.f15580f;
                        }
                    }
                    i31++;
                    i11 = 8;
                }
                if (i13 < i26 || i14 == 0) {
                    i12 = i32;
                    break;
                } else {
                    i30++;
                    i11 = 8;
                }
            }
            i12 = 0;
            i13 = 0;
            i14 = 0;
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            int i35 = this.f15635h.f15581g;
            if (G1) {
                i35 = this.f15636i.f15581g;
            }
            if (i13 > i26) {
                i35 = G1 ? i35 + ((int) (((i13 - i26) / 2.0f) + 0.5f)) : i35 - ((int) (((i13 - i26) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f13 = i26 - i13;
                int i36 = (int) ((f13 / i14) + 0.5f);
                int i37 = 0;
                int i38 = 0;
                while (i37 < size) {
                    p pVar2 = this.f15564k.get(i37);
                    int i39 = i36;
                    int i40 = i13;
                    if (pVar2.f15629b.Q() != 8 && pVar2.f15631d == e.b.MATCH_CONSTRAINT) {
                        g gVar2 = pVar2.f15632e;
                        if (!gVar2.f15584j) {
                            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                i20 = i35;
                                i21 = (int) (((pVar2.f15629b.B0[this.f15633f] * f13) / f10) + 0.5f);
                            } else {
                                i20 = i35;
                                i21 = i39;
                            }
                            if (this.f15633f == 0) {
                                w.e eVar = pVar2.f15629b;
                                f11 = f13;
                                i23 = eVar.f15207z;
                                i22 = eVar.f15205y;
                                z11 = G1;
                            } else {
                                f11 = f13;
                                w.e eVar2 = pVar2.f15629b;
                                int i41 = eVar2.C;
                                z11 = G1;
                                i22 = eVar2.B;
                                i23 = i41;
                            }
                            i19 = i12;
                            int max = Math.max(i22, pVar2.f15628a == 1 ? Math.min(i21, gVar2.f15596m) : i21);
                            if (i23 > 0) {
                                max = Math.min(i23, max);
                            }
                            if (max != i21) {
                                i38++;
                                i21 = max;
                            }
                            pVar2.f15632e.d(i21);
                            i37++;
                            i36 = i39;
                            i13 = i40;
                            i35 = i20;
                            f13 = f11;
                            G1 = z11;
                            i12 = i19;
                        }
                    }
                    z11 = G1;
                    i19 = i12;
                    i20 = i35;
                    f11 = f13;
                    i37++;
                    i36 = i39;
                    i13 = i40;
                    i35 = i20;
                    f13 = f11;
                    G1 = z11;
                    i12 = i19;
                }
                z10 = G1;
                i15 = i12;
                i16 = i35;
                int i42 = i13;
                if (i38 > 0) {
                    i14 -= i38;
                    int i43 = 0;
                    for (int i44 = 0; i44 < size; i44++) {
                        p pVar3 = this.f15564k.get(i44);
                        if (pVar3.f15629b.Q() != 8) {
                            if (i44 > 0 && i44 >= i27) {
                                i43 += pVar3.f15635h.f15580f;
                            }
                            i43 += pVar3.f15632e.f15581g;
                            if (i44 < i28 && i44 < i10) {
                                i43 += -pVar3.f15636i.f15580f;
                            }
                        }
                    }
                    i13 = i43;
                } else {
                    i13 = i42;
                }
                i17 = 2;
                if (this.f15565l == 2 && i38 == 0) {
                    this.f15565l = 0;
                }
            } else {
                z10 = G1;
                i15 = i12;
                i16 = i35;
                i17 = 2;
            }
            if (i13 > i26) {
                this.f15565l = i17;
            }
            if (i15 > 0 && i14 == 0 && i27 == i10) {
                this.f15565l = i17;
            }
            int i45 = this.f15565l;
            if (i45 == 1) {
                int i46 = i15;
                if (i46 > 1) {
                    i18 = (i26 - i13) / (i46 - 1);
                } else {
                    i18 = i46 == 1 ? (i26 - i13) / 2 : 0;
                }
                if (i14 > 0) {
                    i18 = 0;
                }
                int i47 = i16;
                for (int i48 = 0; i48 < size; i48++) {
                    p pVar4 = this.f15564k.get(z10 ? size - (i48 + 1) : i48);
                    if (pVar4.f15629b.Q() == 8) {
                        pVar4.f15635h.d(i47);
                        pVar4.f15636i.d(i47);
                    } else {
                        if (i48 > 0) {
                            i47 = z10 ? i47 - i18 : i47 + i18;
                        }
                        if (i48 > 0 && i48 >= i27) {
                            if (z10) {
                                i47 -= pVar4.f15635h.f15580f;
                            } else {
                                i47 += pVar4.f15635h.f15580f;
                            }
                        }
                        if (z10) {
                            pVar4.f15636i.d(i47);
                        } else {
                            pVar4.f15635h.d(i47);
                        }
                        g gVar3 = pVar4.f15632e;
                        int i49 = gVar3.f15581g;
                        if (pVar4.f15631d == e.b.MATCH_CONSTRAINT && pVar4.f15628a == 1) {
                            i49 = gVar3.f15596m;
                        }
                        i47 = z10 ? i47 - i49 : i47 + i49;
                        if (z10) {
                            pVar4.f15635h.d(i47);
                        } else {
                            pVar4.f15636i.d(i47);
                        }
                        pVar4.f15634g = true;
                        if (i48 < i28 && i48 < i10) {
                            if (z10) {
                                i47 -= -pVar4.f15636i.f15580f;
                            } else {
                                i47 += -pVar4.f15636i.f15580f;
                            }
                        }
                    }
                }
                return;
            }
            int i50 = i15;
            if (i45 == 0) {
                int i51 = (i26 - i13) / (i50 + 1);
                if (i14 > 0) {
                    i51 = 0;
                }
                int i52 = i16;
                for (int i53 = 0; i53 < size; i53++) {
                    p pVar5 = this.f15564k.get(z10 ? size - (i53 + 1) : i53);
                    if (pVar5.f15629b.Q() == 8) {
                        pVar5.f15635h.d(i52);
                        pVar5.f15636i.d(i52);
                    } else {
                        int i54 = z10 ? i52 - i51 : i52 + i51;
                        if (i53 > 0 && i53 >= i27) {
                            if (z10) {
                                i54 -= pVar5.f15635h.f15580f;
                            } else {
                                i54 += pVar5.f15635h.f15580f;
                            }
                        }
                        if (z10) {
                            pVar5.f15636i.d(i54);
                        } else {
                            pVar5.f15635h.d(i54);
                        }
                        g gVar4 = pVar5.f15632e;
                        int i55 = gVar4.f15581g;
                        if (pVar5.f15631d == e.b.MATCH_CONSTRAINT && pVar5.f15628a == 1) {
                            i55 = Math.min(i55, gVar4.f15596m);
                        }
                        i52 = z10 ? i54 - i55 : i54 + i55;
                        if (z10) {
                            pVar5.f15635h.d(i52);
                        } else {
                            pVar5.f15636i.d(i52);
                        }
                        if (i53 < i28 && i53 < i10) {
                            if (z10) {
                                i52 -= -pVar5.f15636i.f15580f;
                            } else {
                                i52 += -pVar5.f15636i.f15580f;
                            }
                        }
                    }
                }
                return;
            }
            if (i45 == 2) {
                float w10 = this.f15633f == 0 ? this.f15629b.w() : this.f15629b.M();
                if (z10) {
                    w10 = 1.0f - w10;
                }
                int i56 = (int) (((i26 - i13) * w10) + 0.5f);
                if (i56 < 0 || i14 > 0) {
                    i56 = 0;
                }
                int i57 = z10 ? i16 - i56 : i16 + i56;
                for (int i58 = 0; i58 < size; i58++) {
                    p pVar6 = this.f15564k.get(z10 ? size - (i58 + 1) : i58);
                    if (pVar6.f15629b.Q() == 8) {
                        pVar6.f15635h.d(i57);
                        pVar6.f15636i.d(i57);
                    } else {
                        if (i58 > 0 && i58 >= i27) {
                            if (z10) {
                                i57 -= pVar6.f15635h.f15580f;
                            } else {
                                i57 += pVar6.f15635h.f15580f;
                            }
                        }
                        if (z10) {
                            pVar6.f15636i.d(i57);
                        } else {
                            pVar6.f15635h.d(i57);
                        }
                        g gVar5 = pVar6.f15632e;
                        int i59 = gVar5.f15581g;
                        if (pVar6.f15631d == e.b.MATCH_CONSTRAINT && pVar6.f15628a == 1) {
                            i59 = gVar5.f15596m;
                        }
                        i57 += i59;
                        if (z10) {
                            pVar6.f15635h.d(i57);
                        } else {
                            pVar6.f15636i.d(i57);
                        }
                        if (i58 < i28 && i58 < i10) {
                            if (z10) {
                                i57 -= -pVar6.f15636i.f15580f;
                            } else {
                                i57 += -pVar6.f15636i.f15580f;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // x.p
    public void d() {
        Iterator<p> it2 = this.f15564k.iterator();
        while (it2.hasNext()) {
            it2.next().d();
        }
        int size = this.f15564k.size();
        if (size < 1) {
            return;
        }
        w.e eVar = this.f15564k.get(0).f15629b;
        w.e eVar2 = this.f15564k.get(size - 1).f15629b;
        if (this.f15633f == 0) {
            w.d dVar = eVar.N;
            w.d dVar2 = eVar2.P;
            f i10 = i(dVar, 0);
            int e10 = dVar.e();
            w.e r10 = r();
            if (r10 != null) {
                e10 = r10.N.e();
            }
            if (i10 != null) {
                b(this.f15635h, i10, e10);
            }
            f i11 = i(dVar2, 0);
            int e11 = dVar2.e();
            w.e s10 = s();
            if (s10 != null) {
                e11 = s10.P.e();
            }
            if (i11 != null) {
                b(this.f15636i, i11, -e11);
            }
        } else {
            w.d dVar3 = eVar.O;
            w.d dVar4 = eVar2.Q;
            f i12 = i(dVar3, 1);
            int e12 = dVar3.e();
            w.e r11 = r();
            if (r11 != null) {
                e12 = r11.O.e();
            }
            if (i12 != null) {
                b(this.f15635h, i12, e12);
            }
            f i13 = i(dVar4, 1);
            int e13 = dVar4.e();
            w.e s11 = s();
            if (s11 != null) {
                e13 = s11.Q.e();
            }
            if (i13 != null) {
                b(this.f15636i, i13, -e13);
            }
        }
        this.f15635h.f15575a = this;
        this.f15636i.f15575a = this;
    }

    @Override // x.p
    public void e() {
        for (int i10 = 0; i10 < this.f15564k.size(); i10++) {
            this.f15564k.get(i10).e();
        }
    }

    @Override // x.p
    public void f() {
        this.f15630c = null;
        Iterator<p> it2 = this.f15564k.iterator();
        while (it2.hasNext()) {
            it2.next().f();
        }
    }

    @Override // x.p
    public long j() {
        int size = this.f15564k.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            j10 = j10 + r4.f15635h.f15580f + this.f15564k.get(i10).j() + r4.f15636i.f15580f;
        }
        return j10;
    }

    @Override // x.p
    public boolean m() {
        int size = this.f15564k.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.f15564k.get(i10).m()) {
                return false;
            }
        }
        return true;
    }

    public final void q() {
        w.e eVar;
        w.e eVar2 = this.f15629b;
        w.e J = eVar2.J(this.f15633f);
        while (true) {
            w.e eVar3 = J;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            } else {
                J = eVar2.J(this.f15633f);
            }
        }
        this.f15629b = eVar;
        this.f15564k.add(eVar.L(this.f15633f));
        w.e H = eVar.H(this.f15633f);
        while (H != null) {
            this.f15564k.add(H.L(this.f15633f));
            H = H.H(this.f15633f);
        }
        Iterator<p> it2 = this.f15564k.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            int i10 = this.f15633f;
            if (i10 == 0) {
                next.f15629b.f15161c = this;
            } else if (i10 == 1) {
                next.f15629b.f15163d = this;
            }
        }
        if ((this.f15633f == 0 && ((w.f) this.f15629b.I()).G1()) && this.f15564k.size() > 1) {
            ArrayList<p> arrayList = this.f15564k;
            this.f15629b = arrayList.get(arrayList.size() - 1).f15629b;
        }
        this.f15565l = this.f15633f == 0 ? this.f15629b.x() : this.f15629b.N();
    }

    public final w.e r() {
        for (int i10 = 0; i10 < this.f15564k.size(); i10++) {
            p pVar = this.f15564k.get(i10);
            if (pVar.f15629b.Q() != 8) {
                return pVar.f15629b;
            }
        }
        return null;
    }

    public final w.e s() {
        for (int size = this.f15564k.size() - 1; size >= 0; size--) {
            p pVar = this.f15564k.get(size);
            if (pVar.f15629b.Q() != 8) {
                return pVar.f15629b;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.f15633f == 0 ? "horizontal : " : "vertical : ");
        Iterator<p> it2 = this.f15564k.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            sb2.append("<");
            sb2.append(next);
            sb2.append("> ");
        }
        return sb2.toString();
    }
}
