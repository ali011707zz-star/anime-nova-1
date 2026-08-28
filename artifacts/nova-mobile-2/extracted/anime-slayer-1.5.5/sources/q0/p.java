package q0;

import android.view.View;
import android.view.ViewParent;

/* compiled from: NestedScrollingChildHelper.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f12401a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f12402b;

    /* renamed from: c, reason: collision with root package name */
    public final View f12403c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12404d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f12405e;

    public p(View view) {
        this.f12403c = view;
    }

    public boolean a(float f10, float f11, boolean z10) {
        ViewParent i10;
        if (!m() || (i10 = i(0)) == null) {
            return false;
        }
        return f0.a(i10, this.f12403c, f10, f11, z10);
    }

    public boolean b(float f10, float f11) {
        ViewParent i10;
        if (!m() || (i10 = i(0)) == null) {
            return false;
        }
        return f0.b(i10, this.f12403c, f10, f11);
    }

    public boolean c(int i10, int i11, int[] iArr, int[] iArr2) {
        return d(i10, i11, iArr, iArr2, 0);
    }

    public boolean d(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        ViewParent i13;
        int i14;
        int i15;
        if (!m() || (i13 = i(i12)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f12403c.getLocationInWindow(iArr2);
            i14 = iArr2[0];
            i15 = iArr2[1];
        } else {
            i14 = 0;
            i15 = 0;
        }
        if (iArr == null) {
            iArr = j();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        f0.c(i13, this.f12403c, i10, i11, iArr, i12);
        if (iArr2 != null) {
            this.f12403c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i14;
            iArr2[1] = iArr2[1] - i15;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public void e(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        h(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public boolean f(int i10, int i11, int i12, int i13, int[] iArr) {
        return h(i10, i11, i12, i13, iArr, 0, null);
    }

    public boolean g(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return h(i10, i11, i12, i13, iArr, i14, null);
    }

    public final boolean h(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        ViewParent i15;
        int i16;
        int i17;
        int[] iArr3;
        if (!m() || (i15 = i(i14)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f12403c.getLocationInWindow(iArr);
            i16 = iArr[0];
            i17 = iArr[1];
        } else {
            i16 = 0;
            i17 = 0;
        }
        if (iArr2 == null) {
            int[] j10 = j();
            j10[0] = 0;
            j10[1] = 0;
            iArr3 = j10;
        } else {
            iArr3 = iArr2;
        }
        f0.d(i15, this.f12403c, i10, i11, i12, i13, i14, iArr3);
        if (iArr != null) {
            this.f12403c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i16;
            iArr[1] = iArr[1] - i17;
        }
        return true;
    }

    public final ViewParent i(int i10) {
        if (i10 == 0) {
            return this.f12401a;
        }
        if (i10 != 1) {
            return null;
        }
        return this.f12402b;
    }

    public final int[] j() {
        if (this.f12405e == null) {
            this.f12405e = new int[2];
        }
        return this.f12405e;
    }

    public boolean k() {
        return l(0);
    }

    public boolean l(int i10) {
        return i(i10) != null;
    }

    public boolean m() {
        return this.f12404d;
    }

    public void n(boolean z10) {
        if (this.f12404d) {
            b0.U0(this.f12403c);
        }
        this.f12404d = z10;
    }

    public final void o(int i10, ViewParent viewParent) {
        if (i10 == 0) {
            this.f12401a = viewParent;
        } else {
            if (i10 != 1) {
                return;
            }
            this.f12402b = viewParent;
        }
    }

    public boolean p(int i10) {
        return q(i10, 0);
    }

    public boolean q(int i10, int i11) {
        if (l(i11)) {
            return true;
        }
        if (!m()) {
            return false;
        }
        View view = this.f12403c;
        for (ViewParent parent = this.f12403c.getParent(); parent != null; parent = parent.getParent()) {
            if (f0.f(parent, view, this.f12403c, i10, i11)) {
                o(i11, parent);
                f0.e(parent, view, this.f12403c, i10, i11);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public void r() {
        s(0);
    }

    public void s(int i10) {
        ViewParent i11 = i(i10);
        if (i11 != null) {
            f0.g(i11, this.f12403c, i10);
            o(i10, null);
        }
    }
}
