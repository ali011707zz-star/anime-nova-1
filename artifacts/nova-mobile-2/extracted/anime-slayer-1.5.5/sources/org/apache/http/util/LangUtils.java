package org.apache.http.util;

/* loaded from: classes2.dex */
public final class LangUtils {
    public static final int HASH_OFFSET = 37;
    public static final int HASH_SEED = 17;

    private LangUtils() {
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static int hashCode(int i10, int i11) {
        return (i10 * 37) + i11;
    }

    public static int hashCode(int i10, boolean z10) {
        return hashCode(i10, z10 ? 1 : 0);
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        if (objArr == null) {
            return objArr2 == null;
        }
        if (objArr2 == null || objArr.length != objArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (!equals(objArr[i10], objArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static int hashCode(int i10, Object obj) {
        return hashCode(i10, obj != null ? obj.hashCode() : 0);
    }
}
