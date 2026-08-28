package b3;

import androidx.recyclerview.widget.RecyclerView;
import d3.e;
import ic.q;
import java.util.List;
import jc.l;
import s2.c;
import s2.m;
import vb.p;
import wb.i;

/* compiled from: DialogSingleChoiceExt.kt */
/* loaded from: classes.dex */
public final class b {
    public static final c a(c cVar, Integer num, List<? extends CharSequence> list, int[] iArr, int i10, boolean z10, q<? super c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "$this$listItemsSingleChoice");
        e eVar = e.f5611a;
        eVar.a("listItemsSingleChoice", list, num);
        List<? extends CharSequence> z11 = list != null ? list : i.z(eVar.d(cVar.i(), num));
        if (i10 >= -1 || i10 < z11.size()) {
            if (a.d(cVar) != null) {
                return c(cVar, num, list, iArr, qVar);
            }
            t2.a.d(cVar, m.POSITIVE, i10 > -1);
            return a.b(cVar, new z2.e(cVar, z11, iArr, i10, z10, qVar), null, 2, null);
        }
        throw new IllegalArgumentException(("Initial selection " + i10 + " must be between -1 and the size of your items array " + z11.size()).toString());
    }

    public static /* synthetic */ c b(c cVar, Integer num, List list, int[] iArr, int i10, boolean z10, q qVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            list = null;
        }
        if ((i11 & 4) != 0) {
            iArr = null;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        if ((i11 & 16) != 0) {
            z10 = true;
        }
        if ((i11 & 32) != 0) {
            qVar = null;
        }
        return a(cVar, num, list, iArr, i10, z10, qVar);
    }

    public static final c c(c cVar, Integer num, List<? extends CharSequence> list, int[] iArr, q<? super c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "$this$updateListItemsSingleChoice");
        e eVar = e.f5611a;
        eVar.a("updateListItemsSingleChoice", list, num);
        if (list == null) {
            list = i.z(eVar.d(cVar.i(), num));
        }
        RecyclerView.h<?> d10 = a.d(cVar);
        if (d10 instanceof z2.e) {
            z2.e eVar2 = (z2.e) d10;
            eVar2.j(list, qVar);
            if (iArr != null) {
                eVar2.e(iArr);
            }
            return cVar;
        }
        throw new IllegalStateException("updateListItemsSingleChoice(...) can't be used before you've created a single choice list dialog.".toString());
    }
}
