package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public final class ArrayUtils {
    private ArrayUtils() {
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <T> T[] appendToArray(@RecentlyNonNull T[] tArr, @RecentlyNonNull T t10) {
        T[] tArr2;
        if (tArr == null && t10 == null) {
            throw new IllegalArgumentException("Cannot generate array of generic type w/o class info");
        }
        if (tArr == null) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(t10.getClass(), 1));
        } else {
            tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        }
        tArr2[tArr2.length - 1] = t10;
        return tArr2;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <T> T[] concat(@RecentlyNonNull T[]... tArr) {
        if (tArr.length != 0) {
            int i10 = 0;
            for (T[] tArr2 : tArr) {
                i10 += tArr2.length;
            }
            T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i10);
            int length = tArr[0].length;
            for (int i11 = 1; i11 < tArr.length; i11++) {
                T[] tArr4 = tArr[i11];
                int length2 = tArr4.length;
                System.arraycopy(tArr4, 0, tArr3, length, length2);
                length += length2;
            }
            return tArr3;
        }
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
    }

    @RecentlyNonNull
    @KeepForSdk
    public static byte[] concatByteArrays(@RecentlyNonNull byte[]... bArr) {
        if (bArr.length == 0) {
            return new byte[0];
        }
        int i10 = 0;
        for (byte[] bArr2 : bArr) {
            i10 += bArr2.length;
        }
        byte[] copyOf = Arrays.copyOf(bArr[0], i10);
        int length = bArr[0].length;
        for (int i11 = 1; i11 < bArr.length; i11++) {
            byte[] bArr3 = bArr[i11];
            int length2 = bArr3.length;
            System.arraycopy(bArr3, 0, copyOf, length, length2);
            length += length2;
        }
        return copyOf;
    }

    @KeepForSdk
    public static boolean contains(@RecentlyNonNull int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <T> ArrayList<T> newArrayList() {
        return new ArrayList<>();
    }

    @RecentlyNullable
    @KeepForSdk
    public static <T> T[] removeAll(@RecentlyNonNull T[] tArr, @RecentlyNonNull T... tArr2) {
        int length;
        int i10;
        if (tArr == null) {
            return null;
        }
        if (tArr2 != null && (length = tArr2.length) != 0) {
            T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr2.getClass().getComponentType(), tArr.length));
            if (length == 1) {
                i10 = 0;
                for (T t10 : tArr) {
                    if (!Objects.equal(tArr2[0], t10)) {
                        tArr3[i10] = t10;
                        i10++;
                    }
                }
            } else {
                int i11 = 0;
                for (T t11 : tArr) {
                    if (!contains(tArr2, t11)) {
                        tArr3[i11] = t11;
                        i11++;
                    }
                }
                i10 = i11;
            }
            if (tArr3 == null) {
                return null;
            }
            return i10 == tArr3.length ? tArr3 : (T[]) Arrays.copyOf(tArr3, i10);
        }
        return (T[]) Arrays.copyOf(tArr, tArr.length);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <T> ArrayList<T> toArrayList(@RecentlyNonNull T[] tArr) {
        ArrayList<T> arrayList = new ArrayList<>(tArr.length);
        for (T t10 : tArr) {
            arrayList.add(t10);
        }
        return arrayList;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static int[] toPrimitiveArray(@RecentlyNonNull Collection<Integer> collection) {
        int i10 = 0;
        if (collection == null || collection.size() == 0) {
            return new int[0];
        }
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it2 = collection.iterator();
        while (it2.hasNext()) {
            iArr[i10] = it2.next().intValue();
            i10++;
        }
        return iArr;
    }

    @RecentlyNullable
    @KeepForSdk
    public static Integer[] toWrapperArray(@RecentlyNonNull int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i10 = 0; i10 < length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        return numArr;
    }

    @KeepForSdk
    public static void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull double[] dArr) {
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(Double.toString(dArr[i10]));
        }
    }

    @KeepForSdk
    public static void writeStringArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull String[] strArr) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append("\"");
            sb2.append(strArr[i10]);
            sb2.append("\"");
        }
    }

    @KeepForSdk
    public static <T> boolean contains(@RecentlyNonNull T[] tArr, @RecentlyNonNull T t10) {
        int length = tArr != null ? tArr.length : 0;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (!Objects.equal(tArr[i10], t10)) {
                i10++;
            } else if (i10 >= 0) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public static void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull float[] fArr) {
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(Float.toString(fArr[i10]));
        }
    }

    @KeepForSdk
    public static void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull int[] iArr) {
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(Integer.toString(iArr[i10]));
        }
    }

    @KeepForSdk
    public static void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull long[] jArr) {
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(Long.toString(jArr[i10]));
        }
    }

    @KeepForSdk
    public static <T> void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull T[] tArr) {
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(tArr[i10]);
        }
    }

    @KeepForSdk
    public static void writeArray(@RecentlyNonNull StringBuilder sb2, @RecentlyNonNull boolean[] zArr) {
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(Boolean.toString(zArr[i10]));
        }
    }
}
