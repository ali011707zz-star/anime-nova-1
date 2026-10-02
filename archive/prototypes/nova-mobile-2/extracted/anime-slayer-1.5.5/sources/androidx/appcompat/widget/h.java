package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

/* compiled from: AppCompatCheckedTextViewHelper.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final CheckedTextView f1338a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f1339b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f1340c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1341d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1342e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1343f;

    public h(CheckedTextView checkedTextView) {
        this.f1338a = checkedTextView;
    }

    public void a() {
        Drawable a10 = u0.c.a(this.f1338a);
        if (a10 != null) {
            if (this.f1341d || this.f1342e) {
                Drawable mutate = i0.a.r(a10).mutate();
                if (this.f1341d) {
                    i0.a.o(mutate, this.f1339b);
                }
                if (this.f1342e) {
                    i0.a.p(mutate, this.f1340c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f1338a.getDrawableState());
                }
                this.f1338a.setCheckMarkDrawable(mutate);
            }
        }
    }

    public ColorStateList b() {
        return this.f1339b;
    }

    public PorterDuff.Mode c() {
        return this.f1340c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d A[Catch: all -> 0x0084, TRY_ENTER, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[Catch: all -> 0x0084, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071 A[Catch: all -> 0x0084, TRY_LEAVE, TryCatch #1 {all -> 0x0084, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:11:0x003d, B:13:0x0045, B:15:0x004b, B:16:0x0058, B:18:0x0060, B:19:0x0069, B:21:0x0071), top: B:2:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(AttributeSet attributeSet, int i10) {
        boolean z10;
        int i11;
        int i12;
        int n10;
        int n11;
        Context context = this.f1338a.getContext();
        int[] iArr = d.j.P0;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        CheckedTextView checkedTextView = this.f1338a;
        q0.b0.r0(checkedTextView, checkedTextView.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        try {
            int i13 = d.j.R0;
            if (v10.s(i13) && (n11 = v10.n(i13, 0)) != 0) {
                try {
                    CheckedTextView checkedTextView2 = this.f1338a;
                    checkedTextView2.setCheckMarkDrawable(f.a.b(checkedTextView2.getContext(), n11));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                }
                if (!z10) {
                    int i14 = d.j.Q0;
                    if (v10.s(i14) && (n10 = v10.n(i14, 0)) != 0) {
                        CheckedTextView checkedTextView3 = this.f1338a;
                        checkedTextView3.setCheckMarkDrawable(f.a.b(checkedTextView3.getContext(), n10));
                    }
                }
                i11 = d.j.S0;
                if (v10.s(i11)) {
                    u0.c.b(this.f1338a, v10.c(i11));
                }
                i12 = d.j.T0;
                if (v10.s(i12)) {
                    u0.c.c(this.f1338a, d0.e(v10.k(i12, -1), null));
                }
            }
            z10 = false;
            if (!z10) {
            }
            i11 = d.j.S0;
            if (v10.s(i11)) {
            }
            i12 = d.j.T0;
            if (v10.s(i12)) {
            }
        } finally {
            v10.w();
        }
    }

    public void e() {
        if (this.f1343f) {
            this.f1343f = false;
        } else {
            this.f1343f = true;
            a();
        }
    }

    public void f(ColorStateList colorStateList) {
        this.f1339b = colorStateList;
        this.f1341d = true;
        a();
    }

    public void g(PorterDuff.Mode mode) {
        this.f1340c = mode;
        this.f1342e = true;
        a();
    }
}
