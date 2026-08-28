package wc;

import java.util.ArrayList;
import java.util.List;
import rc.u0;

/* compiled from: InlineList.kt */
/* loaded from: classes2.dex */
public final class l<E> {
    public static <E> Object a(Object obj) {
        return obj;
    }

    public static /* synthetic */ Object b(Object obj, int i10, jc.g gVar) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        return a(obj);
    }

    public static final Object c(Object obj, E e10) {
        if (u0.a() && !(!(e10 instanceof List))) {
            throw new AssertionError();
        }
        if (obj == null) {
            return a(e10);
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(e10);
            return a(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e10);
        return a(arrayList);
    }
}
