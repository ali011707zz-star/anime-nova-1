package l7;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.view.TouchDelegate;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.anslayer.R;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class p {
    public static final void b(RecyclerView recyclerView) {
        jc.l.f(recyclerView, "<this>");
        d dVar = new d();
        recyclerView.addOnItemTouchListener(dVar);
        recyclerView.addOnScrollListener(dVar);
    }

    public static final void c(final View view, int i10) {
        jc.l.f(view, "<this>");
        final int g10 = k7.b.g(i10);
        Object parent = view.getParent();
        if (parent != null) {
            final View view2 = (View) parent;
            view2.post(new Runnable() { // from class: l7.h
                @Override // java.lang.Runnable
                public final void run() {
                    p.d(view, g10, view2);
                }
            });
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.View");
    }

    public static final void d(View view, int i10, View view2) {
        jc.l.f(view, "$this_increaseTapArea");
        jc.l.f(view2, "$parent");
        Rect rect = new Rect();
        view.getHitRect(rect);
        int i11 = -i10;
        rect.inset(i11, i11);
        TouchDelegate touchDelegate = view2.getTouchDelegate();
        g gVar = touchDelegate instanceof g ? (g) touchDelegate : null;
        if (gVar == null) {
            gVar = new g(view);
        }
        gVar.a(new TouchDelegate(rect, view));
        view2.setTouchDelegate(gVar);
    }

    public static final void e(View view, int i10) {
        jc.l.f(view, "<this>");
        float g10 = k7.b.g(i10);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{g10, g10, g10, g10, g10, g10, g10, g10}, null, null));
        Paint paint = shapeDrawable.getPaint();
        Context context = view.getContext();
        jc.l.e(context, "context");
        paint.setColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorSurface));
        view.setBackground(shapeDrawable);
        if (Build.VERSION.SDK_INT >= 21) {
            view.setClipToOutline(true);
        }
    }

    public static /* synthetic */ void f(View view, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 4;
        }
        e(view, i10);
    }

    public static final void g(SupportRecyclerView supportRecyclerView, n5.d<?> dVar, boolean z10, RecyclerView.p pVar) {
        jc.l.f(supportRecyclerView, "<this>");
        jc.l.f(dVar, "supportAdapter");
        supportRecyclerView.setHasFixedSize(true);
        supportRecyclerView.setNestedScrollingEnabled(true);
        if (z10) {
            if (pVar == null) {
                supportRecyclerView.setLayoutManager(new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.grid_list_x3), 1));
            } else {
                supportRecyclerView.setLayoutManager(pVar);
            }
            supportRecyclerView.setAdapter(dVar);
            return;
        }
        if (pVar == null) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.single_list_size), 0);
            staggeredGridLayoutManager.setReverseLayout(true);
            supportRecyclerView.setLayoutManager(staggeredGridLayoutManager);
        } else {
            supportRecyclerView.setLayoutManager(pVar);
        }
        supportRecyclerView.setAdapter(dVar);
    }

    public static /* synthetic */ void h(SupportRecyclerView supportRecyclerView, n5.d dVar, boolean z10, RecyclerView.p pVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            pVar = null;
        }
        g(supportRecyclerView, dVar, z10, pVar);
    }

    public static final boolean i(View view) {
        jc.l.f(view, "<this>");
        try {
            Context context = view.getContext();
            jc.l.e(context, "context");
            Object k10 = f0.a.k(context, InputMethodManager.class);
            jc.l.c(k10);
            return ((InputMethodManager) k10).showSoftInput(view, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static final void j(View view) {
        jc.l.f(view, "<this>");
        Context context = view.getContext();
        jc.l.e(context, "context");
        Object k10 = f0.a.k(context, InputMethodManager.class);
        jc.l.c(k10);
        ((InputMethodManager) k10).toggleSoftInput(2, 0);
    }
}
