package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* compiled from: AppCompatCompoundButtonHelper.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public final CompoundButton f1372a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f1373b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f1374c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1375d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1376e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1377f;

    public i(CompoundButton compoundButton) {
        this.f1372a = compoundButton;
    }

    public void a() {
        Drawable a10 = u0.d.a(this.f1372a);
        if (a10 != null) {
            if (this.f1375d || this.f1376e) {
                Drawable mutate = i0.a.r(a10).mutate();
                if (this.f1375d) {
                    i0.a.o(mutate, this.f1373b);
                }
                if (this.f1376e) {
                    i0.a.p(mutate, this.f1374c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f1372a.getDrawableState());
                }
                this.f1372a.setButtonDrawable(mutate);
            }
        }
    }

    public int b(int i10) {
        Drawable a10;
        return (Build.VERSION.SDK_INT >= 17 || (a10 = u0.d.a(this.f1372a)) == null) ? i10 : i10 + a10.getIntrinsicWidth();
    }

    public ColorStateList c() {
        return this.f1373b;
    }

    public PorterDuff.Mode d() {
        return this.f1374c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d A[Catch: all -> 0x0084, TRY_ENTER, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[Catch: all -> 0x0084, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071 A[Catch: all -> 0x0084, TRY_LEAVE, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e(AttributeSet attributeSet, int i10) {
        boolean z10;
        int i11;
        int i12;
        int n10;
        int n11;
        Context context = this.f1372a.getContext();
        int[] iArr = d.j.U0;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        CompoundButton compoundButton = this.f1372a;
        q0.b0.r0(compoundButton, compoundButton.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        try {
            int i13 = d.j.W0;
            if (v10.s(i13) && (n11 = v10.n(i13, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.f1372a;
                    compoundButton2.setButtonDrawable(f.a.b(compoundButton2.getContext(), n11));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                }
                if (!z10) {
                    int i14 = d.j.V0;
                    if (v10.s(i14) && (n10 = v10.n(i14, 0)) != 0) {
                        CompoundButton compoundButton3 = this.f1372a;
                        compoundButton3.setButtonDrawable(f.a.b(compoundButton3.getContext(), n10));
                    }
                }
                i11 = d.j.X0;
                if (v10.s(i11)) {
                    u0.d.c(this.f1372a, v10.c(i11));
                }
                i12 = d.j.Y0;
                if (v10.s(i12)) {
                    u0.d.d(this.f1372a, d0.e(v10.k(i12, -1), null));
                }
            }
            z10 = false;
            if (!z10) {
            }
            i11 = d.j.X0;
            if (v10.s(i11)) {
            }
            i12 = d.j.Y0;
            if (v10.s(i12)) {
            }
        } finally {
            v10.w();
        }
    }

    public void f() {
        if (this.f1377f) {
            this.f1377f = false;
        } else {
            this.f1377f = true;
            a();
        }
    }

    public void g(ColorStateList colorStateList) {
        this.f1373b = colorStateList;
        this.f1375d = true;
        a();
    }

    public void h(PorterDuff.Mode mode) {
        this.f1374c = mode;
        this.f1376e = true;
        a();
    }
}
