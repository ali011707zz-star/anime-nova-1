package b3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import d3.e;
import ic.q;
import java.util.List;
import jc.l;
import s2.c;
import s2.f;
import vb.p;
import wb.i;

/* compiled from: DialogListExt.kt */
/* loaded from: classes.dex */
public final class a {
    public static final c a(c cVar, RecyclerView.h<?> hVar, RecyclerView.p pVar) {
        l.g(cVar, "$this$customListAdapter");
        l.g(hVar, "adapter");
        cVar.h().getContentLayout().c(cVar, hVar, pVar);
        return cVar;
    }

    public static /* synthetic */ c b(c cVar, RecyclerView.h hVar, RecyclerView.p pVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            pVar = null;
        }
        return a(cVar, hVar, pVar);
    }

    public static final Drawable c(c cVar) {
        int c10;
        l.g(cVar, "$this$getItemSelector");
        e eVar = e.f5611a;
        Context context = cVar.getContext();
        l.b(context, "context");
        Drawable q10 = e.q(eVar, context, null, Integer.valueOf(f.f13674r), null, 10, null);
        if (Build.VERSION.SDK_INT >= 21 && (q10 instanceof RippleDrawable) && (c10 = d3.a.c(cVar, null, Integer.valueOf(f.f13675s), null, 5, null)) != 0) {
            ((RippleDrawable) q10).setColor(ColorStateList.valueOf(c10));
        }
        return q10;
    }

    public static final RecyclerView.h<?> d(c cVar) {
        l.g(cVar, "$this$getListAdapter");
        DialogRecyclerView recyclerView = cVar.h().getContentLayout().getRecyclerView();
        if (recyclerView != null) {
            return recyclerView.getAdapter();
        }
        return null;
    }

    public static final c e(c cVar, Integer num, List<? extends CharSequence> list, int[] iArr, boolean z10, q<? super c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "$this$listItems");
        e eVar = e.f5611a;
        eVar.a("listItems", list, num);
        List<? extends CharSequence> z11 = list != null ? list : i.z(eVar.d(cVar.i(), num));
        if (d(cVar) != null) {
            return g(cVar, num, list, iArr, qVar);
        }
        return b(cVar, new z2.c(cVar, z11, iArr, z10, qVar), null, 2, null);
    }

    public static /* synthetic */ c f(c cVar, Integer num, List list, int[] iArr, boolean z10, q qVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            list = null;
        }
        if ((i10 & 4) != 0) {
            iArr = null;
        }
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        if ((i10 & 16) != 0) {
            qVar = null;
        }
        return e(cVar, num, list, iArr, z10, qVar);
    }

    public static final c g(c cVar, Integer num, List<? extends CharSequence> list, int[] iArr, q<? super c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "$this$updateListItems");
        e eVar = e.f5611a;
        eVar.a("updateListItems", list, num);
        if (list == null) {
            list = i.z(eVar.d(cVar.i(), num));
        }
        RecyclerView.h<?> d10 = d(cVar);
        if (d10 instanceof z2.c) {
            z2.c cVar2 = (z2.c) d10;
            cVar2.i(list, qVar);
            if (iArr != null) {
                cVar2.e(iArr);
            }
            return cVar;
        }
        throw new IllegalStateException("updateListItems(...) can't be used before you've created a plain list dialog.".toString());
    }
}
