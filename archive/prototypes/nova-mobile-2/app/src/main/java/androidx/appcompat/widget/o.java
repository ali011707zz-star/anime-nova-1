package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: AppCompatImageHelper.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f1422a;

    /* renamed from: b, reason: collision with root package name */
    public t0 f1423b;

    /* renamed from: c, reason: collision with root package name */
    public t0 f1424c;

    /* renamed from: d, reason: collision with root package name */
    public t0 f1425d;

    /* renamed from: e, reason: collision with root package name */
    public int f1426e = 0;

    public o(ImageView imageView) {
        this.f1422a = imageView;
    }

    public final boolean a(Drawable drawable) {
        if (this.f1425d == null) {
            this.f1425d = new t0();
        }
        t0 t0Var = this.f1425d;
        t0Var.a();
        ColorStateList a10 = u0.f.a(this.f1422a);
        if (a10 != null) {
            t0Var.f1489d = true;
            t0Var.f1486a = a10;
        }
        PorterDuff.Mode b10 = u0.f.b(this.f1422a);
        if (b10 != null) {
            t0Var.f1488c = true;
            t0Var.f1487b = b10;
        }
        if (!t0Var.f1489d && !t0Var.f1488c) {
            return false;
        }
        j.i(drawable, t0Var, this.f1422a.getDrawableState());
        return true;
    }

    public void b() {
        if (this.f1422a.getDrawable() != null) {
            this.f1422a.getDrawable().setLevel(this.f1426e);
        }
    }

    public void c() {
        Drawable drawable = this.f1422a.getDrawable();
        if (drawable != null) {
            d0.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            t0 t0Var = this.f1424c;
            if (t0Var != null) {
                j.i(drawable, t0Var, this.f1422a.getDrawableState());
                return;
            }
            t0 t0Var2 = this.f1423b;
            if (t0Var2 != null) {
                j.i(drawable, t0Var2, this.f1422a.getDrawableState());
            }
        }
    }

    public ColorStateList d() {
        t0 t0Var = this.f1424c;
        if (t0Var != null) {
            return t0Var.f1486a;
        }
        return null;
    }

    public PorterDuff.Mode e() {
        t0 t0Var = this.f1424c;
        if (t0Var != null) {
            return t0Var.f1487b;
        }
        return null;
    }

    public boolean f() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1422a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i10) {
        int n10;
        Context context = this.f1422a.getContext();
        int[] iArr = d.j.P;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        ImageView imageView = this.f1422a;
        q0.b0.r0(imageView, imageView.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        try {
            Drawable drawable = this.f1422a.getDrawable();
            if (drawable == null && (n10 = v10.n(d.j.Q, -1)) != -1 && (drawable = f.a.b(this.f1422a.getContext(), n10)) != null) {
                this.f1422a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                d0.b(drawable);
            }
            int i11 = d.j.R;
            if (v10.s(i11)) {
                u0.f.c(this.f1422a, v10.c(i11));
            }
            int i12 = d.j.S;
            if (v10.s(i12)) {
                u0.f.d(this.f1422a, d0.e(v10.k(i12, -1), null));
            }
        } finally {
            v10.w();
        }
    }

    public void h(Drawable drawable) {
        this.f1426e = drawable.getLevel();
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable b10 = f.a.b(this.f1422a.getContext(), i10);
            if (b10 != null) {
                d0.b(b10);
            }
            this.f1422a.setImageDrawable(b10);
        } else {
            this.f1422a.setImageDrawable(null);
        }
        c();
    }

    public void j(ColorStateList colorStateList) {
        if (this.f1424c == null) {
            this.f1424c = new t0();
        }
        t0 t0Var = this.f1424c;
        t0Var.f1486a = colorStateList;
        t0Var.f1489d = true;
        c();
    }

    public void k(PorterDuff.Mode mode) {
        if (this.f1424c == null) {
            this.f1424c = new t0();
        }
        t0 t0Var = this.f1424c;
        t0Var.f1487b = mode;
        t0Var.f1488c = true;
        c();
    }

    public final boolean l() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 21 ? this.f1423b != null : i10 == 21;
    }
}
