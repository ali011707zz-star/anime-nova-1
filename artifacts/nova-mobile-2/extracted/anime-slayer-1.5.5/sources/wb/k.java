package wb;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: CollectionsJVM.kt */
/* loaded from: classes2.dex */
public class k {
    public static final <E> List<E> a(List<E> list) {
        jc.l.f(list, "builder");
        return ((xb.a) list).h();
    }

    public static final <T> Object[] b(T[] tArr, boolean z10) {
        jc.l.f(tArr, "<this>");
        if (z10 && jc.l.a(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        jc.l.e(copyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return copyOf;
    }

    public static final <E> List<E> c() {
        return new xb.a();
    }

    public static final <T> List<T> d(T t10) {
        List<T> singletonList = Collections.singletonList(t10);
        jc.l.e(singletonList, "singletonList(element)");
        return singletonList;
    }
}
