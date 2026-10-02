package mb;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import q0.m0;

/* compiled from: Insetter.kt */
/* loaded from: classes.dex */
public final class e {
    public static final void d(View view, m0 m0Var, i iVar, l lVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (iVar.f()) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            if (iVar.c() != 0) {
                i10 = lVar.b() + m0Var.f(iVar.c()).f7152a;
            } else {
                i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            }
            if (iVar.e() != 0) {
                i11 = lVar.d() + m0Var.f(iVar.e()).f7153b;
            } else {
                i11 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            }
            if (iVar.d() != 0) {
                i12 = lVar.c() + m0Var.f(iVar.d()).f7154c;
            } else {
                i12 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }
            if (iVar.b() != 0) {
                i13 = lVar.a() + m0Var.f(iVar.b()).f7155d;
            } else {
                i13 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
            if (f.a((ViewGroup.MarginLayoutParams) layoutParams, i10, i11, i12, i13)) {
                view.setLayoutParams(layoutParams);
                if (Build.VERSION.SDK_INT < 26) {
                    view.getParent().requestLayout();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Margin window insets handling requested but View's LayoutParams do not extend MarginLayoutParams".toString());
    }

    public static final void e(View view, m0 m0Var, i iVar, l lVar) {
        int paddingLeft;
        int paddingTop;
        int paddingRight;
        int paddingBottom;
        if (iVar.f()) {
            return;
        }
        if (iVar.c() != 0) {
            paddingLeft = lVar.b() + m0Var.f(iVar.c()).f7152a;
        } else {
            paddingLeft = view.getPaddingLeft();
        }
        if (iVar.e() != 0) {
            paddingTop = lVar.d() + m0Var.f(iVar.e()).f7153b;
        } else {
            paddingTop = view.getPaddingTop();
        }
        if (iVar.d() != 0) {
            paddingRight = lVar.c() + m0Var.f(iVar.d()).f7154c;
        } else {
            paddingRight = view.getPaddingRight();
        }
        if (iVar.b() != 0) {
            paddingBottom = lVar.a() + m0Var.f(iVar.b()).f7155d;
        } else {
            paddingBottom = view.getPaddingBottom();
        }
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public static final m0.b f(m0.b bVar, int i10, m0 m0Var, i iVar) {
        if ((iVar.a() & i10) != i10) {
            return bVar;
        }
        h0.e f10 = m0Var.f(i10);
        jc.l.e(f10, "windowInsets.getInsets(type)");
        if (jc.l.a(f10, h0.e.f7151e)) {
            return bVar;
        }
        bVar.b(i10, h0.e.b((iVar.c() & i10) != 0 ? 0 : f10.f7152a, (iVar.e() & i10) != 0 ? 0 : f10.f7153b, (iVar.d() & i10) != 0 ? 0 : f10.f7154c, (iVar.b() & i10) == 0 ? f10.f7155d : 0));
        return bVar;
    }
}
