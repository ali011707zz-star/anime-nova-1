package wb;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: MutableCollectionsJVM.kt */
/* loaded from: classes2.dex */
public class p extends o {
    public static final <T extends Comparable<? super T>> void r(List<T> list) {
        jc.l.f(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static final <T> void s(List<T> list, Comparator<? super T> comparator) {
        jc.l.f(list, "<this>");
        jc.l.f(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
