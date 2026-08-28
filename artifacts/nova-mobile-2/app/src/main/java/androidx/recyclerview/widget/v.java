package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ScrollbarHelper.java */
/* loaded from: classes.dex */
public class v {
    public static int a(RecyclerView.b0 b0Var, s sVar, View view, View view2, RecyclerView.p pVar, boolean z10) {
        if (pVar.getChildCount() == 0 || b0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1;
        }
        return Math.min(sVar.n(), sVar.d(view2) - sVar.g(view));
    }

    public static int b(RecyclerView.b0 b0Var, s sVar, View view, View view2, RecyclerView.p pVar, boolean z10, boolean z11) {
        int max;
        if (pVar.getChildCount() == 0 || b0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(pVar.getPosition(view), pVar.getPosition(view2));
        int max2 = Math.max(pVar.getPosition(view), pVar.getPosition(view2));
        if (z11) {
            max = Math.max(0, (b0Var.b() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z10) {
            return max;
        }
        return Math.round((max * (Math.abs(sVar.d(view2) - sVar.g(view)) / (Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1))) + (sVar.m() - sVar.g(view)));
    }

    public static int c(RecyclerView.b0 b0Var, s sVar, View view, View view2, RecyclerView.p pVar, boolean z10) {
        if (pVar.getChildCount() == 0 || b0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return b0Var.b();
        }
        return (int) (((sVar.d(view2) - sVar.g(view)) / (Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1)) * b0Var.b());
    }
}
