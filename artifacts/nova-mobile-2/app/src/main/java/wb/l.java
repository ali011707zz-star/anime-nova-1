package wb;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Collections.kt */
/* loaded from: classes2.dex */
public class l extends k {
    public static final <T> ArrayList<T> e(T... tArr) {
        jc.l.f(tArr, "elements");
        return tArr.length == 0 ? new ArrayList<>() : new ArrayList<>(new d(tArr, true));
    }

    public static final <T> Collection<T> f(T[] tArr) {
        jc.l.f(tArr, "<this>");
        return new d(tArr, false);
    }

    public static final <T extends Comparable<? super T>> int g(List<? extends T> list, T t10, int i10, int i11) {
        jc.l.f(list, "<this>");
        o(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int a10 = yb.a.a(list.get(i13), t10);
            if (a10 < 0) {
                i10 = i13 + 1;
            } else {
                if (a10 <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static /* synthetic */ int h(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return g(list, comparable, i10, i11);
    }

    public static final <T> List<T> i() {
        return v.f15464f;
    }

    public static final nc.e j(Collection<?> collection) {
        jc.l.f(collection, "<this>");
        return new nc.e(0, collection.size() - 1);
    }

    public static final <T> int k(List<? extends T> list) {
        jc.l.f(list, "<this>");
        return list.size() - 1;
    }

    public static final <T> List<T> l(T... tArr) {
        jc.l.f(tArr, "elements");
        return tArr.length > 0 ? h.b(tArr) : i();
    }

    public static final <T> List<T> m(T... tArr) {
        jc.l.f(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new d(tArr, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> n(List<? extends T> list) {
        jc.l.f(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : k.d(list.get(0));
        }
        return i();
    }

    public static final void o(int i10, int i11, int i12) {
        if (i11 > i12) {
            throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        if (i12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
    }

    public static final void p() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
