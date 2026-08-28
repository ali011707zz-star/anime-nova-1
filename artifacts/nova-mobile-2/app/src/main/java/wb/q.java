package wb;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: MutableCollections.kt */
/* loaded from: classes2.dex */
public class q extends p {
    public static final <T> boolean t(Collection<? super T> collection, Iterable<? extends T> iterable) {
        jc.l.f(collection, "<this>");
        jc.l.f(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z10 = false;
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            if (collection.add(it2.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static final <T> boolean u(Collection<? super T> collection, T[] tArr) {
        jc.l.f(collection, "<this>");
        jc.l.f(tArr, "elements");
        return collection.addAll(h.b(tArr));
    }
}
