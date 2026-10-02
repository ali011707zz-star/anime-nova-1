package dd;

import cd.z;
import jc.l;

/* compiled from: SegmentedByteString.kt */
/* loaded from: classes2.dex */
public final class c {
    public static final int a(int[] iArr, int i10, int i11, int i12) {
        l.f(iArr, "$this$binarySearch");
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i10) {
                i11 = i14 + 1;
            } else {
                if (i15 <= i10) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return (-i11) - 1;
    }

    public static final int b(z zVar, int i10) {
        l.f(zVar, "$this$segment");
        int a10 = a(zVar.E(), i10 + 1, 0, zVar.F().length);
        return a10 >= 0 ? a10 : a10 ^ (-1);
    }
}
