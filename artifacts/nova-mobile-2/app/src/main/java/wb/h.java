package wb;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: _ArraysJvm.kt */
/* loaded from: classes2.dex */
public class h extends g {
    public static final <T> List<T> b(T[] tArr) {
        jc.l.f(tArr, "<this>");
        List<T> a10 = j.a(tArr);
        jc.l.e(a10, "asList(this)");
        return a10;
    }

    public static final byte[] c(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        jc.l.f(bArr, "<this>");
        jc.l.f(bArr2, "destination");
        System.arraycopy(bArr, i11, bArr2, i10, i12 - i11);
        return bArr2;
    }

    public static final <T> T[] d(T[] tArr, T[] tArr2, int i10, int i11, int i12) {
        jc.l.f(tArr, "<this>");
        jc.l.f(tArr2, "destination");
        System.arraycopy(tArr, i11, tArr2, i10, i12 - i11);
        return tArr2;
    }

    public static /* synthetic */ byte[] e(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return c(bArr, bArr2, i10, i11, i12);
    }

    public static /* synthetic */ Object[] f(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return d(objArr, objArr2, i10, i11, i12);
    }

    public static final byte[] g(byte[] bArr, int i10, int i11) {
        jc.l.f(bArr, "<this>");
        f.a(i11, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        jc.l.e(copyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        return copyOfRange;
    }

    public static final <T> T[] h(T[] tArr, int i10, int i11) {
        jc.l.f(tArr, "<this>");
        f.a(i11, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i10, i11);
        jc.l.e(tArr2, "copyOfRange(this, fromIndex, toIndex)");
        return tArr2;
    }

    public static final <T> void i(T[] tArr, T t10, int i10, int i11) {
        jc.l.f(tArr, "<this>");
        Arrays.fill(tArr, i10, i11, t10);
    }

    public static /* synthetic */ void j(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        i(objArr, obj, i10, i11);
    }

    public static final <T> T[] k(T[] tArr, T t10) {
        jc.l.f(tArr, "<this>");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t10;
        jc.l.e(tArr2, "result");
        return tArr2;
    }

    public static final <T> T[] l(T[] tArr, Collection<? extends T> collection) {
        jc.l.f(tArr, "<this>");
        jc.l.f(collection, "elements");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, collection.size() + length);
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            tArr2[length] = it2.next();
            length++;
        }
        jc.l.e(tArr2, "result");
        return tArr2;
    }

    public static final <T> void m(T[] tArr, Comparator<? super T> comparator) {
        jc.l.f(tArr, "<this>");
        jc.l.f(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }
}
