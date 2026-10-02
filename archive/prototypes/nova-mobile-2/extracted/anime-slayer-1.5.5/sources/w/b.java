package w;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import w.e;

/* compiled from: Chain.java */
/* loaded from: classes.dex */
public class b {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        if (r8 == 2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0044, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0042, code lost:
    
        if (r8 == 2) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x026d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x052d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:168:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x03b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03bb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01c0  */
    /* JADX WARN: Type inference failed for: r1v42, types: [w.e] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [w.e] */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(f fVar, t.d dVar, int i10, int i11, c cVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        ArrayList<e> arrayList;
        e eVar;
        d dVar2;
        d dVar3;
        d dVar4;
        int i12;
        e eVar2;
        int i13;
        e eVar3;
        d dVar5;
        t.i iVar;
        t.i iVar2;
        e eVar4;
        d dVar6;
        e eVar5;
        t.i iVar3;
        e eVar6;
        e eVar7;
        t.i iVar4;
        float f10;
        int size;
        int i14;
        ArrayList<e> arrayList2;
        int i15;
        boolean z13;
        boolean z14;
        e eVar8;
        e eVar9;
        int i16;
        int i17 = i10;
        e eVar10 = cVar.f15115a;
        e eVar11 = cVar.f15117c;
        e eVar12 = cVar.f15116b;
        e eVar13 = cVar.f15118d;
        e eVar14 = cVar.f15119e;
        float f11 = cVar.f15125k;
        boolean z15 = fVar.Y[i17] == e.b.WRAP_CONTENT;
        if (i17 == 0) {
            int i18 = eVar14.f15204x0;
            z10 = i18 == 0;
            z11 = i18 == 1;
        } else {
            int i19 = eVar14.f15206y0;
            z10 = i19 == 0;
            z11 = i19 == 1;
        }
        ?? r72 = eVar10;
        boolean z16 = false;
        while (true) {
            if (z16) {
                break;
            }
            d dVar7 = r72.V[i11];
            int i20 = z12 ? 1 : 4;
            int e10 = dVar7.e();
            float f12 = f11;
            e.b bVar = r72.Y[i17];
            boolean z17 = z16;
            e.b bVar2 = e.b.MATCH_CONSTRAINT;
            if (bVar == bVar2 && r72.f15203x[i17] == 0) {
                z13 = z10;
                z14 = true;
            } else {
                z13 = z10;
                z14 = false;
            }
            d dVar8 = dVar7.f15142f;
            if (dVar8 != null && r72 != eVar10) {
                e10 += dVar8.e();
            }
            int i21 = e10;
            if (!z12 || r72 == eVar10 || r72 == eVar12) {
                eVar8 = eVar14;
            } else {
                eVar8 = eVar14;
                i20 = 8;
            }
            d dVar9 = dVar7.f15142f;
            if (dVar9 != null) {
                if (r72 == eVar12) {
                    eVar9 = eVar10;
                    dVar.h(dVar7.f15145i, dVar9.f15145i, i21, 6);
                } else {
                    eVar9 = eVar10;
                    dVar.h(dVar7.f15145i, dVar9.f15145i, i21, 8);
                }
                if (z14 && !z12) {
                    i20 = 5;
                }
                dVar.e(dVar7.f15145i, dVar7.f15142f.f15145i, i21, (r72 == eVar12 && z12 && r72.c0(i17)) ? 5 : i20);
            } else {
                eVar9 = eVar10;
            }
            if (z15) {
                if (r72.Q() == 8 || r72.Y[i17] != bVar2) {
                    i16 = 0;
                } else {
                    d[] dVarArr = r72.V;
                    i16 = 0;
                    dVar.h(dVarArr[i11 + 1].f15145i, dVarArr[i11].f15145i, 0, 5);
                }
                dVar.h(r72.V[i11].f15145i, fVar.V[i11].f15145i, i16, 8);
            }
            d dVar10 = r72.V[i11 + 1].f15142f;
            if (dVar10 != null) {
                ?? r12 = dVar10.f15140d;
                d[] dVarArr2 = r12.V;
                if (dVarArr2[i11].f15142f != null && dVarArr2[i11].f15142f.f15140d == r72) {
                    r22 = r12;
                }
            }
            if (r22 != null) {
                r72 = r22;
                z16 = z17;
            } else {
                z16 = true;
            }
            eVar14 = eVar8;
            f11 = f12;
            z10 = z13;
            eVar10 = eVar9;
            r72 = r72;
        }
        e eVar15 = eVar14;
        float f13 = f11;
        e eVar16 = eVar10;
        boolean z18 = z10;
        if (eVar13 != null) {
            int i22 = i11 + 1;
            if (eVar11.V[i22].f15142f != null) {
                d dVar11 = eVar13.V[i22];
                if ((eVar13.Y[i17] == e.b.MATCH_CONSTRAINT && eVar13.f15203x[i17] == 0) && !z12) {
                    d dVar12 = dVar11.f15142f;
                    if (dVar12.f15140d == fVar) {
                        dVar.e(dVar11.f15145i, dVar12.f15145i, -dVar11.e(), 5);
                        dVar.j(dVar11.f15145i, eVar11.V[i22].f15142f.f15145i, -dVar11.e(), 6);
                        if (z15) {
                            int i23 = i11 + 1;
                            t.i iVar5 = fVar.V[i23].f15145i;
                            d[] dVarArr3 = eVar11.V;
                            dVar.h(iVar5, dVarArr3[i23].f15145i, dVarArr3[i23].e(), 8);
                        }
                        arrayList = cVar.f15122h;
                        if (arrayList != null && (size = arrayList.size()) > 1) {
                            float f14 = (cVar.f15132r || cVar.f15134t) ? f13 : cVar.f15124j;
                            float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            e eVar17 = null;
                            i14 = 0;
                            float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            while (i14 < size) {
                                e eVar18 = arrayList.get(i14);
                                float f17 = eVar18.B0[i17];
                                if (f17 < f15) {
                                    if (cVar.f15134t) {
                                        d[] dVarArr4 = eVar18.V;
                                        dVar.e(dVarArr4[i11 + 1].f15145i, dVarArr4[i11].f15145i, 0, 4);
                                        arrayList2 = arrayList;
                                        i15 = size;
                                        i14++;
                                        size = i15;
                                        arrayList = arrayList2;
                                        f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                    } else {
                                        f17 = 1.0f;
                                        f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                    }
                                }
                                if (f17 == f15) {
                                    d[] dVarArr5 = eVar18.V;
                                    dVar.e(dVarArr5[i11 + 1].f15145i, dVarArr5[i11].f15145i, 0, 8);
                                    arrayList2 = arrayList;
                                    i15 = size;
                                    i14++;
                                    size = i15;
                                    arrayList = arrayList2;
                                    f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                } else {
                                    if (eVar17 != null) {
                                        d[] dVarArr6 = eVar17.V;
                                        t.i iVar6 = dVarArr6[i11].f15145i;
                                        int i24 = i11 + 1;
                                        t.i iVar7 = dVarArr6[i24].f15145i;
                                        d[] dVarArr7 = eVar18.V;
                                        arrayList2 = arrayList;
                                        t.i iVar8 = dVarArr7[i11].f15145i;
                                        t.i iVar9 = dVarArr7[i24].f15145i;
                                        i15 = size;
                                        t.b r10 = dVar.r();
                                        r10.l(f16, f14, f17, iVar6, iVar7, iVar8, iVar9);
                                        dVar.d(r10);
                                    } else {
                                        arrayList2 = arrayList;
                                        i15 = size;
                                    }
                                    f16 = f17;
                                    eVar17 = eVar18;
                                    i14++;
                                    size = i15;
                                    arrayList = arrayList2;
                                    f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                }
                            }
                        }
                        if (eVar12 == null && (eVar12 == eVar13 || z12)) {
                            d dVar13 = eVar16.V[i11];
                            int i25 = i11 + 1;
                            d dVar14 = eVar11.V[i25];
                            d dVar15 = dVar13.f15142f;
                            t.i iVar10 = dVar15 != null ? dVar15.f15145i : null;
                            d dVar16 = dVar14.f15142f;
                            t.i iVar11 = dVar16 != null ? dVar16.f15145i : null;
                            d dVar17 = eVar12.V[i11];
                            if (eVar13 != null) {
                                dVar14 = eVar13.V[i25];
                            }
                            if (iVar10 != null && iVar11 != null) {
                                if (i17 == 0) {
                                    f10 = eVar15.f15184n0;
                                } else {
                                    f10 = eVar15.f15186o0;
                                }
                                dVar.c(dVar17.f15145i, iVar10, dVar17.e(), f10, iVar11, dVar14.f15145i, dVar14.e(), 7);
                            }
                        } else if (z18 || eVar12 == null) {
                            int i26 = 8;
                            if (z11 && eVar12 != null) {
                                int i27 = cVar.f15124j;
                                boolean z19 = i27 <= 0 && cVar.f15123i == i27;
                                e eVar19 = eVar12;
                                eVar = eVar19;
                                while (eVar != null) {
                                    e eVar20 = eVar.D0[i17];
                                    while (eVar20 != null && eVar20.Q() == i26) {
                                        eVar20 = eVar20.D0[i17];
                                    }
                                    if (eVar == eVar12 || eVar == eVar13 || eVar20 == null) {
                                        eVar2 = eVar19;
                                        i13 = 8;
                                    } else {
                                        e eVar21 = eVar20 == eVar13 ? null : eVar20;
                                        d dVar18 = eVar.V[i11];
                                        t.i iVar12 = dVar18.f15145i;
                                        d dVar19 = dVar18.f15142f;
                                        if (dVar19 != null) {
                                            t.i iVar13 = dVar19.f15145i;
                                        }
                                        int i28 = i11 + 1;
                                        t.i iVar14 = eVar19.V[i28].f15145i;
                                        int e11 = dVar18.e();
                                        int e12 = eVar.V[i28].e();
                                        if (eVar21 != null) {
                                            dVar5 = eVar21.V[i11];
                                            t.i iVar15 = dVar5.f15145i;
                                            eVar3 = eVar21;
                                            d dVar20 = dVar5.f15142f;
                                            iVar2 = dVar20 != null ? dVar20.f15145i : null;
                                            iVar = iVar15;
                                        } else {
                                            eVar3 = eVar21;
                                            dVar5 = eVar13.V[i11];
                                            iVar = dVar5 != null ? dVar5.f15145i : null;
                                            iVar2 = eVar.V[i28].f15145i;
                                        }
                                        if (dVar5 != null) {
                                            e12 += dVar5.e();
                                        }
                                        int i29 = e12;
                                        int e13 = eVar19.V[i28].e() + e11;
                                        int i30 = z19 ? 8 : 4;
                                        if (iVar12 == null || iVar14 == null || iVar == null || iVar2 == null) {
                                            eVar4 = eVar3;
                                            eVar2 = eVar19;
                                            i13 = 8;
                                        } else {
                                            eVar4 = eVar3;
                                            eVar2 = eVar19;
                                            i13 = 8;
                                            dVar.c(iVar12, iVar14, e13, 0.5f, iVar, iVar2, i29, i30);
                                        }
                                        eVar20 = eVar4;
                                    }
                                    eVar19 = eVar.Q() != i13 ? eVar : eVar2;
                                    i17 = i10;
                                    eVar = eVar20;
                                    i26 = 8;
                                }
                                d dVar21 = eVar12.V[i11];
                                dVar2 = eVar16.V[i11].f15142f;
                                int i31 = i11 + 1;
                                dVar3 = eVar13.V[i31];
                                dVar4 = eVar11.V[i31].f15142f;
                                if (dVar2 != null) {
                                    i12 = 5;
                                } else if (eVar12 != eVar13) {
                                    i12 = 5;
                                    dVar.e(dVar21.f15145i, dVar2.f15145i, dVar21.e(), 5);
                                } else {
                                    i12 = 5;
                                    if (dVar4 != null) {
                                        dVar.c(dVar21.f15145i, dVar2.f15145i, dVar21.e(), 0.5f, dVar3.f15145i, dVar4.f15145i, dVar3.e(), 5);
                                    }
                                }
                                if (dVar4 != null && eVar12 != eVar13) {
                                    dVar.e(dVar3.f15145i, dVar4.f15145i, -dVar3.e(), i12);
                                }
                            }
                        } else {
                            int i32 = cVar.f15124j;
                            boolean z20 = i32 > 0 && cVar.f15123i == i32;
                            e eVar22 = eVar12;
                            e eVar23 = eVar22;
                            while (eVar23 != null) {
                                e eVar24 = eVar23.D0[i17];
                                while (eVar24 != null && eVar24.Q() == 8) {
                                    eVar24 = eVar24.D0[i17];
                                }
                                if (eVar24 != null || eVar23 == eVar13) {
                                    d dVar22 = eVar23.V[i11];
                                    t.i iVar16 = dVar22.f15145i;
                                    d dVar23 = dVar22.f15142f;
                                    t.i iVar17 = dVar23 != null ? dVar23.f15145i : null;
                                    if (eVar22 != eVar23) {
                                        iVar17 = eVar22.V[i11 + 1].f15145i;
                                    } else if (eVar23 == eVar12) {
                                        d[] dVarArr8 = eVar16.V;
                                        iVar17 = dVarArr8[i11].f15142f != null ? dVarArr8[i11].f15142f.f15145i : null;
                                    }
                                    int e14 = dVar22.e();
                                    int i33 = i11 + 1;
                                    int e15 = eVar23.V[i33].e();
                                    if (eVar24 != null) {
                                        dVar6 = eVar24.V[i11];
                                        iVar3 = dVar6.f15145i;
                                    } else {
                                        dVar6 = eVar11.V[i33].f15142f;
                                        if (dVar6 != null) {
                                            iVar3 = dVar6.f15145i;
                                        } else {
                                            eVar5 = eVar24;
                                            iVar3 = null;
                                            t.i iVar18 = eVar23.V[i33].f15145i;
                                            if (dVar6 != null) {
                                                e15 += dVar6.e();
                                            }
                                            int e16 = e14 + eVar22.V[i33].e();
                                            if (iVar16 != null || iVar17 == null || iVar3 == null || iVar18 == null) {
                                                eVar6 = eVar5;
                                            } else {
                                                if (eVar23 == eVar12) {
                                                    e16 = eVar12.V[i11].e();
                                                }
                                                int i34 = e16;
                                                eVar6 = eVar5;
                                                eVar7 = eVar22;
                                                dVar.c(iVar16, iVar17, i34, 0.5f, iVar3, iVar18, eVar23 == eVar13 ? eVar13.V[i33].e() : e15, z20 ? 8 : 5);
                                                if (eVar23.Q() != 8) {
                                                    eVar23 = eVar7;
                                                }
                                                eVar22 = eVar23;
                                                eVar23 = eVar6;
                                            }
                                        }
                                    }
                                    eVar5 = eVar24;
                                    t.i iVar182 = eVar23.V[i33].f15145i;
                                    if (dVar6 != null) {
                                    }
                                    int e162 = e14 + eVar22.V[i33].e();
                                    if (iVar16 != null) {
                                    }
                                    eVar6 = eVar5;
                                } else {
                                    eVar6 = eVar24;
                                }
                                eVar7 = eVar22;
                                if (eVar23.Q() != 8) {
                                }
                                eVar22 = eVar23;
                                eVar23 = eVar6;
                            }
                        }
                        if ((z18 && !z11) || eVar12 == null || eVar12 == eVar13) {
                            return;
                        }
                        d[] dVarArr9 = eVar12.V;
                        d dVar24 = dVarArr9[i11];
                        if (eVar13 == null) {
                            eVar13 = eVar12;
                        }
                        int i35 = i11 + 1;
                        d dVar25 = eVar13.V[i35];
                        d dVar26 = dVar24.f15142f;
                        iVar4 = dVar26 != null ? dVar26.f15145i : null;
                        d dVar27 = dVar25.f15142f;
                        t.i iVar19 = dVar27 != null ? dVar27.f15145i : null;
                        if (eVar11 != eVar13) {
                            d dVar28 = eVar11.V[i35].f15142f;
                            iVar19 = dVar28 != null ? dVar28.f15145i : null;
                        }
                        if (eVar12 == eVar13) {
                            dVar24 = dVarArr9[i11];
                            dVar25 = dVarArr9[i35];
                        }
                        if (iVar4 == null || iVar19 == null) {
                            return;
                        }
                        dVar.c(dVar24.f15145i, iVar4, dVar24.e(), 0.5f, iVar19, dVar25.f15145i, eVar13.V[i35].e(), 5);
                        return;
                    }
                }
                if (z12) {
                    d dVar29 = dVar11.f15142f;
                    if (dVar29.f15140d == fVar) {
                        dVar.e(dVar11.f15145i, dVar29.f15145i, -dVar11.e(), 4);
                    }
                }
                dVar.j(dVar11.f15145i, eVar11.V[i22].f15142f.f15145i, -dVar11.e(), 6);
                if (z15) {
                }
                arrayList = cVar.f15122h;
                if (arrayList != null) {
                    if (cVar.f15132r) {
                    }
                    float f152 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    e eVar172 = null;
                    i14 = 0;
                    float f162 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    while (i14 < size) {
                    }
                }
                if (eVar12 == null) {
                }
                if (z18) {
                }
                int i262 = 8;
                if (z11) {
                    int i272 = cVar.f15124j;
                    if (i272 <= 0) {
                    }
                    e eVar192 = eVar12;
                    eVar = eVar192;
                    while (eVar != null) {
                    }
                    d dVar212 = eVar12.V[i11];
                    dVar2 = eVar16.V[i11].f15142f;
                    int i312 = i11 + 1;
                    dVar3 = eVar13.V[i312];
                    dVar4 = eVar11.V[i312].f15142f;
                    if (dVar2 != null) {
                    }
                    if (dVar4 != null) {
                        dVar.e(dVar3.f15145i, dVar4.f15145i, -dVar3.e(), i12);
                    }
                }
                if (z18) {
                }
                d[] dVarArr92 = eVar12.V;
                d dVar242 = dVarArr92[i11];
                if (eVar13 == null) {
                }
                int i352 = i11 + 1;
                d dVar252 = eVar13.V[i352];
                d dVar262 = dVar242.f15142f;
                if (dVar262 != null) {
                }
                d dVar272 = dVar252.f15142f;
                if (dVar272 != null) {
                }
                if (eVar11 != eVar13) {
                }
                if (eVar12 == eVar13) {
                }
                if (iVar4 == null) {
                    return;
                } else {
                    return;
                }
            }
        }
        if (z15) {
        }
        arrayList = cVar.f15122h;
        if (arrayList != null) {
        }
        if (eVar12 == null) {
        }
        if (z18) {
        }
        int i2622 = 8;
        if (z11) {
        }
        if (z18) {
        }
        d[] dVarArr922 = eVar12.V;
        d dVar2422 = dVarArr922[i11];
        if (eVar13 == null) {
        }
        int i3522 = i11 + 1;
        d dVar2522 = eVar13.V[i3522];
        d dVar2622 = dVar2422.f15142f;
        if (dVar2622 != null) {
        }
        d dVar2722 = dVar2522.f15142f;
        if (dVar2722 != null) {
        }
        if (eVar11 != eVar13) {
        }
        if (eVar12 == eVar13) {
        }
        if (iVar4 == null) {
        }
    }

    public static void b(f fVar, t.d dVar, ArrayList<e> arrayList, int i10) {
        c[] cVarArr;
        int i11;
        int i12;
        if (i10 == 0) {
            i11 = fVar.U0;
            cVarArr = fVar.X0;
            i12 = 0;
        } else {
            int i13 = fVar.V0;
            cVarArr = fVar.W0;
            i11 = i13;
            i12 = 2;
        }
        for (int i14 = 0; i14 < i11; i14++) {
            c cVar = cVarArr[i14];
            cVar.a();
            if (arrayList == null || arrayList.contains(cVar.f15115a)) {
                a(fVar, dVar, i10, i12, cVar);
            }
        }
    }
}
