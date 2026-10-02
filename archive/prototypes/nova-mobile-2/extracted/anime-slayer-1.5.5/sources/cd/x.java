package cd;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* compiled from: Segment.kt */
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: h, reason: collision with root package name */
    public static final a f3953h = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3954a;

    /* renamed from: b, reason: collision with root package name */
    public int f3955b;

    /* renamed from: c, reason: collision with root package name */
    public int f3956c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3957d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3958e;

    /* renamed from: f, reason: collision with root package name */
    public x f3959f;

    /* renamed from: g, reason: collision with root package name */
    public x f3960g;

    /* compiled from: Segment.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public x() {
        this.f3954a = new byte[RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        this.f3958e = true;
        this.f3957d = false;
    }

    public final void a() {
        x xVar = this.f3960g;
        int i10 = 0;
        if (xVar != this) {
            jc.l.c(xVar);
            if (xVar.f3958e) {
                int i11 = this.f3956c - this.f3955b;
                x xVar2 = this.f3960g;
                jc.l.c(xVar2);
                int i12 = 8192 - xVar2.f3956c;
                x xVar3 = this.f3960g;
                jc.l.c(xVar3);
                if (!xVar3.f3957d) {
                    x xVar4 = this.f3960g;
                    jc.l.c(xVar4);
                    i10 = xVar4.f3955b;
                }
                if (i11 > i12 + i10) {
                    return;
                }
                x xVar5 = this.f3960g;
                jc.l.c(xVar5);
                g(xVar5, i11);
                b();
                y.b(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("cannot compact".toString());
    }

    public final x b() {
        x xVar = this.f3959f;
        if (xVar == this) {
            xVar = null;
        }
        x xVar2 = this.f3960g;
        jc.l.c(xVar2);
        xVar2.f3959f = this.f3959f;
        x xVar3 = this.f3959f;
        jc.l.c(xVar3);
        xVar3.f3960g = this.f3960g;
        this.f3959f = null;
        this.f3960g = null;
        return xVar;
    }

    public final x c(x xVar) {
        jc.l.f(xVar, "segment");
        xVar.f3960g = this;
        xVar.f3959f = this.f3959f;
        x xVar2 = this.f3959f;
        jc.l.c(xVar2);
        xVar2.f3960g = xVar;
        this.f3959f = xVar;
        return xVar;
    }

    public final x d() {
        this.f3957d = true;
        return new x(this.f3954a, this.f3955b, this.f3956c, true, false);
    }

    public final x e(int i10) {
        x c10;
        if (i10 > 0 && i10 <= this.f3956c - this.f3955b) {
            if (i10 >= 1024) {
                c10 = d();
            } else {
                c10 = y.c();
                byte[] bArr = this.f3954a;
                byte[] bArr2 = c10.f3954a;
                int i11 = this.f3955b;
                wb.h.e(bArr, bArr2, 0, i11, i11 + i10, 2, null);
            }
            c10.f3956c = c10.f3955b + i10;
            this.f3955b += i10;
            x xVar = this.f3960g;
            jc.l.c(xVar);
            xVar.c(c10);
            return c10;
        }
        throw new IllegalArgumentException("byteCount out of range".toString());
    }

    public final x f() {
        byte[] bArr = this.f3954a;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        jc.l.e(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new x(copyOf, this.f3955b, this.f3956c, false, true);
    }

    public final void g(x xVar, int i10) {
        jc.l.f(xVar, "sink");
        if (xVar.f3958e) {
            int i11 = xVar.f3956c;
            if (i11 + i10 > 8192) {
                if (!xVar.f3957d) {
                    int i12 = xVar.f3955b;
                    if ((i11 + i10) - i12 <= 8192) {
                        byte[] bArr = xVar.f3954a;
                        wb.h.e(bArr, bArr, 0, i12, i11, 2, null);
                        xVar.f3956c -= xVar.f3955b;
                        xVar.f3955b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f3954a;
            byte[] bArr3 = xVar.f3954a;
            int i13 = xVar.f3956c;
            int i14 = this.f3955b;
            wb.h.c(bArr2, bArr3, i13, i14, i14 + i10);
            xVar.f3956c += i10;
            this.f3955b += i10;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    public x(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        jc.l.f(bArr, "data");
        this.f3954a = bArr;
        this.f3955b = i10;
        this.f3956c = i11;
        this.f3957d = z10;
        this.f3958e = z11;
    }
}
