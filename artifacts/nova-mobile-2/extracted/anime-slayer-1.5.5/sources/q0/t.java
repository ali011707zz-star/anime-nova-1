package q0;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: NestedScrollingParentHelper.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public int f12406a;

    /* renamed from: b, reason: collision with root package name */
    public int f12407b;

    public t(ViewGroup viewGroup) {
    }

    public int a() {
        return this.f12406a | this.f12407b;
    }

    public void b(View view, View view2, int i10) {
        c(view, view2, i10, 0);
    }

    public void c(View view, View view2, int i10, int i11) {
        if (i11 == 1) {
            this.f12407b = i10;
        } else {
            this.f12406a = i10;
        }
    }

    public void d(View view) {
        e(view, 0);
    }

    public void e(View view, int i10) {
        if (i10 == 1) {
            this.f12407b = 0;
        } else {
            this.f12406a = 0;
        }
    }
}
