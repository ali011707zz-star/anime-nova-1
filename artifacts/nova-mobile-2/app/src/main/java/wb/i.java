package wb;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: _Arrays.kt */
/* loaded from: classes2.dex */
public class i extends h {
    public static final <T> List<T> A(T[] tArr) {
        jc.l.f(tArr, "<this>");
        return new ArrayList(l.f(tArr));
    }

    public static final boolean n(int[] iArr, int i10) {
        jc.l.f(iArr, "<this>");
        return q(iArr, i10) >= 0;
    }

    public static final <T> boolean o(T[] tArr, T t10) {
        jc.l.f(tArr, "<this>");
        return r(tArr, t10) >= 0;
    }

    public static final int p(int[] iArr) {
        jc.l.f(iArr, "<this>");
        return iArr.length - 1;
    }

    public static final int q(int[] iArr, int i10) {
        jc.l.f(iArr, "<this>");
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 == iArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static final <T> int r(T[] tArr, T t10) {
        jc.l.f(tArr, "<this>");
        int i10 = 0;
        if (t10 == null) {
            int length = tArr.length;
            while (i10 < length) {
                if (tArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i10 < length2) {
            if (jc.l.a(t10, tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final Integer s(int[] iArr) {
        jc.l.f(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        z it2 = new nc.e(1, p(iArr)).iterator();
        while (it2.hasNext()) {
            int i11 = iArr[it2.a()];
            if (i10 < i11) {
                i10 = i11;
            }
        }
        return Integer.valueOf(i10);
    }

    public static final Integer t(int[] iArr) {
        jc.l.f(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        z it2 = new nc.e(1, p(iArr)).iterator();
        while (it2.hasNext()) {
            int i11 = iArr[it2.a()];
            if (i10 > i11) {
                i10 = i11;
            }
        }
        return Integer.valueOf(i10);
    }

    public static final <T> List<T> u(T[] tArr) {
        jc.l.f(tArr, "<this>");
        if (tArr.length == 0) {
            return l.i();
        }
        List<T> A = A(tArr);
        s.v(A);
        return A;
    }

    public static final char v(char[] cArr) {
        jc.l.f(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static final <T> T w(T[] tArr) {
        jc.l.f(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T> T[] x(T[] tArr, Comparator<? super T> comparator) {
        jc.l.f(tArr, "<this>");
        jc.l.f(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        jc.l.e(tArr2, "copyOf(this, size)");
        h.m(tArr2, comparator);
        return tArr2;
    }

    public static final <T> List<T> y(T[] tArr, Comparator<? super T> comparator) {
        jc.l.f(tArr, "<this>");
        jc.l.f(comparator, "comparator");
        return h.b(x(tArr, comparator));
    }

    public static final <T> List<T> z(T[] tArr) {
        jc.l.f(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            return l.i();
        }
        if (length != 1) {
            return A(tArr);
        }
        return k.d(tArr[0]);
    }
}
