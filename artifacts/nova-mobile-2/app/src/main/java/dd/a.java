package dd;

import cd.f;
import cd.s;
import cd.x;
import jc.l;

/* compiled from: Buffer.kt */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a */
    public static final byte[] f5801a = cd.b.a("0123456789abcdef");

    public static final f.a a(f fVar, f.a aVar) {
        l.f(fVar, "$this$commonReadAndWriteUnsafe");
        l.f(aVar, "unsafeCursor");
        if (aVar.f3908f == null) {
            aVar.f3908f = fVar;
            aVar.f3909g = true;
            return aVar;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    public static final byte[] b() {
        return f5801a;
    }

    public static final boolean c(x xVar, int i10, byte[] bArr, int i11, int i12) {
        l.f(xVar, "segment");
        l.f(bArr, "bytes");
        int i13 = xVar.f3956c;
        byte[] bArr2 = xVar.f3954a;
        while (i11 < i12) {
            if (i10 == i13) {
                xVar = xVar.f3959f;
                l.c(xVar);
                byte[] bArr3 = xVar.f3954a;
                bArr2 = bArr3;
                i10 = xVar.f3955b;
                i13 = xVar.f3956c;
            }
            if (bArr2[i10] != bArr[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    public static final String d(f fVar, long j10) {
        l.f(fVar, "$this$readUtf8Line");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (fVar.G(j11) == ((byte) 13)) {
                String K0 = fVar.K0(j11);
                fVar.a(2L);
                return K0;
            }
        }
        String K02 = fVar.K0(j10);
        fVar.a(1L);
        return K02;
    }

    public static final int e(f fVar, s sVar, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        x xVar;
        l.f(fVar, "$this$selectPrefix");
        l.f(sVar, "options");
        x xVar2 = fVar.f3906f;
        if (xVar2 == null) {
            return z10 ? -2 : -1;
        }
        byte[] bArr = xVar2.f3954a;
        int i14 = xVar2.f3955b;
        int i15 = xVar2.f3956c;
        int[] e10 = sVar.e();
        x xVar3 = xVar2;
        int i16 = 0;
        int i17 = -1;
        loop0: while (true) {
            int i18 = i16 + 1;
            int i19 = e10[i16];
            int i20 = i18 + 1;
            int i21 = e10[i18];
            if (i21 != -1) {
                i17 = i21;
            }
            if (xVar3 == null) {
                break;
            }
            if (i19 >= 0) {
                i10 = i14 + 1;
                int i22 = bArr[i14] & 255;
                int i23 = i20 + i19;
                while (i20 != i23) {
                    if (i22 == e10[i20]) {
                        i11 = e10[i20 + i19];
                        if (i10 == i15) {
                            xVar3 = xVar3.f3959f;
                            l.c(xVar3);
                            i10 = xVar3.f3955b;
                            bArr = xVar3.f3954a;
                            i15 = xVar3.f3956c;
                            if (xVar3 == xVar2) {
                                xVar3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i17;
            }
            int i24 = i20 + (i19 * (-1));
            while (true) {
                int i25 = i14 + 1;
                int i26 = i20 + 1;
                if ((bArr[i14] & 255) != e10[i20]) {
                    return i17;
                }
                boolean z11 = i26 == i24;
                if (i25 == i15) {
                    l.c(xVar3);
                    x xVar4 = xVar3.f3959f;
                    l.c(xVar4);
                    i13 = xVar4.f3955b;
                    byte[] bArr2 = xVar4.f3954a;
                    i12 = xVar4.f3956c;
                    if (xVar4 != xVar2) {
                        xVar = xVar4;
                        bArr = bArr2;
                    } else {
                        if (!z11) {
                            break loop0;
                        }
                        bArr = bArr2;
                        xVar = null;
                    }
                } else {
                    x xVar5 = xVar3;
                    i12 = i15;
                    i13 = i25;
                    xVar = xVar5;
                }
                if (z11) {
                    i11 = e10[i26];
                    i10 = i13;
                    i15 = i12;
                    xVar3 = xVar;
                    break;
                }
                i14 = i13;
                i15 = i12;
                i20 = i26;
                xVar3 = xVar;
            }
            if (i11 >= 0) {
                return i11;
            }
            i16 = -i11;
            i14 = i10;
        }
        if (z10) {
            return -2;
        }
        return i17;
    }

    public static /* synthetic */ int f(f fVar, s sVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return e(fVar, sVar, z10);
    }
}
