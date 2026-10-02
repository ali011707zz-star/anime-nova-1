package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: AppCompatBackgroundHelper.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final View f1301a;

    /* renamed from: d, reason: collision with root package name */
    public t0 f1304d;

    /* renamed from: e, reason: collision with root package name */
    public t0 f1305e;

    /* renamed from: f, reason: collision with root package name */
    public t0 f1306f;

    /* renamed from: c, reason: collision with root package name */
    public int f1303c = -1;

    /* renamed from: b, reason: collision with root package name */
    public final j f1302b = j.b();

    public e(View view) {
        this.f1301a = view;
    }

    public final boolean a(Drawable drawable) {
        if (this.f1306f == null) {
            this.f1306f = new t0();
        }
        t0 t0Var = this.f1306f;
        t0Var.a();
        ColorStateList u10 = q0.b0.u(this.f1301a);
        if (u10 != null) {
            t0Var.f1489d = true;
            t0Var.f1486a = u10;
        }
        PorterDuff.Mode v10 = q0.b0.v(this.f1301a);
        if (v10 != null) {
            t0Var.f1488c = true;
            t0Var.f1487b = v10;
        }
        if (!t0Var.f1489d && !t0Var.f1488c) {
            return false;
        }
        j.i(drawable, t0Var, this.f1301a.getDrawableState());
        return true;
    }

    public void b() {
        Drawable background = this.f1301a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            t0 t0Var = this.f1305e;
            if (t0Var != null) {
                j.i(background, t0Var, this.f1301a.getDrawableState());
                return;
            }
            t0 t0Var2 = this.f1304d;
            if (t0Var2 != null) {
                j.i(background, t0Var2, this.f1301a.getDrawableState());
            }
        }
    }

    public ColorStateList c() {
        t0 t0Var = this.f1305e;
        if (t0Var != null) {
            return t0Var.f1486a;
        }
        return null;
    }

    public PorterDuff.Mode d() {
        t0 t0Var = this.f1305e;
        if (t0Var != null) {
            return t0Var.f1487b;
        }
        return null;
    }

    public void e(AttributeSet attributeSet, int i10) {
        Context context = this.f1301a.getContext();
        int[] iArr = d.j.U3;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        View view = this.f1301a;
        q0.b0.r0(view, view.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        try {
            int i11 = d.j.V3;
            if (v10.s(i11)) {
                this.f1303c = v10.n(i11, -1);
                ColorStateList f10 = this.f1302b.f(this.f1301a.getContext(), this.f1303c);
                if (f10 != null) {
                    h(f10);
                }
            }
            int i12 = d.j.W3;
            if (v10.s(i12)) {
                q0.b0.y0(this.f1301a, v10.c(i12));
            }
            int i13 = d.j.X3;
            if (v10.s(i13)) {
                q0.b0.z0(this.f1301a, d0.e(v10.k(i13, -1), null));
            }
        } finally {
            v10.w();
        }
    }

    public void f(Drawable drawable) {
        this.f1303c = -1;
        h(null);
        b();
    }

    public void g(int i10) {
        this.f1303c = i10;
        j jVar = this.f1302b;
        h(jVar != null ? jVar.f(this.f1301a.getContext(), i10) : null);
        b();
    }

    public void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1304d == null) {
                this.f1304d = new t0();
            }
            t0 t0Var = this.f1304d;
            t0Var.f1486a = colorStateList;
            t0Var.f1489d = true;
        } else {
            this.f1304d = null;
        }
        b();
    }

    public void i(ColorStateList colorStateList) {
        if (this.f1305e == null) {
            this.f1305e = new t0();
        }
        t0 t0Var = this.f1305e;
        t0Var.f1486a = colorStateList;
        t0Var.f1489d = true;
        b();
    }

    public void j(PorterDuff.Mode mode) {
        if (this.f1305e == null) {
            this.f1305e = new t0();
        }
        t0 t0Var = this.f1305e;
        t0Var.f1487b = mode;
        t0Var.f1488c = true;
        b();
    }

    public final boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 21 ? this.f1304d != null : i10 == 21;
    }
}
