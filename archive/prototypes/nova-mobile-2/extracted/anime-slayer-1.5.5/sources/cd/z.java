package cd;

import java.security.MessageDigest;

/* compiled from: SegmentedByteString.kt */
/* loaded from: classes2.dex */
public final class z extends i {

    /* renamed from: k, reason: collision with root package name */
    public final transient byte[][] f3966k;

    /* renamed from: l, reason: collision with root package name */
    public final transient int[] f3967l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(byte[][] bArr, int[] iArr) {
        super(i.f3917i.i());
        jc.l.f(bArr, "segments");
        jc.l.f(iArr, "directory");
        this.f3966k = bArr;
        this.f3967l = iArr;
    }

    @Override // cd.i
    public i A() {
        return G().A();
    }

    @Override // cd.i
    public byte[] B() {
        byte[] bArr = new byte[y()];
        int length = F().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = E()[length + i10];
            int i14 = E()[i10];
            int i15 = i14 - i11;
            wb.h.c(F()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // cd.i
    public void D(f fVar, int i10, int i11) {
        jc.l.f(fVar, "buffer");
        int i12 = i10 + i11;
        int b10 = dd.c.b(this, i10);
        while (i10 < i12) {
            int i13 = b10 == 0 ? 0 : E()[b10 - 1];
            int i14 = E()[b10] - i13;
            int i15 = E()[F().length + b10];
            int min = Math.min(i12, i14 + i13) - i10;
            int i16 = i15 + (i10 - i13);
            x xVar = new x(F()[b10], i16, i16 + min, true, false);
            x xVar2 = fVar.f3906f;
            if (xVar2 == null) {
                xVar.f3960g = xVar;
                xVar.f3959f = xVar;
                fVar.f3906f = xVar;
            } else {
                jc.l.c(xVar2);
                x xVar3 = xVar2.f3960g;
                jc.l.c(xVar3);
                xVar3.c(xVar);
            }
            i10 += min;
            b10++;
        }
        fVar.M0(fVar.N0() + i11);
    }

    public final int[] E() {
        return this.f3967l;
    }

    public final byte[][] F() {
        return this.f3966k;
    }

    public final i G() {
        return new i(B());
    }

    @Override // cd.i
    public String a() {
        return G().a();
    }

    @Override // cd.i
    public i e(String str) {
        jc.l.f(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = F().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = E()[length + i10];
            int i13 = E()[i10];
            messageDigest.update(F()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] digest = messageDigest.digest();
        jc.l.e(digest, "digestBytes");
        return new i(digest);
    }

    @Override // cd.i
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (iVar.y() == y() && s(0, iVar, 0, y())) {
                return true;
            }
        }
        return false;
    }

    @Override // cd.i
    public int hashCode() {
        int j10 = j();
        if (j10 != 0) {
            return j10;
        }
        int length = F().length;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i10 < length) {
            int i13 = E()[length + i10];
            int i14 = E()[i10];
            byte[] bArr = F()[i10];
            int i15 = (i14 - i12) + i13;
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
        u(i11);
        return i11;
    }

    @Override // cd.i
    public int k() {
        return E()[F().length - 1];
    }

    @Override // cd.i
    public String m() {
        return G().m();
    }

    @Override // cd.i
    public byte[] n() {
        return B();
    }

    @Override // cd.i
    public byte o(int i10) {
        c.b(E()[F().length - 1], i10, 1L);
        int b10 = dd.c.b(this, i10);
        return F()[b10][(i10 - (b10 == 0 ? 0 : E()[b10 - 1])) + E()[F().length + b10]];
    }

    @Override // cd.i
    public boolean s(int i10, i iVar, int i11, int i12) {
        jc.l.f(iVar, "other");
        if (i10 < 0 || i10 > y() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int b10 = dd.c.b(this, i10);
        while (i10 < i13) {
            int i14 = b10 == 0 ? 0 : E()[b10 - 1];
            int i15 = E()[b10] - i14;
            int i16 = E()[F().length + b10];
            int min = Math.min(i13, i15 + i14) - i10;
            if (!iVar.t(i11, F()[b10], i16 + (i10 - i14), min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            b10++;
        }
        return true;
    }

    @Override // cd.i
    public boolean t(int i10, byte[] bArr, int i11, int i12) {
        jc.l.f(bArr, "other");
        if (i10 < 0 || i10 > y() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int b10 = dd.c.b(this, i10);
        while (i10 < i13) {
            int i14 = b10 == 0 ? 0 : E()[b10 - 1];
            int i15 = E()[b10] - i14;
            int i16 = E()[F().length + b10];
            int min = Math.min(i13, i15 + i14) - i10;
            if (!c.a(F()[b10], i16 + (i10 - i14), bArr, i11, min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            b10++;
        }
        return true;
    }

    @Override // cd.i
    public String toString() {
        return G().toString();
    }
}
