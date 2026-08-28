package qc;

/* compiled from: StringNumberConversions.kt */
/* loaded from: classes2.dex */
public class s extends r {
    public static final Integer j(String str) {
        jc.l.f(str, "<this>");
        return k(str, 10);
    }

    public static final Integer k(String str, int i10) {
        boolean z10;
        int i11;
        jc.l.f(str, "<this>");
        a.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char charAt = str.charAt(0);
        int i13 = -2147483647;
        int i14 = 1;
        if (jc.l.h(charAt, 48) >= 0) {
            z10 = false;
            i14 = 0;
        } else {
            if (length == 1) {
                return null;
            }
            if (charAt == '-') {
                i13 = Integer.MIN_VALUE;
                z10 = true;
            } else {
                if (charAt != '+') {
                    return null;
                }
                z10 = false;
            }
        }
        int i15 = -59652323;
        while (i14 < length) {
            int b10 = a.b(str.charAt(i14), i10);
            if (b10 < 0) {
                return null;
            }
            if ((i12 < i15 && (i15 != -59652323 || i12 < (i15 = i13 / i10))) || (i11 = i12 * i10) < i13 + b10) {
                return null;
            }
            i12 = i11 - b10;
            i14++;
        }
        return z10 ? Integer.valueOf(i12) : Integer.valueOf(-i12);
    }

    public static final Long l(String str) {
        jc.l.f(str, "<this>");
        return m(str, 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Long m(String str, int i10) {
        jc.l.f(str, "<this>");
        a.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char charAt = str.charAt(0);
        long j10 = -9223372036854775807L;
        boolean z10 = true;
        if (jc.l.h(charAt, 48) < 0) {
            if (length == 1) {
                return null;
            }
            if (charAt == '-') {
                j10 = Long.MIN_VALUE;
                i11 = 1;
                long j11 = -256204778801521550L;
                long j12 = 0;
                long j13 = -256204778801521550L;
                while (i11 < length) {
                    int b10 = a.b(str.charAt(i11), i10);
                    if (b10 < 0) {
                        return null;
                    }
                    if (j12 < j13) {
                        if (j13 == j11) {
                            j13 = j10 / i10;
                            if (j12 < j13) {
                            }
                        }
                        return null;
                    }
                    long j14 = j12 * i10;
                    long j15 = b10;
                    if (j14 < j10 + j15) {
                        return null;
                    }
                    j12 = j14 - j15;
                    i11++;
                    j11 = -256204778801521550L;
                }
                return !z10 ? Long.valueOf(j12) : Long.valueOf(-j12);
            }
            if (charAt != '+') {
                return null;
            }
            i11 = 1;
        }
        z10 = false;
        long j112 = -256204778801521550L;
        long j122 = 0;
        long j132 = -256204778801521550L;
        while (i11 < length) {
        }
        if (!z10) {
        }
    }
}
